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

                @if( session()->has('success') )
                <div class="alert alert-success">
                    <p>{{ session()->get('success') }}</p>
                </div>
                @endif

                
                <div class="wt-dashboardbox">
                    <div class="wt-dashboardboxtitle">
                        <h2>{{ trans('lang.service_detail') }}</h2>
                    </div>
                    <div class="wt-dashboardboxcontent wt-jobdetailsholder">
                        <div class="wt-service-tabel wt-jobservice-details">
                            @if (!empty($attachment))
                                <figure class="service-feature-image"><img src="{{{asset(Helper::getImage('uploads/services/'.$freelancer->id, $attachment[0], 'medium-', 'small-service.jpg'))}}}" alt="{{{$service['title']}}}"></figure>
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


                        <!-- service transaction start -->
                        <div class="wt-rcvproposalholder wt-hiredfreelancer wt-tabsinfo">
                            <div class="wt-tabscontenttitle">
                                <h2>Payment Transaction</h2>
                            </div>
                            <div class="wt-jobdetailscontent">
                                @forelse($service_transactions as $service_transaction)
                                <div class="wt-userlistinghold wt-featured wt-proposalitem ">
                                    
                                    @if( $service_transaction->is_verified == 0 )
                                    <form method="get" action="{{route('admin.service.transaction.approve', $service_transaction->id)}}">
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
                                    <span class="wt-featuredtag"><img src="{{{ asset('images/featured.png') }}}" alt="img description" data-tipso="Plus Member" class="template-content tipso_style mCS_img_loaded"></span>
                                    <figure class="wt-userlistingimg">
                                        <img src="{{{asset(Helper::getProfileImage($freelancer->id))}}}" alt="image description">
                                    </figure>
                                    <div class="wt-proposaldetails">
                                        <div class="wt-contenthead">
                                            <div class="wt-title">
                                                <a href="{{{url('profile/'.$freelancer->slug)}}}"> {{{Helper::getUserName($freelancer->id)}}}</a>
                                            </div>
                                        </div>
                                        <div class="wt-proposalfeedback">
                                            <span class="wt-stars"><span style="width: {{ $stars }}%;"></span></span>
                                            <span class="wt-starcontent">{{{ $rating }}}<sub>{{ trans('lang.5') }}</sub> <em>({{{ $feedbacks }}} {{ trans('lang.feedbacks') }})</em></span>
                                        </div>													
                                    </div>
                                    @if ($pivot_service->status == 'hired')
                                        <div class="wt-rightarea wt-titlewithsearch wt-titlewithsearchvtwo">
                                            <form class="wt-formtheme wt-formsearch" id="change_job_status">
                                                <fieldset>
                                                    <div class="form-group">
                                                        <span class="wt-select">
                                                            {!! Form::select('status', $service_status, 'hired', array('id' =>'employer_service_status', 'data-placeholder' => trans('lang.select_status'), '@change' => 'serviceStatus('.$service->id.', '.$id.', '.Auth::user()->id.', "'.$cancel_proposal_text.'", "'.$cancel_proposal_button.'", "'.$validation_error_text.'", "'.$cancel_popup_title.'")')) !!}
                                                        </span>
                                                        <a href="javascrip:void(0);" class="wt-searchgbtn job_status_popup" @click.prevent='serviceStatus({{$service->id}}, {{$id}}, {{Auth::user()->id}}, "{{$cancel_proposal_text}}", "{{$cancel_proposal_button}}", "{{$validation_error_text}}", "{{$cancel_popup_title}}")'><i class="fa fa-check"></i></a>
                                                    </div>
                                                </fieldset>
                                            </form>											
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="wt-projecthistory">
                            <div class="wt-tabscontenttitle">
                                <h2>{{ trans('lang.project_history') }}</h2>
                            </div>
                            <div class="wt-historycontent la-jobdetails-holder">
                                <private-message :placeholder="'{{ trans('lang.ph_job_dtl') }}'" :upload_tmp_url="'{{url('service/upload-temp-message_attachments')}}'" :id="'{{$service_users->id}}'" :recipent_id="'{{Auth::user()->id}}'" :project_type="'service'"></private-message>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
            </div>
        </div>
        
    </section>
    @endsection
