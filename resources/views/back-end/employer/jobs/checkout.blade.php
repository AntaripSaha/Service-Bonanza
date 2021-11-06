@extends(file_exists(resource_path('views/extend/back-end/master.blade.php')) ? 'extend.back-end.master' : 'back-end.master')
@section('content')
    <section class="wt-haslayout wt-dbsectionspace">
        <div class="row">
            <div class=" col-sm-12 col-md-8 push-md-2 col-lg-8 push-lg-2" id="packages">
                <div class="preloader-section" v-if="loading" v-cloak>
                    <div class="preloader-holder">
                        <div class="loader"></div>
                    </div>
                </div>
                <div class="wt-dashboardbox">
                @if (Session::has('message'))
                    <div class="flash_msg">
                        <flash_messages :message_class="'success'" :time ='5' :message="'{{{ Session::get('message') }}}'" v-cloak></flash_messages>
                    </div>
                    @php session()->forget('message') @endphp;
                @elseif (Session::has('error'))
                    <div class="flash_msg">
                        <flash_messages :message_class="'danger'" :time ='5' :message="'{{{ str_replace("'s", " ",Session::get('error')) }}}'" v-cloak></flash_messages>
                    </div>
                    @php session()->forget('error') @endphp;
                @endif
                <div class="sj-checkoutjournal">
                    <div class="sj-title">
                        <h3>{{{trans('lang.checkout')}}}</h3>
                    </div>
                    @php
                        session()->put(['product_id' => e($proposal->id)]);
                        session()->put(['product_title' => e($job->title)]);
                        session()->put(['product_price' => e($proposal->amount)]);
                        session()->put(['type' => 'project']);
                    @endphp
                    <table class="sj-checkouttable">
                        <thead>
                            <tr>
                                <th>{{trans('lang.item_title')}}</th>
                                <th>{{trans('lang.details')}}</th>
                            </tr>
                        </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="sj-producttitle">
                                            <div class="sj-checkpaydetails">
                                                @if (!empty($job->title))
                                                    <h4>{{{$job->title}}}</h4>
                                                @endif
                                            </div>
                                        </div>
                                    </td>
                                    <td>{{ !empty($symbol['symbol']) ? $symbol['symbol'] : '$' }}{{{$proposal->amount}}} </td>
                                </tr>
                                <tr>
                                    <td>{{ trans('lang.freelancer') }}</td>
                                    <td>{{{ $freelancer_name }}}</td>
                                </tr>
                                <tr>
                                    <td>{{ trans('lang.total') }}</td>
                                    <td>{{ !empty($symbol['symbol']) ? $symbol['symbol'] : '$' }}{{{$proposal->amount}}}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    @if (!empty($payment_gateway))
                        <div class="sj-checkpaymentmethod">
                            @if( $job->service_type == 'Online' )
                            <div class="sj-title">
                                <h3>{{ trans('lang.select_pay_method') }}</h3>
                            </div>
                            <ul class="sj-paymentmethod">
                                @foreach ($payment_gateway as $gatway)
                                    <li>
                                        @if($gatway == "stripe")
                                            <a href="javascrip:void(0);" v-on:click.prevent="getStriprForm">
                                                <i class="fab fa-stripe-s"></i>
                                                <span><em>{{ trans('lang.pay_amount_via') }}</em> {{ Helper::getPaymentMethodList($gatway)['title']}} {{ trans('lang.pay_gateway') }}</span>
                                            </a>
                                        @endif
                                    </li>
                                @endforeach
                            </ul>
                            @else
                            <div class="sj-title">
                                <a href="{{ route('job.hire.freelancer',$proposal->id) }}" class="btn btn-info">
                                    Hire Him 
                                </a>
                            </div>
                            @endif
                        </div>
                    @endif
                </div>
                <b-modal size="lg" ref="myModalRef" hide-footer class="la-pay-stripe" :no-close-on-backdrop="true">
                    <template v-slot:modal-title>
                        <span>Pay 50% of your full payment</span>
                    </template>
                    <div class="d-block text-center">
                        <form class="wt-formtheme wt-form-paycard" method="POST" action="{{ route('job.make.payment') }}">
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
                                <div  class="form-group {{ $errors->has('phone') ? ' has-error' : '' }}">
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
                                    <input type="submit" name="button" class="wt-btn" value="Pay {{ !empty($symbol['symbol']) ? $symbol['symbol'] : '$' }}{{$proposal->amount / 2}}">
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </b-modal>
            </div>
        </div>
    </section>
@endsection
