<?php

/**
 * Class ProposalController
 *
 * @category Worketic
 *
 * @package Worketic
 * @author  Amentotech <theamentotech@gmail.com>
 * @license http://www.amentotech.com Amentotech
 * @link    http://www.amentotech.com
 */

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Proposal;
use App\Job;
use App\Helper;
use App\Mail\EmailVerificationMailable;
use ZipArchive;
use App\User;
use App\Profile;
use App\Payout;
use Storage;
use Response;
use Auth;
use Carbon\Carbon;
use DB;
use App\Package;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Mail;
use App\SiteManagement;
use App\Mail\EmployerEmailMailable;
use App\Mail\FreelancerEmailMailable;
use App\EmailTemplate;
use App\Item;
use App\JobTransaction;
use App\JobTrasnaction;
use App\Review;
use Illuminate\Validation\Rules\Unique;
use Symfony\Contracts\Service\Attribute\Required;

/**
 * Class ProposalController
 *
 */
class ProposalController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @param instance $proposal instance
     *
     * @return void
     */
    public function __construct(Proposal $proposal)
    {
        $this->proposal = $proposal;
    }
    public function paymentApproved($id)
    {
        $approve = JobTransaction::where('id', '=', ($id))->first();
        $approve->is_verified = 1;
        $approve->save();
        return redirect()->back();
        //return $approve;
    }
    /**
     * View job proposal.
     *
     * @param int $job_slug jobslug
     *
     * @return \Illuminate\Http\Response
     */
    public function createProposal($job_slug)
    {
        if (!empty($job_slug)) {
            $job = Job::all()->where('slug', $job_slug)->first();
            if (!empty($job)) {
                $job_skills = $job->skills->pluck('id')->toArray();
                $check_skill_req = $this->proposal->getJobSkillRequirement($job_skills);
                $proposal_status = Job::find($job->id)->proposals()->where('status', 'hired')->first();
                $role_id =  Helper::getRoleByUserID(Auth::user()->id);
                $package = DB::table('items')->where('subscriber', Auth::user()->id)->select('product_id', 'updated_at')->first();
                $package_options = Package::select('options')->where('id', $package->product_id)->get()->first();
                $options = !empty($package_options) ? unserialize($package_options['options']) : array();
                $settings = SiteManagement::getMetaValue('settings');
                $required_connects = !empty($settings) && !empty($settings[0]['connects_per_job']) ? $settings[0]['connects_per_job'] : 2;
                $remaining_proposals = !empty($options) && !empty($options['no_of_connects']) ? $options['no_of_connects'] / $required_connects : 0;
                $submitted_proposals = $this->proposal::where('freelancer_id', Auth::user()->id)->where('created_at', '>',  $package->updated_at)->count();
                $duration =  Helper::getJobDurationList($job->duration);
                $job_completion_time = Helper::getJobDurationList();
                $commision_amount = SiteManagement::getMetaValue('commision');
                $commision = !empty($commision_amount) && !empty($commision_amount[0]["commision"]) ? $commision_amount[0]["commision"] : 0;
                $currency = SiteManagement::getMetaValue('commision');
                $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();
                $breadcrumbs_settings = SiteManagement::getMetaValue('show_breadcrumb');
                $show_breadcrumbs = !empty($breadcrumbs_settings) ? $breadcrumbs_settings : 'true';
                if (Auth::user() && !empty(Auth::user()->id)) {
                    $submitted_proposals_count = DB::table('proposals')
                        ->where('job_id', $job->id)
                        ->where('freelancer_id', Auth::user()->id)->count();
                }
                if (file_exists(resource_path('views/extend/front-end/jobs/proposal.blade.php'))) {
                    return View(
                        'extend.front-end.jobs.proposal',
                        compact(
                            'job',
                            'proposal_status',
                            'duration',
                            'job_completion_time',
                            'commision',
                            'check_skill_req',
                            'remaining_proposals',
                            'submitted_proposals',
                            'symbol',
                            'submitted_proposals_count',
                            'show_breadcrumbs'
                        )
                    );
                } else {
                    return View(
                        'front-end.jobs.proposal',
                        compact(
                            'job',
                            'proposal_status',
                            'duration',
                            'job_completion_time',
                            'commision',
                            'check_skill_req',
                            'remaining_proposals',
                            'submitted_proposals',
                            'symbol',
                            'submitted_proposals_count',
                            'show_breadcrumbs'
                        )
                    );
                }
            } else {
                abort(404);
            }
        } else {
            abort(404);
        }
    }

    /**
     * Upload Image to temporary folder.
     *
     * @param \Illuminate\Http\Request $request request attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function uploadTempImage(Request $request)
    {
        if (!empty($request['file'])) {
            $attachments = $request['file'];
            $path = 'uploads/proposals/temp/';
            return Helper::uploadTempMultipleAttachments($attachments, $path);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request req attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (Auth::user()) {
            $server = Helper::worketicIsDemoSiteAjax();
            if (!empty($server)) {
                $response['message'] = $server->getData()->message;
                return $response;
            }
            if (!empty($request)) {
                $json = array();
                $job = Job::find($request['id']);

                if ($job->service_type == 'Home Service') {
                    $this->validate(
                        $request,
                        [
                            'completion_time'    => 'required',
                            'description'    => 'required',
                        ]
                    );
                } else {
                    $this->validate(
                        $request,
                        [
                            'amount' => 'required',
                            'completion_time'    => 'required',
                            'description'    => 'required',
                        ]
                    );
                }



                if ($job->status != 'posted') {
                    $json['type'] = 'error';
                    $json['message'] = trans('lang.job_not_avail');
                    return $json;
                }
                if (intval($request['amount']) > $job->price) {
                    $json['type'] = 'error';
                    $json['message'] = trans('lang.proposal_exceed');
                    return $json;
                }
                $package = DB::table('items')->where('subscriber', Auth::user()->id)->select('product_id', 'updated_at')->first();

                $all_packages = Item::with("package")->where('subscriber', Auth::user()->id)->get();

                $no_of_connects = 0;
                foreach ($all_packages as $all_package) {
                    $no_of_connects += (int)unserialize($all_package->package->options)['no_of_connects'];
                }

                $proposals = $this->proposal::where('freelancer_id', Auth::user()->id)->where('created_at', '>',  $package->updated_at)->count();
                $settings = SiteManagement::getMetaValue('settings');
                $payment_settings = SiteManagement::getMetaValue('commision');
                $required_connects = !empty($settings) && !empty($settings[0]['connects_per_job']) ? $settings[0]['connects_per_job'] : 2;
                $package_status = '';
                if (Auth::user() && $request['user_id']) {
                    $proposal = DB::table('proposals')
                        ->where('job_id', $request['id'])
                        ->where('freelancer_id', $request['user_id'])->count();
                    if ($proposal > 0) {
                        $json['type'] = 'error';
                        $json['message'] = trans('lang.proposal_already_submitted');
                        return $json;
                    }
                }
                if (!empty($payment_settings) && empty($payment_settings[0]['enable_packages'])) {
                    $package_status = 'true';
                } else {
                    $package_status = $payment_settings[0]['enable_packages'];
                }
                if (!empty($payment_settings) && $package_status === 'true') {
                    if (empty($package->product_id)) {
                        $json['type'] = 'error';
                        $json['message'] = trans('lang.need_to_purchase_pkg');
                        return $json;
                    }
                    $package_options = Package::select('options')->where('id', $package->product_id)->get()->first();
                    $option = unserialize($package_options->options);
                    $allowed_proposals =  $no_of_connects / $required_connects;
                    if ($proposals >= $allowed_proposals) {
                        $json['type'] = 'error';
                        $json['message'] = trans('lang.not_enough_connects');
                        return $json;
                    } else {
                        $submit_propsal = $this->proposal->storeProposal($request, $request['id']);
                        if ($submit_propsal = 'success') {
                            $json['type'] = 'success';
                            $json['message'] = trans('lang.proposal_submitted');
                            $user = User::find(Auth::user()->id);
                            //send email
                            if (!empty(config('mail.username')) && !empty(config('mail.password'))) {
                                if (!empty($job->employer->email)) {
                                    $email_params = array();
                                    $proposal_received_template = DB::table('email_types')->select('id')->where('email_type', 'employer_email_proposal_received')->get()->first();
                                    $proposal_submitted_template = DB::table('email_types')->select('id')->where('email_type', 'freelancer_email_new_proposal_submitted')->get()->first();
                                    if (
                                        !empty($proposal_received_template->id)
                                        || !empty($proposal_submitted_template->id)
                                    ) {
                                        $template_data = EmailTemplate::getEmailTemplateByID($proposal_received_template->id);
                                        $template_submit_proposal = EmailTemplate::getEmailTemplateByID($proposal_submitted_template->id);
                                        $email_params['employer'] = Helper::getUserName($job->employer->id);
                                        $email_params['employer_profile'] = url('profile/' . $job->employer->slug);
                                        $email_params['freelancer'] = Helper::getUserName(Auth::user()->id);
                                        $email_params['freelancer_profile'] = url('profile/' . $user->slug);
                                        $email_params['title'] = $job->title;
                                        $email_params['link'] = url('job/' . $job->slug);
                                        $email_params['amount'] = $request['amount'];
                                        $email_params['duration'] = Helper::getJobDurationList($request['completion_time']);
                                        $email_params['message'] = $request['description'];
                                        Mail::to($job->employer->email)
                                            ->send(
                                                new EmployerEmailMailable(
                                                    'employer_email_proposal_received',
                                                    $template_data,
                                                    $email_params
                                                )
                                            );
                                        Mail::to($user->email)
                                            ->send(
                                                new FreelancerEmailMailable(
                                                    'freelancer_email_new_proposal_submitted',
                                                    $template_submit_proposal,
                                                    $email_params
                                                )
                                            );
                                    } else {
                                        $json['type'] = 'error';
                                        $json['message'] = trans('lang.something_wrong');
                                        return $json;
                                    }
                                }
                            }
                            return $json;
                        } else {
                            $json['type'] = 'error';
                            $json['message'] = trans('lang.something_wrong');
                            return $json;
                        }
                    }
                } else {
                    $submit_propsal = $this->proposal->storeProposal($request, $request['id']);
                    if ($submit_propsal = 'success') {
                        $json['type'] = 'success';
                        $json['message'] = trans('lang.proposal_submitted');
                        $user = User::find(Auth::user()->id);
                        //send email
                        if (!empty(config('mail.username')) && !empty(config('mail.password'))) {
                            if (!empty($job->employer->email)) {
                                $email_params = array();
                                $proposal_received_template = DB::table('email_types')->select('id')->where('email_type', 'employer_email_proposal_received')->get()->first();
                                $proposal_submitted_template = DB::table('email_types')->select('id')->where('email_type', 'freelancer_email_new_proposal_submitted')->get()->first();
                                if (
                                    !empty($proposal_received_template->id)
                                    || !empty($proposal_submitted_template->id)
                                ) {
                                    $template_data = EmailTemplate::getEmailTemplateByID($proposal_received_template->id);
                                    $template_submit_proposal = EmailTemplate::getEmailTemplateByID($proposal_submitted_template->id);
                                    $email_params['employer'] = Helper::getUserName($job->employer->id);
                                    $email_params['employer_profile'] = url('profile/' . $job->employer->slug);
                                    $email_params['freelancer'] = Helper::getUserName(Auth::user()->id);
                                    $email_params['freelancer_profile'] = url('profile/' . $user->slug);
                                    $email_params['title'] = $job->title;
                                    $email_params['link'] = url('job/' . $job->slug);
                                    $email_params['amount'] = $request['amount'];
                                    $email_params['duration'] = Helper::getJobDurationList($request['completion_time']);
                                    $email_params['message'] = $request['description'];
                                    Mail::to($job->employer->email)
                                        ->send(
                                            new EmployerEmailMailable(
                                                'employer_email_proposal_received',
                                                $template_data,
                                                $email_params
                                            )
                                        );
                                    Mail::to($user->email)
                                        ->send(
                                            new FreelancerEmailMailable(
                                                'freelancer_email_new_proposal_submitted',
                                                $template_submit_proposal,
                                                $email_params
                                            )
                                        );
                                } else {
                                    $json['type'] = 'error';
                                    $json['message'] = trans('lang.something_wrong');
                                    return $json;
                                }
                            }
                        }
                        return $json;
                    } else {
                        $json['type'] = 'error';
                        $json['message'] = trans('lang.something_wrong');
                        return $json;
                    }
                }
            } else {
                $json['type'] = 'error';
                $json['message'] = trans('lang.something_wrong');
                return $json;
            }
        } else {
            $json['type'] = 'error';
            $json['message'] = trans('lang.not_authorize');
            return $json;
        }
    }

    /**
     * Get job proposal listing.
     *
     * @param string $slug jobSlug
     *
     * @return \Illuminate\Http\Response
     */
    public function getJobProposals($slug)
    {
        if (!empty($slug)) {
            $accepted_proposal = array();
            $job = Job::where('slug', $slug)->first();
            // $proposals = Job::latest()->find($job->id)->proposals;
            $proposals = Job::find($job->id)->proposals;
            $accepted_proposal = Job::find($job->id)->proposals()->where('hired', 1)->first();







            $order = Job::getProjectOrder($job->id);
            $duration = !empty($job->duration) ? Helper::getJobDurationList($job->duration) : '';
            $currency   = SiteManagement::getMetaValue('commision');
            $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();
            $payment_settings = SiteManagement::getMetaValue('commision');
            $enable_package = !empty($payment_settings) && !empty($payment_settings[0]['enable_packages']) ? $payment_settings[0]['enable_packages'] : 'true';
            $mode = !empty($payment_settings) && !empty($payment_settings[0]['payment_mode']) ? $payment_settings[0]['payment_mode'] : 'true';
            if (file_exists(resource_path('views/extend/back-end/employer/proposals/index.blade.php'))) {
                return View(
                    'extend.back-end.employer.proposals.index',
                    compact(
                        'proposals',
                        'job',
                        'duration',
                        'accepted_proposal',
                        'symbol',
                        'enable_package',
                        'mode',
                        'order'
                    )
                );
            } else {
                return View(
                    'back-end.employer.proposals.index',
                    compact(
                        'proposals',
                        'job',
                        'duration',
                        'accepted_proposal',
                        'symbol',
                        'enable_package',
                        'mode',
                        'order'
                    )
                );
            }
        } else {
            abort(404);
        }
    }

    /**
     * Hire freelancer.
     *
     * @param \Illuminate\Http\Request $request req->attr
     *
     * @return \Illuminate\Http\Response
     */
    public function hiredFreelencer(Request $request)
    {
        $json = array();
        $server = Helper::worketicIsDemoSiteAjax();
        if (!empty($server)) {
            $response['message'] = $server->getData()->message;
            return $response;
        }
        if (!empty($request['id'])) {
            $this->proposal->assignJob($request['id']);
            $json['type'] = 'success';
            $json['message'] = trans('lang.freelancer_hire');
            return $json;
        }
    }



    /**
     * Proposal Details.
     *
     * @param string $slug slug
     *
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {


        $profile = array();
        $accepted_proposal = array();
        $freelancer_name = '';
        $profile_image = '';
        $user_slug = '';
        $attachments = array();
        $job = Job::where('slug', $slug)->first();

        $job_transactions = JobTransaction::where("job_id", $job->id)->select("user_id", "transaction_id", "id", "is_verified", "phone", "created_at", "type")->get();


        $verified = JobTransaction::where("job_id", $job->id)->where("is_verified", true)->select("id")->count();

        $accepted_proposal = Job::find($job->id)->proposals()->where('hired', 1)
            ->first();

        $freelancer_name = Helper::getUserName($accepted_proposal->freelancer_id);

        $bkash = Profile::where('user_id', $accepted_proposal->freelancer_id)->first();
        $payment_status = Payout::where('order_id', $job->id)->select('status')->first();


        $completion_time = !empty($accepted_proposal->completion_time) ?
            Helper::getJobDurationList($accepted_proposal->completion_time) : '';
        $profile = User::find($accepted_proposal->freelancer_id)->profile;
        $attachments = !empty($accepted_proposal->attachments) ? unserialize($accepted_proposal->attachments) : '';
        $user_image = !empty($profile) ? $profile->avater : '';
        $profile_image = !empty($user_image) ? '/uploads/users/' . $accepted_proposal->freelancer_id . '/' . $user_image : 'images/user-login.png';
        $employer_name = Helper::getUserName($job->user_id);

        $project_status = Helper::getProjectStatus();


        $duration = !empty($job->duration) ? Helper::getJobDurationList($job->duration) : '';
        $review_options = DB::table('review_options')->get()->all();
        $user_slug = User::find($accepted_proposal->freelancer_id)->slug;
        $feedbacks = Review::select('feedback')->where('receiver_id', $accepted_proposal->freelancer_id)->count();
        $avg_rating = Review::where('receiver_id', $accepted_proposal->freelancer_id)->sum('avg_rating');
        $rating  = $avg_rating != 0 ? round($avg_rating / Review::count()) : 0;
        $reviews = Review::where('receiver_id', $accepted_proposal->freelancer_id)->get();
        $stars  = $reviews->sum('avg_rating') != 0 ? (($reviews->sum('avg_rating') / $feedbacks) / 5) * 100 : 0;
        $average_rating_count = !empty($feedbacks) ? $reviews->sum('avg_rating') / $feedbacks : 0;
        $currency   = SiteManagement::getMetaValue('commision');
        $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();
        $cancel_proposal_text = trans('lang.cancel_proposal_text');
        $cancel_proposal_button = trans('lang.send_request');
        $validation_error_text = trans('lang.field_required');
        $cancel_popup_title = trans('lang.reason');

        $meta_value = SiteManagement::where("meta_key", "stripe_settings")->first()->meta_value;
        $number = unserialize($meta_value);
        $proposal = Proposal::where('job_id', $job->id)->where("status", "hired")->select("id")->first();

        if (file_exists(resource_path('views/extend/back-end/employer/proposals/show.blade.php'))) {
            return view(
                'extend.back-end.employer.proposals.show',
                compact(
                    'bkash',
                    'payment_status',
                    'average_rating_count',
                    'job',
                    'duration',
                    'accepted_proposal',
                    'project_status',
                    'employer_name',
                    'profile_image',
                    'completion_time',
                    'freelancer_name',
                    'attachments',
                    'review_options',
                    'user_slug',
                    'stars',
                    'rating',
                    'feedbacks',
                    'symbol',
                    'cancel_proposal_text',
                    'cancel_proposal_button',
                    'validation_error_text',
                    'cancel_popup_title',
                    'job_transactions',
                    'verified',
                    'number',
                    'proposal'
                )
            );
        } else {
            return view(
                'back-end.employer.proposals.show',
                compact(
                    'bkash',
                    'payment_status',
                    'average_rating_count',
                    'job',
                    'duration',
                    'accepted_proposal',
                    'project_status',
                    'employer_name',
                    'profile_image',
                    'completion_time',
                    'freelancer_name',
                    'attachments',
                    'review_options',
                    'user_slug',
                    'stars',
                    'rating',
                    'feedbacks',
                    'symbol',
                    'cancel_proposal_text',
                    'cancel_proposal_button',
                    'validation_error_text',
                    'cancel_popup_title',
                    'job_transactions',
                    'verified',
                    'number',
                    'proposal'
                )
            );
        }
    }

    // Pay freelancer Start

    public function allPay(Request $request)
    {
        $validated = $request->validate([
            'transaction_id' => 'required|unique:payouts,bank_details'
        ]);
        $payout = new Payout;
        $payout->user_id = $request->user_id;
        $payout->bank_details = $request->transaction_id;
        $payout->amount = $request->amount;
        $payout->payment_method = 'bkash';
        $payout->currency = 'BDT';
        $payout->paypal_id = $request->paypal_id ?? 'N/A';
        $payout->order_id = $request->order_id;
        $payout->type = $request->type;
        $payout->status = 'pending';
        $payout->save();

        return redirect()->back()->with('success', 'Payment completed.');
    }

    // Pay freelancer End
}
