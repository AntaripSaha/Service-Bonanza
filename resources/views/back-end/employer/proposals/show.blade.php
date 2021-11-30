@extends(file_exists(resource_path('views/extend/back-end/master.blade.php')) ? 'extend.back-end.master' : 'back-end.master')

@section('per-page-css')

@endsection

@section('content')
@php
$count = 0;
$reviews = \App\Review::where('receiver_id', $accepted_proposal->freelancer_id)->count();
$verified_user = \App\User::select('user_verified')->where('id', $job->employer->id)->pluck('user_verified')->first();
$project_type = Helper::getProjectTypeList($job->project_type);
@endphp

<style>
    #pos {
        float: right !important;
        margin-left: 800px;
        text-transform: uppercase;

    }
</style>
@if ($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

<section class="wt-haslayout wt-dbsectionspace" id="jobs">
    <div class="preloader-section" v-if="loading" v-cloak>
        <div class="preloader-holder">
            <div class="loader"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            @if (Session::has('success'))
            <div class="flash_msg">
                <flash_messages :message_class="'success'" :time='5' :message="'{{{ Session::get('success') }}}'" v-cloak></flash_messages>
            </div>
            @php session()->forget('success'); @endphp
            @elseif (Session::has('error'))
            <div class="flash_msg">
                <flash_messages :message_class="'danger'" :time='5' :message="'{{{ Session::get('error') }}}'" v-cloak></flash_messages>
            </div>
            @endif
            <div class="wt-dashboardbox">
                <div class="wt-dashboardboxtitle">
                    <h2>{{ trans('lang.job_dtl') }}</h2>
                </div>
                <div class="wt-dashboardboxcontent wt-jobdetailsholder">
                    <div class="wt-freelancerholder wt-tabsinfo">
                        <div class="wt-jobdetailscontent">
                            <div class="wt-userlistinghold wt-featured wt-userlistingvtwo">
                                @if (!empty($job->is_featured) && $job->is_featured == 'true')
                                <span class="wt-featuredtag"><img src="{{{ asset('images/featured.png') }}}" alt="{{ trans('lang.is_featured') }}" data-tipso="Plus Member" class="template-content tipso_style"></span>
                                @endif
                                <div class="wt-userlistingcontent">
                                    <div class="wt-contenthead">
                                        @if (!empty($employer_name) || !empty($job->title) )
                                        <div class="wt-title">
                                            @if (!empty($employer_name))
                                            <a href="{{{ url('profile/'.$job->employer->slug) }}}">@if ($verified_user == 1)<i class="fa fa-check-circle"></i>@endif&nbsp;{{{ $employer_name }}}</a>
                                            @endif
                                            @if (!empty($job->title))
                                            <h2>{{{ $job->title }}}</h2>
                                            @endif
                                        </div>
                                        @endif
                                        @if (!empty($job->price) ||
                                        !empty($job->location->title))
                                        <ul class="wt-saveitem-breadcrumb wt-userlisting-breadcrumb">
                                            @if (!empty($job->price))
                                            <li><span class="wt-dashboraddoller"><i>{{ !empty($symbol) ? $symbol['symbol'] : '$' }}</i> {{{ $job->price }}}</span></li>
                                            @endif
                                            @if (!empty($job->location->title))
                                            <li><span><img src="{{{asset(App\Helper::getLocationFlag($job->location->flag))}}}" alt="{{ trans('lang.img') }}"> {{{ $job->location->title }}}</span></li>
                                            @endif
                                            @if (!empty($job->project_type))
                                            <li><a href="javascript:void(0);" class="wt-clicksavefolder"><i class="far fa-folder"></i> {{ trans('lang.type') }} {{{ $project_type }}}</a></li>
                                            @endif
                                            @if (!empty($job->duration) && !is_array($duration))
                                            <li><span class="wt-dashboradclock"><i class="far fa-clock"></i> {{ trans('lang.duration') }} {{{ $duration }}}</span></li>
                                            @endif
                                        </ul>
                                        @endif
                                    </div>
                                    <div class="wt-rightarea">
                                        @if ($job->status == 'hired')
                                        <div class="wt-hireduserstatus">
                                            <h4>{{ trans('lang.hired') }}</h4>
                                            <span>{{{ $freelancer_name }}}</span>
                                            <ul class="wt-hireduserimgs">
                                                <li>
                                                    <figure><img src="{{{ asset($profile_image) }}}" alt="{{ trans('lang.profile_img') }}" class="mCS_img_loaded"></figure>
                                                </li>
                                            </ul>
                                        </div>
                                        @elseif ($job->status == 'completed')
                                        <div class="wt-hireduserstatus">
                                            <h4>{{ trans('lang.completed') }}</h4>
                                            <span>{{{ $freelancer_name }}}</span>
                                            <ul class="wt-hireduserimgs">
                                                <li>
                                                    <figure><img src="{{{ asset($profile_image) }}}" alt="{{ trans('lang.profile_img') }}" class="mCS_img_loaded"></figure>
                                                </li>
                                            </ul>
                                        </div>
                                        @else
                                        <div class="wt-hireduserstatus">
                                            @if (Auth::user()->getRoleNames()[0] == "admin")
                                            <h4>{{ trans('lang.job_cancelled') }}</h4>
                                            @else
                                            <h5>{{ trans('lang.no_freelancers') }}</h5>
                                            @endif
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- transaction detail start -->
                    <div class="wt-rcvproposalholder wt-hiredfreelancer wt-tabsinfo">
                        <div class="wt-tabscontenttitle">
                            <h2>Payment Transaction</h2>
                        </div>
                        <div class="wt-jobdetailscontent">
                            @forelse($job_transactions as $job_transaction)
                            <div class="wt-userlistinghold wt-featured wt-proposalitem ">

                                @if(Auth::user()->getRoleNames()[0] == 'admin')
                                @if($job_transaction->is_verified == 0)
                                <form method="post" action="{{route('payment.approve', $job_transaction->id)}}">
                                    @csrf
                                    <div class="wt-rightarea la-pending-jobs  float-right">
                                        <div class="wt-btnarea  float-right">
                                            <button class="wt-btn">
                                                Verify Payment
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                @else
                                <div class="wt-rightarea la-pending-jobs  float-right">
                                    <div class="wt-btnarea  float-right">
                                        <button class="wt-btn" style="background-color: rgba(56, 232, 94);">
                                            Payment Successful
                                        </button>
                                    </div>
                                </div>
                                @endif
                                @endif


                                @if(Auth::user()->getRoleNames()[0] == 'employer')
                                @if($job_transaction->is_verified == 0)
                                <div class="wt-rightarea la-pending-jobs  float-right">
                                    <div class="wt-btnarea  float-right">
                                        <button class="wt-btn " style="background-color: rgba(247, 54, 74);">
                                            Payment Not Verified Yet
                                        </button>
                                    </div>
                                </div>
                                @else
                                <div class="wt-rightarea la-pending-jobs  float-right">
                                    <div class="wt-btnarea  float-right">
                                        <button class="wt-btn" style="background-color: rgba(56, 232, 94);">
                                            Payment Verified
                                        </button>
                                    </div>
                                </div>
                                @endif
                                @endif


                                <p>
                                    <b>
                                        Phone Number :
                                    </b>
                                    {{ $job_transaction->phone }}
                                </p>
                                <p>
                                    <b>
                                        Transaction Id :
                                    </b>
                                    {{ $job_transaction->transaction_id }}
                                </p>
                                <p>
                                    <b>
                                        Payment Type :
                                    </b>
                                    {{ $job_transaction->type }}
                                </p>
                                <p>
                                    <b>
                                        Payment Date :
                                    </b>
                                    {{ $job_transaction->created_at->toDayDateTimeString() }}
                                </p>
                            </div>
                            @empty
                            <div class="wt-userlistinghold wt-featured wt-proposalitem">
                                <p>No Transaction Found</p>
                            </div>
                            @endforelse
                        </div>
                    </div>
                    <!-- transaction detail end -->

                    <!--  Service Provider Details start -->

                    <div class="wt-rcvproposalholder wt-hiredfreelancer wt-tabsinfo">


                        <div class="wt-tabscontenttitle">
                            <h2>{{ trans('lang.hired_freelancers') }}</h2>
                        </div>

                        <div class="wt-jobdetailscontent">


                            <!-- Button for pay all Amount Admin -->

                            @if($job->service_type == 'Online')

                            @if ( $job->status == 'completed' && Auth::user()->getRoleNames()->first() == 'admin')

                            @if($payment_status && $payment_status->status == 'completed')

                            <div class="wt-rightarea la-pending-jobs  float-right">
                                <div class="wt-btnarea  float-right">
                                    <button class="wt-btn" style="background-color: rgba(112, 235, 75);">
                                        Payment completed
                                    </button>
                                </div>
                            </div>
                            @else
                            <div class="wt-rightarea la-pending-jobs  float-right">
                                <div class="wt-btnarea  float-right">
                                    <button class="wt-btn" style="background-color: rgba(217, 129, 100);" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">
                                        Pay All Amount
                                    </button>
                                </div>
                            </div>

                            @endif



                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Payment Process</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="{{route('pay.all')}}" method="post">
                                                @csrf
                                                <div class="modal-body">
                                                    <h5>Provider's Bkash Number</h5>
                                                    <h6>
                                                        @if( $bkash->payout_settings )
                                                        <p>{{ unserialize($bkash->payout_settings)['paypal_email']}}</p>
                                                        @endif
                                                    </h6>
                                                    @php
                                                    $percentage = $accepted_proposal->amount * 20 / 100;
                                                    @endphp
                                                    <h5>
                                                        <p>Amount needs to pay after 20% : </p>
                                                    </h5>
                                                    <h6>
                                                        <p>{{ $accepted_proposal->amount - $percentage }}</p>
                                                    </h6>
                                                </div>

                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name='user_id' value="{{$job->user_id}}">
                                                </div>
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name='amount' value="{{  $accepted_proposal->amount - $percentage }}">
                                                </div>

                                                <div class="form-group">
                                                    @if( $bkash->payout_settings )
                                                    <input type="hidden" class="form-control" name='paypal_id' value="{{unserialize($bkash->payout_settings)['paypal_email']}}">
                                                    @endif
                                                </div>
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name='order_id' value="{{$job->id}}">
                                                </div>
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name='type' value="job">
                                                </div>

                                                <div class="form-group">
                                                    <label for="phone" class="col-form-label">Phone:</label>
                                                    <input type="text" class="form-control" id="phone">
                                                </div>
                                                <div class="form-group">
                                                    <label for="transaction_id" class="col-form-label">Transaction ID:</label>
                                                    <input type="text" class="form-control" name="transaction_id">
                                                </div>
                                                <!-- <div class="form-group">
                                                    <label for="message-text" class="col-form-label">Message:</label>
                                                    <textarea class="form-control" id="message-text"></textarea>
                                                </div> -->

                                                <button type="submit" class="btn btn-primary">Submit</button>

                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div>


                            @endif
                            @endif
                            <!-- Button for pay all Amount Admin End -->


                            @if (!empty($accepted_proposal))
                            <div class="wt-userlistinghold wt-featured wt-proposalitem">
                                <figure class="wt-userlistingimg">
                                    <img src="{{{ asset($profile_image) }}}" alt="{{ trans('lang.is_featured') }}" class="mCS_img_loaded">
                                </figure>
                                <div class="wt-proposaldetails">
                                    @if (!empty($freelancer_name))
                                    <div class="wt-contenthead">
                                        <div class="wt-title">
                                            <a href="{{ url('profile/'.$user_slug) }}">{{{ $freelancer_name }}}</a>
                                        </div>
                                    </div>
                                    @endif
                                    <div class="wt-proposalfeedback">
                                        <span class="wt-stars"><span style="width: {{ $stars }}%;"></span></span>
                                        <span class="wt-starcontent">{{{ round($average_rating_count) }}}<sub>{{ trans('lang.5') }}</sub> <em>({{{ $feedbacks }}} {{ trans('lang.feedbacks') }})</em></span>
                                    </div>

                                </div>
                                <div class="wt-rightarea wt-titlewithsearch">


                                    @if ($job->status == 'hired' && Auth::user()->getRoleNames()->first() == 'employer')

                                    @if( $job->service_type == 'Online' )
                                    @if( $verified >= 2 )
                                    <form class="wt-formtheme wt-formsearch" id="change_job_status">
                                        <fieldset>
                                            <div class="form-group">
                                                <span class="wt-select">
                                                    {!! Form::select('status', $project_status, $job->status, array('id' =>'job_status', 'data-placeholder' => trans('lang.select_status'), '@change' => 'jobStatus('.$job->id.', '.$accepted_proposal->id.', "'.$cancel_proposal_text.'", "'.$cancel_proposal_button.'", "'.$validation_error_text.'", "'.$cancel_popup_title.'")')) !!}
                                                </span>

                                                <a href="javascrip:void(0);" class="wt-searchgbtn job_status_popup" @click.prevent='jobStatus({{$job->id}}, {{$accepted_proposal->id}}, "{{$cancel_proposal_text}}", "{{$cancel_proposal_button}}", "{{$validation_error_text}}", "{{$cancel_popup_title}}")'>
                                                    <i class="fa fa-check"></i>
                                                </a>

                                            </div>
                                        </fieldset>
                                    </form>
                                    @else
                                    <fieldset>
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                            Make Payment
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form action="{{ route('job.make.payment') }}" method="post">
                                                            {{ csrf_field() }}
                                                            <fieldset>
                                                                <div class="form-group">
                                                                    <p>
                                                                        <b>Bkash Personal Number</b> : {{ $number[0]['stripe_secret'] }}
                                                                        <input type="hidden" value="{{ $proposal->id }}" name="proposal_id">
                                                                        <input type="hidden" value="{{ $job->id }}" name="job_id">
                                                                    </p>
                                                                    <p>
                                                                        <b> Bkash Agent Number</b> : {{ $number[0]['stripe_key'] }}
                                                                    </p>
                                                                </div>
                                                                <div class="form-group {{ $errors->has('phone') ? ' has-error' : '' }}">
                                                                    <label>Phone</label>
                                                                    <input type="text" class="form-control" name="phone" placeholder="017********" required>
                                                                    @if ($errors->has('phone'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('phone') }}</strong>
                                                                    </span>
                                                                    @endif
                                                                </div>
                                                                <div class="form-group {{ $errors->has('transaction_id') ? ' has-error' : '' }}">
                                                                    <label>Transaction ID</label>
                                                                    <input type="text" class="form-control" name="transaction_id" required autofocus>
                                                                    @if ($errors->has('transaction_id'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('transaction_id') }}</strong>
                                                                    </span>
                                                                    @endif
                                                                </div>
                                                                <div class="form-group wt-btnarea">
                                                                    <input type="submit" name="button" class="wt-btn" value="Pay Due Amount">
                                                                </div>
                                                            </fieldset>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    @endif
                                    @else
                                    <form class="wt-formtheme wt-formsearch" id="change_job_status">
                                        <fieldset>
                                            <div class="form-group">
                                                <span class="wt-select">
                                                    {!! Form::select('status', $project_status, $job->status, array('id' =>'job_status', 'data-placeholder' => trans('lang.select_status'), '@change' => 'jobStatus('.$job->id.', '.$accepted_proposal->id.', "'.$cancel_proposal_text.'", "'.$cancel_proposal_button.'", "'.$validation_error_text.'", "'.$cancel_popup_title.'")')) !!}
                                                </span>

                                                <a href="javascrip:void(0);" class="wt-searchgbtn job_status_popup" @click.prevent='jobStatus({{$job->id}}, {{$accepted_proposal->id}}, "{{$cancel_proposal_text}}", "{{$cancel_proposal_button}}", "{{$validation_error_text}}", "{{$cancel_popup_title}}")'>
                                                    <i class="fa fa-check"></i>
                                                </a>

                                            </div>
                                        </fieldset>
                                    </form>
                                    @endif

                                    @endif

                                    <div class="wt-hireduserstatus">
                                        <h5>{{ !empty($symbol) ? $symbol['symbol'] : '$' }}{{{ $accepted_proposal->amount }}}</h5>
                                        @if (!empty($completion_time))
                                        <span>{{{ $completion_time }}}</span>
                                        @endif
                                    </div>
                                    <div class="wt-hireduserstatus">
                                        <i class="far fa-envelope"></i>
                                        <a href="javascript:void(0);" v-on:click.prevent="showCoverLetter('{{ $accepted_proposal->id }}')"><span>{{ trans('lang.cover_letter') }}</span></a>
                                    </div>
                                    @if (!empty($attachments))
                                    <div class="wt-hireduserstatus">
                                        <i class="fa fa-paperclip"></i>
                                        {!! Form::open(['url' => url('proposal/download-attachments'), 'class' =>'post-job-form wt-haslayout', 'id' => 'download-attachments-form-'.$accepted_proposal->freelancer_id]) !!}
                                        @foreach ($attachments as $attachment)
                                        @if (Storage::disk('local')->exists('uploads/proposals/'.$accepted_proposal->freelancer_id.'/'.$attachment))
                                        {!! Form::hidden('attachments['.$count.']', $attachment, []) !!}
                                        @php $count++; @endphp
                                        @endif
                                        @endforeach
                                        {!! Form::hidden('freelancer_id', $accepted_proposal->freelancer_id, []) !!}
                                        {!! form::close(); !!}
                                        <a href="javascript:void(0);" v-on:click.prevent="downloadAttachments('{{'download-attachments-form-'.$accepted_proposal->freelancer_id}}')"><span>{{{ $count }}} {{trans('lang.file_attached')}}</span></a>
                                    </div>
                                    @endif
                                </div>
                            </div>
                            @endif
                        </div>
                    </div>

                    <!--  Service Provider Details start -->


                    <div class="wt-projecthistory">
                        <div class="wt-tabscontenttitle">
                            <h2>{{ trans('lang.project_history') }}</h2>
                        </div>
                        <div class="wt-historycontent la-jobdetails-holder">
                            <private-message :placeholder="'{{ trans('lang.ph_job_dtl') }}'" :upload_tmp_url="'{{url('proposal/upload-temp-image')}}'" :id="'{{$accepted_proposal->id}}'" :recipent_id="'{{$accepted_proposal->freelancer_id}}'"></private-message>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
        </div>
    </div>
    <b-modal ref="myModalRef-{{ $accepted_proposal->id }}" hide-footer title="Cover Letter" v-cloak>
        <div class="d-block text-center">
            {{{$accepted_proposal->content}}}
        </div>
    </b-modal>
    <b-modal ref="myModalRef" hide-footer title="Project Status">
        <div class="d-block text-center">
            <form class="wt-formtheme wt-formfeedback" id="submit-review-form">
                <fieldset>
                    <div class="form-group">
                        <textarea class="form-control" placeholder="{{ trans('lang.add_your_feedback') }}" name="feedback"></textarea>
                    </div>
                    @if(!empty($review_options))
                    @foreach ($review_options as $key => $option)
                    <div class="form-group wt-ratingholder">
                        <div class="wt-ratepoints">
                            <vue-stars :name="'rating[{{$key}}][rate]'" :active-color="'#fecb02'" :inactive-color="'#999999'" :shadow-color="'#ffff00'" :hover-color="'#dddd00'" :max="5" :value="0" :readonly="false" :char="'★'" id="rating-{{$key}}" />
                            <div class="counter wt-pointscounter"></div>
                        </div>
                        <input type="hidden" name="rating[{{$key}}][reason]" value="{{{$option->id}}}">
                        <span class="wt-ratingdescription">{{{$option->title}}}</span>
                    </div>
                    @endforeach
                    @endif
                    <input type="hidden" name="receiver_id" value="{{{$accepted_proposal->freelancer_id}}}">
                    <input type="hidden" name="proposal_id" value="{{{$accepted_proposal->id}}}">
                    <div class="form-group wt-btnarea">
                        <a class="wt-btn" href="javascript:void(0);" v-on:click='submitFeedback({{$accepted_proposal->freelancer_id}}, {{$job->id}})'>{{ trans('lang.btn_send_feedback') }}</a>
                    </div>
                </fieldset>
            </form>
        </div>
    </b-modal>
</section>
@endsection
<script>
    $('#myModal').on('shown.bs.modal', function() {
        $('#myInput').trigger('focus')
    })
</script>

@section('per-page-js')

@endsection