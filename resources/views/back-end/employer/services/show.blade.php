@extends(file_exists(resource_path('views/extend/back-end/master.blade.php')) ? 'extend.back-end.master' : 'back-end.master')
@section('content')
   <section class="wt-haslayout wt-dbsectionspace" id="services">
        <div class="preloader-section" v-if="loading" v-cloak>
            <div class="preloader-holder">
                <div class="loader"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                @if (Session::has('success'))
                    <div class="flash_msg">
                        <flash_messages :message_class="'success'" :time ='5' :message="'{{{ Session::get('success') }}}'" v-cloak></flash_messages>
                    </div>
                    @php session()->forget('success'); @endphp
                @elseif (Session::has('error'))
                    <div class="flash_msg">
                        <flash_messages :message_class="'danger'" :time='5' :message="'{{{ Session::get('error') }}}'" v-cloak></flash_messages>
                    </div>
                @endif
                <div class="wt-dashboardbox">
                    <div class="wt-dashboardboxtitle">
                        <h2>{{ trans('lang.service_detail') }}</h2>
                    </div>
                    <div class="wt-dashboardboxcontent wt-jobdetailsholder">
                        @if (Auth::user()->getRoleNames()[0] == 'employer')
                            <div class="wt-service-tabel wt-jobservice-details">
                                @if (!empty($freelancer))
                                    @if (!empty($attachment))
                                        <figure class="service-feature-image"><img src="{{{asset(Helper::getImage('uploads/services/'.$freelancer->id, $attachment[0], 'medium-', 'small-service.jpg'))}}}" alt="{{{$service['title']}}}"></figure>
                                    @endif
                                @endif
                                <div class="wt-freelancers-content">
                                    <div class="dc-title">
                                        @if ($service['is_featured'] == 'true')
                                            <span class="wt-featuredtagvtwo">{{ trans('lang.featured') }}</span>
                                        @endif
                                        <h3>{{{$service['title']}}}</h3>
                                        <span><strong>{{ !empty($symbol) ? $symbol['symbol'] : '$' }}{{{$service['price']}}}</strong> {{ trans('lang.starting_from') }}</span>
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="wt-freelancerholder wt-tabsinfo">
                                <div class="wt-jobdetailscontent">
                                    <div class="wt-userlistinghold wt-featured wt-userlistingvtwo">
                                        @if (!empty($service->is_featured) && $service->is_featured === 'true')
                                            <span class="wt-featuredtag">
                                                <img src="{{{ asset('images/featured.png') }}}" alt="{{ trans('lang.is_featured') }}"
                                                    data-tipso="Plus Member" class="template-content tipso_style">
                                            </span>
                                        @endif
                                        <div class="wt-userlistingcontent">
                                            <div class="wt-contenthead">
                                                @if (!empty($purchaser) || !empty($service->title) )
                                                    <div class="wt-title">
                                                        @if (!empty($purchaser))
                                                            <a href="{{{ url('profile/'.$purchaser->slug) }}}">
                                                                @if($purchaser->user_verified === 1)
                                                                    <i class="fa fa-check-circle"></i>&nbsp;
                                                                @endif
                                                                {{{ Helper::getUserName($purchaser->id) }}}
                                                            </a>
                                                        @endif
                                                        @if (!empty($service->title))
                                                            <h2>{{{ $service->title }}}</h2>
                                                        @endif
                                                    </div>
                                                @endif
                                                <ul class="wt-userlisting-breadcrumb">
                                                    @if (!empty($service->price))
                                                        <li><span><i class="far fa-money-bill-alt"></i> {{ !empty($symbol) ? $symbol['symbol'] : '$' }}{{{ $service->price }}}</span></li>
                                                    @endif
                                                    @if (!empty($service->location->title))
                                                        <li>
                                                            <span>
                                                                <img src="{{{asset(Helper::getLocationFlag($service->location->flag))}}}"
                                                                alt="{{ trans('lang.img') }}"> {{{ $service->location->title }}}
                                                            </span>
                                                        </li>
                                                    @endif
                                                </ul>
                                            </div>
                                            <div class="wt-rightarea">
                                                <div class="wt-hireduserstatus">
                                                    <figure><img src="{{{ asset(Helper::getImage('uploads/users/'.$purchaser->id, $purchaser->profile->avater, 'medium-small-', 'user.jpg')) }}}" alt="{{ trans('lang.profie_img') }}"></figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                        @if (!empty($freelancer))
                            @if (Auth::user()->getRoleNames()[0] == 'employer')


                                <!-- service transaction start -->
                                <div class="wt-rcvproposalholder wt-hiredfreelancer wt-tabsinfo">
                                    <div class="wt-tabscontenttitle">
                                        <h2>Payment Transaction</h2>
                                    </div>
                                    <div class="wt-jobdetailscontent">
                                        @forelse($service_transactions as $service_transaction)
                                        <div class="wt-userlistinghold wt-featured wt-proposalitem ">
                                            
                                            @if($service_transaction->is_verified == 0)
                                            <div class="wt-rightarea la-pending-jobs  float-right">
                                                <div class="wt-btnarea  float-right">
                                                    <button class="wt-btn" style="background-color: red;">
                                                        Not Verified
                                                    </button>
                                                </div>
                                            </div>
                                            @else
                                            <div class="wt-rightarea la-pending-jobs  float-right">
                                                <div class="wt-btnarea  float-right">
                                                    <button class="wt-btn" style="background-color: rgba(56, 232, 94);">
                                                        Verified
                                                    </button>
                                                </div>
                                            </div>
                                            @endif


                                            <p>
                                                <b>
                                                    Phone Number :
                                                </b>
                                                {{ $service_transaction->phone }}
                                            </p>
                                            <p>
                                                <b>
                                                    Transaction Id :
                                                </b>
                                                {{ $service_transaction->transaction_id }}
                                            </p>
                                            <p>
                                                <b>
                                                    Payment Type :
                                                </b>
                                                {{ $service_transaction->type }}
                                            </p>
                                            <p>
                                                <b>
                                                    Payment Date :
                                                </b>
                                                {{ $service_transaction->created_at->toDayDateTimeString() }}
                                            </p>
                                        </div>
                                        @empty
                                        <div class="wt-userlistinghold wt-featured wt-proposalitem">
                                            <p>No Transaction Found</p>
                                        </div>
                                        @endforelse
                                    </div>
                                </div>
                                <!-- service transaction end -->



                                <div class="wt-rcvproposalholder wt-hiredfreelancer wt-tabsinfo">
                                    <div class="wt-tabscontenttitle">
                                        <h2>{{ trans('lang.hired_freelancer') }}</h2>
                                    </div>
                                    <div class="wt-jobdetailscontent">
                                        <div class="wt-userlistinghold wt-featured wt-proposalitem">
                                            @if (!empty($freelancer))
                                                <span class="wt-featuredtag"><img src="{{{ asset('images/featured.png') }}}" alt="img description" data-tipso="Plus Member" class="template-content tipso_style mCS_img_loaded"></span>
                                                <figure class="wt-userlistingimg">
                                                    <img src="{{{Helper::getProfileImage($freelancer->id)}}}" alt="image description">
                                                </figure>
                                                <div class="wt-proposaldetails">
                                                    <div class="wt-contenthead">
                                                        <div class="wt-title">
                                                            <a href="{{{url('profile/'.$freelancer->slug)}}}"> {{{Helper::getUserName($freelancer->id)}}}</a>
                                                        </div>
                                                    </div>
                                                    <div class="wt-proposalfeedback">
                                                        <span class="wt-stars"><span style="width: {{ $stars }}%;"></span></span>
                                                        <span class="wt-starcontent">{{{ round($average_rating_count) }}}<sub>{{ trans('lang.5') }}</sub> <em>({{{ $feedbacks }}} {{ trans('lang.feedbacks') }})</em></span>
                                                    </div>													
                                                </div>
                                            @endif
                                            @if (!empty($freelancer))
                                                @if ($pivot_service->status == 'hired')
                                                    <div class="wt-rightarea wt-titlewithsearch wt-titlewithsearchvtwo">
                                                        @if( $verified >= 2 )
                                                        <form class="wt-formtheme wt-formsearch" id="change_job_status">
                                                            <fieldset>
                                                                <div class="form-group">
                                                                    <span class="wt-select">
                                                                        {!! Form::select('status', $service_status, 'hired', array('id' =>'employer_service_status', 'data-placeholder' => trans('lang.select_status'), '@change' => 'serviceStatus('.$service->id.', '.$pivot_id.', '.Auth::user()->id.', "'.$cancel_proposal_text.'", "'.$cancel_proposal_button.'", "'.$validation_error_text.'", "'.$cancel_popup_title.'")')) !!}
                                                                    </span>
                                                                    <a href="javascrip:void(0);" class="wt-searchgbtn job_status_popup" @click.prevent='serviceStatus({{$service->id}}, {{$pivot_id}}, {{Auth::user()->id}}, "{{$cancel_proposal_text}}", "{{$cancel_proposal_button}}", "{{$validation_error_text}}", "{{$cancel_popup_title}}")'><i class="fa fa-check"></i></a>
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
                                                                        <form action="{{ route('service.payment.two',$pivot_id) }}" method="post">
                                                                            {{ csrf_field() }}
                                                                            <fieldset>
                                                                                <div class="form-group">
                                                                                    <p>
                                                                                        <b>Bkash Personal Number</b> : {{ $number[0]['stripe_secret'] }}
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
                                                    </div>
                                                @endif
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @else
                            <!-- service transaction start -->
                            <div class="wt-rcvproposalholder wt-hiredfreelancer wt-tabsinfo">
                                <div class="wt-tabscontenttitle">
                                    <h2>Payment Transaction</h2>
                                </div>
                                <div class="wt-jobdetailscontent">
                                    @forelse($service_transactions as $service_transaction)
                                    <div class="wt-userlistinghold wt-featured wt-proposalitem ">
                                        
                                        @if($service_transaction->is_verified == 0)
                                        <div class="wt-rightarea la-pending-jobs  float-right">
                                            <div class="wt-btnarea  float-right">
                                                <button class="wt-btn" style="background-color: red;">
                                                    Not Verified
                                                </button>
                                            </div>
                                        </div>
                                        @else
                                        <div class="wt-rightarea la-pending-jobs  float-right">
                                            <div class="wt-btnarea  float-right">
                                                <button class="wt-btn" style="background-color: rgba(56, 232, 94);">
                                                    Verified
                                                </button>
                                            </div>
                                        </div>
                                        @endif


                                        <p>
                                            <b>
                                                Phone Number :
                                            </b>
                                            {{ $service_transaction->phone }}
                                        </p>
                                        <p>
                                            <b>
                                                Transaction Id :
                                            </b>
                                            {{ $service_transaction->transaction_id }}
                                        </p>
                                        <p>
                                            <b>
                                                Payment Type :
                                            </b>
                                            {{ $service_transaction->type }}
                                        </p>
                                        <p>
                                            <b>
                                                Payment Date :
                                            </b>
                                            {{ $service_transaction->created_at->toDayDateTimeString() }}
                                        </p>
                                    </div>
                                    @empty
                                    <div class="wt-userlistinghold wt-featured wt-proposalitem">
                                        <p>No Transaction Found</p>
                                    </div>
                                    @endforelse
                                </div>
                            </div>
                            <!-- service transaction end -->
                            @endif
                            <div class="wt-projecthistory">
                                <div class="wt-tabscontenttitle">
                                    <h2>{{ trans('lang.project_history') }}</h2>
                                </div>
                                <div class="wt-historycontent la-jobdetails-holder">
                                    <private-message :placeholder="'{{ trans('lang.ph_job_dtl') }}'" :upload_tmp_url="'{{url('service/upload-temp-message_attachments')}}'" :id="'{{$pivot_id}}'" :recipent_id="'{{$freelancer->id}}'" :project_type="'service'"></private-message>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
            </div>
        </div>
        @if (!empty($freelancer))
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
                                            <vue-stars
                                                :name="'rating[{{$key}}][rate]'"
                                                :active-color="'#fecb02'"
                                                :inactive-color="'#999999'"
                                                :shadow-color="'#ffff00'"
                                                :hover-color="'#dddd00'"
                                                :max="5"
                                                :value="0"
                                                :readonly="false"
                                                :char="'★'"
                                                id="rating-{{$key}}"
                                            />
                                            <div class="counter wt-pointscounter"></div>
                                        </div>
                                        <input type="hidden" name="rating[{{$key}}][reason]" value="{{{$option->id}}}">
                                        <span class="wt-ratingdescription">{{{$option->title}}}</span>
                                    </div>
                                @endforeach
                            @endif
                            <input type="hidden" name="receiver_id" value="{{{$freelancer->id}}}">
                            <input type="hidden" name="service_id" value="{{{$service->id}}}">
                            <div class="form-group wt-btnarea">
                                <a class="wt-btn" href="javascript:void(0);" v-on:click='submitFeedback({{$freelancer->id}}, {{$pivot_id}})'>{{ trans('lang.btn_send_feedback') }}</a>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </b-modal>
        @endif
    </section>
    @endsection
