<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Language;
use App\Category;
use App\Location;
use App\Helper;
use App\ResponseTime;
use App\DeliveryTime;
use App\ServiceTransaction;
use App\ServiceUser;
use App\Service;
use App\Item;
use Auth;
use App\Package;
use Carbon\Carbon;
use App\User;
use DB;
use App\SiteManagement;
use App\Review;
use Session;
use Illuminate\Support\Facades\Redirect;
use App\Mail\AdminEmailMailable;
use App\PackageTransaction;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Auth as FacadesAuth;


class ServiceController extends Controller
{
    /**
     * Defining scope of the variable
     *
     * @access protected
     * @var    array $job
     */
    protected $service;

    /**
     * Create a new controller instance.
     *
     * @param instance $job instance
     *
     * @return void
     */
    public function __construct(Service $service)
    {
        $this->service = $service;
    }

    //Service Payment Start
    public function servicePayment(Request $request)
    {
        $request->validate([
            'phone' => 'required',
            'transaction_id' => 'required|unique:service_transactions,transaction_id',
        ]);

        $service_user = new ServiceUser();
        $service_user->service_id = $request->id;
        $service_user->user_id = FacadesAuth::user()->id;
        $service_user->seller_id = $request->id2;
        $service_user->type = 'employer';
        $service_user->status = 'hired';
        $service_user->paid = 'pending';
        $service_user->paid_progress = 'in-progress';
        $service_user->save();

        if ($service_user->save()) {
            $service_transaction = new ServiceTransaction();
            $service_transaction->service_id = $request->id;
            $service_transaction->service_user_id = $service_user->id;
            $service_transaction->transaction_id  = $request->transaction_id;
            $service_transaction->phone  = $request->phone;
            $service_transaction->type  = "Bkash";
            $service_transaction->is_verified  = false;
            $service_transaction->save();
        }


        return redirect('employer/services/hired')->withSuccess("Service Purchased Successfully");
    }
    //Service Payment End


    //Service Payment two Start
    public function servicePaymentTwo(Request $request, $id)
    {
        $request->validate([
            'phone' => 'required',
            'transaction_id' => 'required|unique:service_transactions,transaction_id',
        ]);

        $service_user = ServiceUser::where("id", $id)->first();

        if ($service_user) {
            $service_transaction = new ServiceTransaction();
            $service_transaction->service_id = $service_user->service_id;
            $service_transaction->service_user_id = $service_user->id;
            $service_transaction->transaction_id  = $request->transaction_id;
            $service_transaction->phone  = $request->phone;
            $service_transaction->type  = "Bkash";
            $service_transaction->is_verified  = false;

            if ($service_transaction->save()) {
                return redirect()->back()->with('success', 'Transaction Created Successfully');
            }
        } else {
            return redirect()->back()->with('success', 'No Serive User Found');
        }
    }
    //Service Payment two End



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $type = 'service';
        $categories = Category::all();
        $locations  = Location::all();
        $languages  = Language::all();
        $inner_page  = SiteManagement::getMetaValue('inner_page_data');
        $service_list_meta_title = !empty($inner_page) && !empty($inner_page[0]['service_list_meta_title']) ? $inner_page[0]['service_list_meta_title'] : trans('lang.service_listing');
        $service_list_meta_desc = !empty($inner_page) && !empty($inner_page[0]['service_list_meta_desc']) ? $inner_page[0]['service_list_meta_desc'] : trans('lang.service_meta_desc');
        $show_service_banner = !empty($inner_page) && !empty($inner_page[0]['show_service_banner']) ? $inner_page[0]['show_service_banner'] : 'true';
        $service_inner_banner = !empty($inner_page) && !empty($inner_page[0]['service_inner_banner']) ? $inner_page[0]['service_inner_banner'] : null;
        $delivery_time = DeliveryTime::all();
        $response_time = ResponseTime::all();
        $services_total_records = '';
        $services = $this->service->latest()->paginate(8);
        $keyword = '';
        if (file_exists(resource_path('views/extend/front-end/services/index.blade.php'))) {
            return view(
                'extend.front-end.services.index',
                compact(
                    'services_total_records',
                    'type',
                    'services',
                    'symbol',
                    'keyword',
                    'categories',
                    'locations',
                    'languages',
                    'delivery_time',
                    'response_time',
                    'service_list_meta_title',
                    'service_list_meta_desc',
                    'show_service_banner',
                    'service_inner_banner'
                )
            );
        } else {
            return view(
                'front-end.services.index',
                compact(
                    'services_total_records',
                    'type',
                    'services',
                    'symbol',
                    'keyword',
                    'categories',
                    'locations',
                    'languages',
                    'delivery_time',
                    'response_time',
                    'service_list_meta_title',
                    'service_list_meta_desc',
                    'show_service_banner',
                    'service_inner_banner'
                )
            );
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $location = Location::Where('title', 'Bangladesh')->get();
        $languages = Language::pluck('title', 'id');
        $locations = Location::pluck('title', 'id');
        $response_time = ResponseTime::pluck('title', 'id');
        $delivery_time = DeliveryTime::pluck('title', 'id');
        $english_levels = Helper::getEnglishLevelList();
        $categories = Category::pluck('title', 'id');
        if (file_exists(resource_path('views/extend/back-end/freelancer/services/create.blade.php'))) {
            return view(
                'extend.back-end.freelancer.services.create',
                compact(
                    'english_levels',
                    'languages',
                    'categories',
                    'locations',
                    'location',
                    'response_time',
                    'delivery_time'
                )
            );
        } else {
            return view(
                'back-end.freelancer.services.create',
                compact(
                    'english_levels',
                    'languages',
                    'categories',
                    'locations',
                    'location',
                    'response_time',
                    'delivery_time'
                )
            );
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request request attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $json = array();
        $server = Helper::worketicIsDemoSiteAjax();
        if (!empty($server)) {
            $response['message'] = $server->getData()->message;
            return $response;
        }
        if (Helper::getAccessType() == 'jobs') {
            $json['type'] = 'error';
            $json['message'] = trans('lang.service_warning');
            return $json;
        }
        if (Auth::user()->user_verified == 1) {
            $this->validate(
                $request,
                [
                    'title'            => 'required',
                    'delivery_time'    => 'required',
                    'service_price'    => 'required',
                    'response_time'    => 'required',
                    'english_level'    => 'required',
                    'description'      => 'required',
                ]
            );
            if (!empty($request['latitude']) || !empty($request['longitude'])) {
                $this->validate(
                    $request,
                    [
                        'latitude' => ['regex:/^[-]?(([0-8]?[0-9])\.(\d+))|(90(\.0+)?)$/'],
                        'longitude' => ['regex:/^[-]?((((1[0-7][0-9])|([0-9]?[0-9]))\.(\d+))|180(\.0+)?)$/'],
                    ]
                );
            }
            $user = User::find(Auth::user()->id);
            $package_item = Item::orderBy("id", "desc")->where('subscriber', Auth::user()->id)->first();
            $package = !empty($package_item) ? Package::find($package_item->product_id) : '';

            $all_packages = Item::with("package")->where('subscriber', Auth::user()->id)->get();

            $no_of_services = 0;
            $no_of_featured_services = 0;
            foreach ($all_packages as $all_package) {
                if( PackageTransaction::where("item_id",$all_package->id)->where("is_verified",true)->first() ){
                    $no_of_services += (int)unserialize($all_package->package->options)['no_of_services'];
                    $no_of_featured_services += (int)unserialize($all_package->package->options)['no_of_featured_services'];
                }
            }

            $option = !empty($package) ? unserialize($package->options) : '';
            $expiry = !empty($option) ? $package_item->updated_at->addDays($option['duration']) : '';
            $expiry_date = !empty($expiry) ? Carbon::parse($expiry)->format('Y-m-d') : '';
            $current_date = Carbon::now()->format('Y-m-d');
            $posted_services = $user->services->count();
            $posted_featured_services = $user->services->where('is_featured', 'true')->count();
            $payment_settings = SiteManagement::getMetaValue('commision');
            $package_status = '';
            if (empty($payment_settings)) {
                $package_status = 'true';
            } else {
                $package_status = !empty($payment_settings[0]['enable_packages']) ? $payment_settings[0]['enable_packages'] : 'true';
            }
            if ($package_status === 'true') {
                if (!empty($package->count()) && $current_date > $expiry_date) {
                    $json['type'] = 'error';
                    $json['message'] = trans('lang.need_to_purchase_pkg');
                    return $json;
                }

                if ($request['is_featured'] == 'true') {
                    if (!empty($option['no_of_featured_services']) && $posted_featured_services >= $no_of_featured_services) {
                        $json['type'] = 'error';
                        $json['message'] = trans('lang.sorry_can_only_feature')  . ' ' . $option['no_of_featured_services'] . ' ' . trans('lang.services_acc_to_pkg');
                        return $json;
                    }
                }
                if (!empty($option['no_of_services']) && $posted_services >= $no_of_services) {
                    $json['type'] = 'error';
                    $json['message'] = trans('lang.sorry_cannot_submit') . ' ' . $option['no_of_services'] . ' ' . trans('lang.services_acc_to_pkg');
                    return $json;
                } else {
                    $image_size = array(
                        'small',
                        'medium'
                    );
                    $service_post = $this->service->storeService($request, $image_size);
                    if ($service_post['type'] == 'success') {
                        $json['type'] = 'success';
                        $json['progress'] = trans('lang.service_publishing');
                        $json['message'] = trans('lang.service_post_success');
                        // Send Email
                        $user = User::find(Auth::user()->id);
                        //send email to admin
                        if (!empty(config('mail.username')) && !empty(config('mail.password'))) {
                            $service = $this->service::where('id', $service_post['new_service'])->first();
                            $email_params = array();
                            $email_params['service_title'] = $service->title;
                            $email_params['posted_service_link'] = url('/service/' . $service->slug);
                            $email_params['name'] = Helper::getUserName(Auth::user()->id);
                            $email_params['link'] = url('profile/' . $user->slug);
                            $template_data = Helper::getAdminServicePostedEmailContent();
                            Mail::to(config('mail.username'))
                                ->send(
                                    new AdminEmailMailable(
                                        'admin_email_new_service_posted',
                                        $template_data,
                                        $email_params
                                    )
                                );
                        }
                        return $json;
                    } elseif ($service_post['type'] == 'error') {
                        $json['type'] = 'error';
                        $json['message'] = trans('lang.need_to_purchase_pkg');
                        return $json;
                    } elseif ($service_post['type'] == 'service_warning') {
                        $json['type'] = 'error';
                        $json['message'] = trans('lang.not_authorize');
                        return $json;
                    }
                }
            } else {
                $image_size = array(
                    'small',
                    'medium'
                );
                $service_post = $this->service->storeService($request, $image_size);
                if ($service_post['type'] == 'success') {
                    $json['type'] = 'success';
                    $json['progress'] = trans('lang.service_publishing');
                    $json['message'] = trans('lang.service_post_success');
                    // Send Email
                    $user = User::find(Auth::user()->id);
                    //send email to admin
                    if (!empty(config('mail.username')) && !empty(config('mail.password'))) {
                        $service = $this->service::where('id', $service_post['new_service'])->first();
                        $email_params = array();
                        $email_params['service_title'] = $service->title;
                        $email_params['posted_service_link'] = url('/service/' . $service->slug);
                        $email_params['name'] = Helper::getUserName(Auth::user()->id);
                        $email_params['link'] = url('profile/' . $user->slug);
                        $template_data = Helper::getAdminServicePostedEmailContent();
                        Mail::to(config('mail.username'))
                            ->send(
                                new AdminEmailMailable(
                                    'admin_email_new_service_posted',
                                    $template_data,
                                    $email_params
                                )
                            );
                    }
                    return $json;
                } elseif ($service_post['type'] == 'error') {
                    $json['type'] = 'error';
                    $json['message'] = trans('lang.need_to_purchase_pkg');
                    return $json;
                } elseif ($service_post['type'] == 'service_warning') {
                    $json['type'] = 'error';
                    $json['message'] = trans('lang.not_authorize');
                    return $json;
                }
            }
        } else {
            $json['type'] = 'error';
            $json['message'] = trans('lang.verify_accnt_post_service');
            return $json;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param string $slug slug
     *
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $selected_service = $this->service::select('id')->where('slug', $slug)->first();
        if (!empty($selected_service)) {
            $service = $this->service::find($selected_service->id);
            $currency   = SiteManagement::getMetaValue('commision');
            $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();
            $mode = !empty($currency) && !empty($currency[0]['payment_mode']) ? $currency[0]['payment_mode'] : 'true';
            $delivery_time = DeliveryTime::where('id', $service->delivery_time_id)->first();
            $response_time = ResponseTime::where('id', $service->response_time_id)->first();
            $reasons = Helper::getReportReasons();
            $seller = $service->seller->first();
            $reviews = !empty($seller) ? Helper::getServiceReviews($seller->id, $service->id) : '';
            $auth_profile = Auth::user() ? auth()->user()->profile : '';
            if (!empty($reviews)) {
                $rating  = $reviews->sum('avg_rating') != 0 ? round($reviews->sum('avg_rating') / $reviews->count()) : 0;
            } else {
                $rating = 0;
            }

            $total_orders = Helper::getServiceCount($service->id, 'hired');
            $attachments = !empty($seller) ? Helper::getUnserializeData($service->attachments) : '';
            // $service_reviews = DB::table('reviews')->where('job_id', $service->id)->get();
            $save_services = !empty(auth()->user()->profile->saved_services) ? unserialize(auth()->user()->profile->saved_services) : array();
            $key = 'set_service_view';
            $breadcrumbs_settings = SiteManagement::getMetaValue('show_breadcrumb');
            $show_breadcrumbs = !empty($breadcrumbs_settings) ? $breadcrumbs_settings : 'true';
            $inner_page  = SiteManagement::getMetaValue('inner_page_data');
            $service_inner_banner = !empty($inner_page) && !empty($inner_page[0]['service_inner_banner']) ? $inner_page[0]['service_inner_banner'] : null;
            $show_service_banner = !empty($inner_page) && !empty($inner_page[0]['show_service_banner']) ? $inner_page[0]['show_service_banner'] : 'true';
            if (!isset($_COOKIE[$key . $selected_service->id])) {
                setcookie($key . $selected_service->id, $key, time() + 3600);
                $view_key = $key;
                $count = $service->views;
                if ($count == '') {
                    $count = 1;
                } else {
                    $count++;
                }
                $service->views = $count;
                $service->save();
            }
            if (!empty($service)) {
                if (file_exists(resource_path('views/extend/front-end/services/show.blade.php'))) {
                    return view(
                        'extend.front-end.services.show',
                        compact(
                            'show_service_banner',
                            'service',
                            'symbol',
                            'delivery_time',
                            'response_time',
                            'reasons',
                            'reviews',
                            'rating',
                            'seller',
                            'total_orders',
                            'attachments',
                            'save_services',
                            'show_breadcrumbs',
                            'mode',
                            'service_inner_banner'
                        )
                    );
                } else {
                    return view(
                        'front-end.services.show',
                        compact(
                            'show_service_banner',
                            'service',
                            'symbol',
                            'delivery_time',
                            'response_time',
                            'reasons',
                            'reviews',
                            'rating',
                            'seller',
                            'total_orders',
                            'attachments',
                            'save_services',
                            'show_breadcrumbs',
                            'mode',
                            'service_inner_banner'
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
     * Show the form for editing the specified resource.
     *
     * @param int $id id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $languages = Language::pluck('title', 'id');
        $locations = Location::pluck('title', 'id');
        $response_time = ResponseTime::pluck('title', 'id');
        $delivery_time = DeliveryTime::pluck('title', 'id');
        $english_levels = Helper::getEnglishLevelList();
        $categories = Category::pluck('title', 'id');
        $service = $this->service::find($id);
        $serialize_attachment = preg_replace_callback(
            '!s:(\d+):"(.*?)";!',
            function ($match) {
                return ($match[1] == strlen($match[2])) ? $match[0] : 's:' . strlen($match[2]) . ':"' . $match[2] . '";';
            },
            $service->attachments
        );
        $freelancer  = Helper::getServiceSeller($service->id);
        $attachments = !empty($serialize_attachment) ? unserialize($serialize_attachment) : '';
        if (file_exists(resource_path('views/extend/back-end/freelancer/services/edit.blade.php'))) {
            return view(
                'extend.back-end.freelancer.services.edit',
                compact(
                    'english_levels',
                    'languages',
                    'categories',
                    'locations',
                    'response_time',
                    'delivery_time',
                    'service',
                    'attachments',
                    'freelancer'
                )
            );
        } else {
            return view(
                'back-end.freelancer.services.edit',
                compact(
                    'english_levels',
                    'languages',
                    'categories',
                    'locations',
                    'response_time',
                    'delivery_time',
                    'service',
                    'attachments',
                    'freelancer'
                )
            );
        }
    }

    /**
     * Updated resource in DB.
     *
     * @param \Illuminate\Http\Request $request request attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $server = Helper::worketicIsDemoSiteAjax();
        if (!empty($server)) {
            $response['type'] = 'error';
            $response['message'] = $server->getData()->message;
            return $response;
        }
        $json = array();
        if (!empty($request['latitude']) || !empty($request['longitude'])) {
            $this->validate(
                $request,
                [
                    'latitude' => ['regex:/^[-]?(([0-8]?[0-9])\.(\d+))|(90(\.0+)?)$/'],
                    'longitude' => ['regex:/^[-]?((((1[0-7][0-9])|([0-9]?[0-9]))\.(\d+))|180(\.0+)?)$/'],
                ]
            );
        }
        $this->validate(
            $request,
            [
                'title' => 'required',
                'delivery_time'    => 'required',
                'service_price'    => 'required',
                'response_time'    => 'required',
                'english_level'    => 'required',
                'description'    => 'required',
            ]
        );
        $id = $request['id'];
        if (!empty($id)) {
            $image_size = array(
                'small',
                'medium'
            );
            $user = User::find(Auth::user()->id);
            $package_item = Item::where('subscriber', Auth::user()->id)->first();
            $package = !empty($package_item) ? Package::find($package_item->product_id) : '';
            $option = !empty($package) ? unserialize($package->options) : '';
            $posted_featured_services = $user->services->where('id', '!=', $id)->where('is_featured', 'true')->count();
            $payment_settings = SiteManagement::getMetaValue('commision');
            $package_status = '';
            if (empty($payment_settings)) {
                $package_status = 'true';
            } else {
                $package_status = !empty($payment_settings[0]['enable_packages']) ? $payment_settings[0]['enable_packages'] : 'true';
            }
            if ($package_status === 'true') {
                if ($request['is_featured'] == 'true') {
                    if (!empty($option['no_of_featured_services']) && $posted_featured_services >= intval($option['no_of_featured_services'])) {
                        $json['type'] = 'error';
                        $json['message'] = trans('lang.sorry_can_only_feature')  . ' ' . $option['no_of_featured_services'] . ' ' . trans('lang.services_acc_to_pkg');
                        return $json;
                    }
                }
            }
            $service_update = $this->service->updateService($request, $id, $image_size);
            if ($service_update['type'] = 'success') {
                $json['type'] = 'success';
                $json['role'] = Auth::user()->getRoleNames()->first();
                $json['progress'] = trans('lang.service_updating');
                $json['message'] = trans('lang.service_update_success');
                return $json;
            } else {
                $json['type'] = 'error';
                $json['message'] = trans('lang.something_wrong');
                return $json;
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Illuminate\Http\Request $request request attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $json = array();
        if (!empty($request['id'])) {
            $service = $this->service::find($request['id']);
            $service->users()->detach();
            $service->delete();
            DB::table('service_user')->where('service_id', $request['user_id'])->delete();
            $json['type'] = 'success';
            $json['message'] = trans('lang.service_delete');
            return $json;
        } else {
            $json['type'] = 'error';
            $json['message'] = trans('lang.something_wrong');
            return $json;
        }
    }

    /**
     * Upload image to temporary folder.
     *
     * @param \Illuminate\Http\Request $request request attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function uploadTempImage(Request $request)
    {
        if (!empty($request['file'])) {
            $attachments = $request['file'];
            $path = Helper::PublicPath() . '/uploads/services/temp/';
            $image_size = array(
                'small' => array(
                    'width' => 80,
                    'height' => 80,
                ),
                'medium' => array(
                    'width' => 670,
                    'height' => 450,
                ),
            );
            return Helper::uploadTempImageWithSize($path, $attachments, '', $image_size);
        }
    }

    /**
     * Change service status
     *
     * @param \Illuminate\Http\Request $request request attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function changeStatus(Request $request)
    {
        $json = array();
        if (!empty($request['id'])) {
            $orders = Helper::getServiceOrdersCount($request['id'], 'hired');
            if ($orders == 0) {
                $service = $this->service::find($request['id']);
                $service->status = $request['status'];
                $service->save();
                $json['type'] = 'success';
                $json['message'] = trans('lang.status_update');
                return $json;
            } else {
                $json['type'] = 'error';
                $json['message'] = trans('lang.need_complete_orders');
                return $json;
            }
        } else {
            $json['type'] = 'error';
            $json['message'] = trans('lang.something_wrong');
            return $json;
        }
    }

    /**
     * Get service settings.
     *
     * @param integer $request $request->attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function getServiceSettings(Request $request)
    {
        $json = array();
        if ($request['id']) {
            $settings = Service::where('id', $request['id'])
                ->select('is_featured', 'show_attachments')->get()->first();
            if (!empty($settings)) {
                $json['type'] = 'success';
                if ($settings->is_featured == 'true') {
                    $json['is_featured'] = 'true';
                }
                if ($settings->show_attachments == 'true') {
                    $json['show_attachments'] = 'true';
                }
            } else {
                $json['type'] = 'error';
            }
            return $json;
        }
    }

    /**
     * Employer Payment Process.
     *
     * @param string $id proposal ID
     *
     * @return \Illuminate\Http\Response
     */
    public function employerPaymentProcess($id)
    {

        if (Auth::user() && !empty($id)) {
            if (Auth::user()->getRoleNames()->first() === 'employer') {
                $meta_value = SiteManagement::where("meta_key", "stripe_settings")->first()->meta_value;
                $number = unserialize($meta_value);

                $user_id = Auth::user()->id;
                $employer = User::find($user_id);
                $service = Service::find($id);
                $seller = Helper::getServiceSeller($service->id);
                $freelancer = User::find($seller->user_id);
                $freelancer_name = Helper::getUserName($freelancer->id);
                $profile = User::find($freelancer->id)->profile;
                $user_image = !empty($profile) ? $profile->avater : '';
                $profile_image = !empty($user_image) ? '/uploads/users/' . $freelancer->id . '/' . $user_image : 'images/user-login.png';
                $payout_settings = SiteManagement::getMetaValue('commision');
                $payment_gateway = !empty($payout_settings) && !empty($payout_settings[0]['payment_method']) ? $payout_settings[0]['payment_method'] : null;
                $currency   = SiteManagement::getMetaValue('commision');
                $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();
                $stripe_settings = SiteManagement::getMetaValue('stripe_settings');
                $stripe_img = !empty($stripe_settings) ? $stripe_settings[0]['stripe_img'] : '';
                if (file_exists(resource_path('views/extend/back-end/employer/services/checkout.blade.php'))) {
                    return view(
                        'extend.back-end.employer.services.checkout',
                        compact(
                            'stripe_img',
                            'service',
                            'freelancer_name',
                            'profile_image',
                            'payment_gateway',
                            'symbol',
                            'user_id',
                            'freelancer',
                            'number'
                        )
                    );
                } else {
                    return view(
                        'back-end.employer.services.checkout',
                        compact(
                            'stripe_img',
                            'service',
                            'freelancer_name',
                            'profile_image',
                            'payment_gateway',
                            'symbol',
                            'user_id',
                            'freelancer',
                            'number'
                        )
                    );
                }
            } else {
                Session::flash('error', trans('lang.buy_service_warning'));
                return Redirect::back();
            }
        } else {
            Session::flash('error', trans('lang.buy_service_warning'));
            return Redirect::back();
        }
    }

    /**
     * Upload Image to temporary folder.
     *
     * @param \Illuminate\Http\Request $request request attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function uploadTempMessageAttachments(Request $request)
    {
        if (!empty($request['file'])) {
            $attachments = $request['file'];
            $path = 'uploads/services/temp/';
            return Helper::uploadTempMultipleAttachments($attachments, $path);
        }
    }

    /**
     * Show services.
     *
     * @return \Illuminate\Http\Response
     */
    public function adminServices(Request $request)
    {
        if (!empty($_GET['keyword'])) {
            $keyword = $_GET['keyword'];
            $services = $this->service::where('title', 'like', '%' . $keyword . '%')->paginate(6)->setPath('');
            $pagination = $services->appends(
                array(
                    'keyword' => $request->get('keyword')
                )
            );
        } else {
            $services = $this->service->latest()->paginate(8);
        }
        $currency   = SiteManagement::getMetaValue('commision');
        $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();
        $status_list = array_pluck(Helper::getFreelancerServiceStatus(), 'title', 'value');
        if (file_exists(resource_path('views/extend/back-end/admin/services/index.blade.php'))) {
            return view(
                'extend.back-end.admin.services.index',
                compact('services', 'symbol', 'status_list')
            );
        } else {
            return view(
                'back-end.admin.services.index',
                compact('services', 'symbol', 'status_list')
            );
        }
    }

    /**
     * Show services orders.
     *
     * @return \Illuminate\Http\Response
     */
    public function adminServiceOrders(Request $request)
    {
        if (!empty($_GET['keyword'])) {
            $keyword = $_GET['keyword'];
            $orders = DB::table('service_user')->where('type', 'employer')->paginate(8);
            $pagination = $orders->appends(
                array(
                    'keyword' => $request->get('keyword')
                )
            );
        } else {
            $orders = DB::table('service_user')->where('type', 'employer')->paginate(8);
        }
        $currency   = SiteManagement::getMetaValue('commision');
        $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();
        $payment_methods = Arr::pluck(Helper::getPaymentMethodList(), 'title', 'value');
        if (file_exists(resource_path('views/extend/back-end/admin/services/order.blade.php'))) {
            return view(
                'extend.back-end.admin.services.order',
                compact('orders', 'symbol', 'payment_methods')
            );
        } else {
            return view(
                'back-end.admin.services.order',
                compact('orders', 'symbol', 'payment_methods')
            );
        }
    }



    //service details list function start
    public function adminServiceDetailsList($id)
    {
        $service = Service::find($id);

        if ($service) {
            $service_users = ServiceUser::where("service_id", $service->id)->get();
            return view(
                'back-end.admin.services.service_details_list',
                compact('service', 'service_users')
            );
        } else {
            return view("errors.404");
        }
    }
    //service details list function end

    //service details start function start
    public function adminServiceDetails($id)
    {

        $service_users = ServiceUser::where("id", $id)->first();

        if ($service_users) {

            $service = Service::where("id", $service_users->service_id)->first();
            $id = $service->id;

            if ($service) {


                $service_transactions = ServiceTransaction::where("service_id", $service->id)->where("service_user_id", $service_users->id)->get();

                $pivot_service = Helper::getPivotService($service_users->id);

                $pivot_id = $pivot_service->id;
                $seller = Helper::getServiceSeller($service->id);
                $freelancer = !empty($seller) ? User::find($seller->user_id) : '';
                $freelancer_rating  = !empty($freelancer) && !empty($freelancer->profile->ratings) ? Helper::getUnserializeData($freelancer->profile->ratings) : 0;
                $rating = !empty($freelancer_rating) ? $freelancer_rating[0] : 0;
                $stars  =  !empty($freelancer_rating) ? $freelancer_rating[0] / 5 * 100 : 0;
                $feedbacks = !empty($freelancer) ? Review::select('feedback')->where('receiver_id', $freelancer->id)->count() : '';
                $service_status = Helper::getProjectStatus();
                $cancel_proposal_text = trans('lang.cancel_proposal_text');
                $cancel_proposal_button = trans('lang.send_request');
                $validation_error_text = trans('lang.field_required');
                $cancel_popup_title = trans('lang.reason');
                $attachment = Helper::getUnserializeData($service->attachments);
                $currency   = SiteManagement::getMetaValue('commision');
                $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();

                return view(
                    'back-end.admin.services.service_details',
                    compact(
                        'service',
                        'service_users',
                        'pivot_service',
                        'pivot_id',
                        'seller',
                        'freelancer',
                        'stars',
                        'freelancer_rating',
                        'rating',
                        'stars',
                        'feedbacks',
                        'service_status',
                        'id',
                        'cancel_proposal_text',
                        'cancel_proposal_button',
                        'validation_error_text',
                        'cancel_popup_title',
                        'attachment',
                        'currency',
                        'symbol',
                        'service_transactions'
                    )
                );
            } else {
                return view("errors.404");
            }
        } else {
            return view("errors.404");
        }
    }
    //service details start function end



    //transaction approve start
    public function adminServicePaymentApprove($id){
        $service_transaction = ServiceTransaction::where("id",$id)->first();
                

        if( $service_transaction ){

            $service_user = ServiceUser::where("id",$service_transaction->service_user_id)->first();

            if( $service_user ){
                $service_transaction->is_verified = true;
                if( $service_transaction->save() ){
                    return back()->with('success','Trasaction Verified');
                }
            }
            else{
                return view("errors.404");
            }
            
        }
        else{
            return view("errors.404");
        }
    }
    //transaction approve start



    /**
     * Get services
     *
     * @param mixed $request request attributes
     *
     * @return \Illuminate\Http\Response
     */
    public function getServices()
    {
        $json = array();
        $service_list = array();
        if (Schema::hasTable('services') && Schema::hasTable('service_user')) {
            $services = $this->service::latest()->where('is_featured', 'true')->paginate(6);
            foreach ($services as $key => $service) {
                $service_list[$key]['title'] = $service->title;
                $service_list[$key]['is_featured'] = $service->is_featured;
                $service_list[$key]['slug'] = $service->slug;
                $service_list[$key]['price'] = $service->price;
                $service_list[$key]['seller'] = $service->seller->toArray();
                $service_list[$key]['seller_count'] = $service->seller->count();
                $service_reviews = $service->seller->count() > 0 ? Helper::getServiceReviews($service->seller[0]->id, $service->id) : '';
                $service_list[$key]['service_reviews'] = !empty($service_reviews) ? $service_reviews->count() : '';
                $service_list[$key]['service_rating']  = !empty($service_reviews) && $service_reviews->sum('avg_rating') != 0 ? round($service_reviews->sum('avg_rating') / $service_reviews->count()) : 0;
                $service_list[$key]['attachments'] = Helper::getUnserializeData($service->attachments);
                $attachments = Helper::getUnserializeData($service->attachments);
                // $service_list[$key]['enable_slider'] = !empty($attachments) ? 'wt-servicesslider' : '';
                $service_list[$key]['enable_slider'] = !empty($attachments) && count($attachments) > 1 ? 'wt-freelancerslider owl-carousel' : '';
                $service_list[$key]['no_attachments'] = empty($attachments) ? 'la-service-info' : '';
                $service_list[$key]['total_orders'] = Helper::getServiceCount($service->id, 'hired');
                $service_list[$key]['seller_name'] = !empty($service->seller[0]) ? Helper::getUserName($service->seller[0]->id) : '';
                $service_list[$key]['seller_image'] = !empty($service->seller[0]) ? asset(Helper::getProfileImage($service->seller[0]->id)) : '';
                if (!empty($attachments)) {
                    foreach ($attachments as $attachment_key => $attachment) {
                        $service_list[$key]['attachments'][$attachment_key] =  !empty($service->seller[0]) ? asset(Helper::getImage('uploads/services/' . $service->seller[0]->id, $attachment, 'medium-', 'medium-service.jpg')) : '';
                    }
                }
                $currency   = SiteManagement::getMetaValue('commision');
                $symbol = !empty($currency) && !empty($currency[0]['currency']) ? Helper::currencyList($currency[0]['currency']) : array();
                $service_list[$key]['symbol'] = !empty($symbol['symbol']) ? $symbol['symbol'] : '$';
            }
        }
        if (!empty($service_list)) {
            $json['type'] = 'success';
            $json['services'] = $service_list;
            return $json;
        } else {
            $json['type'] = 'error';
            return $json;
        }
    }
}
