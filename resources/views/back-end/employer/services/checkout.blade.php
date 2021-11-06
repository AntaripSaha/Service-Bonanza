@extends(file_exists(resource_path('views/extend/back-end/master.blade.php')) ? 'extend.back-end.master' : 'back-end.master')
@section('content')
<section class="wt-haslayout wt-dbsectionspace">
    <div class="row">
        <div class=" col-sm-12 col-md-12 col-lg-10 push-lg-1 col-xl-8 push-xl-2" id="packages">
            <div class="preloader-section" v-if="loading" v-cloak>
                <div class="preloader-holder">
                    <div class="loader"></div>
                </div>
            </div>
            <div class="wt-dashboardbox">
                @if (Session::has('message'))
                <div class="flash_msg">
                    <flash_messages :message_class="'success'" :time='5' :message="'{{{ Session::get('message') }}}'" v-cloak></flash_messages>
                </div>
                @php session()->forget('message') @endphp;
                @elseif (Session::has('error'))
                <div class="flash_msg">
                    <flash_messages :message_class="'danger'" :time='5' :message="'{{{ str_replace("'s", " ",Session::get('error')) }}}'" v-cloak></flash_messages>
                </div>
                @php session()->forget('error') @endphp;
                @endif
                <div class="sj-checkoutjournal">
                    <div class="sj-title">
                        <h3>{{{trans('lang.checkout')}}}</h3>
                    </div>
                    @php
                    session()->put(['product_id' => e($service->id)]);
                    session()->put(['product_title' => e($service->title)]);
                    session()->put(['product_price' => e($service->price)]);
                    session()->put(['type' => 'project']);
                    session()->put(['project_type' => 'service']);
                    session()->put(['service_seller' => $freelancer->id]);
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
                                            @if (!empty($service->title))
                                            <h4>{{{$service->title}}}</h4>
                                            @endif
                                        </div>
                                    </div>
                                </td>
                                <td>{{ !empty($symbol['symbol']) ? $symbol['symbol'] : '$' }}{{{$service->price}}} </td>
                            </tr>
                            <tr>
                                <td>{{ trans('lang.freelancer') }}</td>
                                <td>{{{ $freelancer_name }}}</td>
                            </tr>
                            <tr>
                                <td>{{ trans('lang.total') }}</td>
                                <td>{{ !empty($symbol['symbol']) ? $symbol['symbol'] : '$' }}{{{$service->price}}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                @if (!empty($payment_gateway))
                <div class="sj-checkpaymentmethod">
                    <div class="sj-title">
                        <h3>{{ trans('lang.select_pay_method') }}</h3>
                    </div>
                    <ul class="sj-paymentmethod">
                        @foreach ($payment_gateway as $gatway)
                        <li>
                            @if ($gatway == "paypal")
                            <!-- <a href="{{{url('paypal/ec-checkout')}}}">
                                                <i class="fa fa-paypal"></i>
                                                <span><em>{{ trans('lang.pay_amount_via') }}</em> {{ Helper::getPaymentMethodList($gatway)['title']}} {{ trans('lang.pay_gateway') }}</span>
                                            </a> -->
                            @elseif ($gatway == "stripe")
                            <a href="javascrip:void(0);" v-on:click.prevent="getStriprForm">
                                <i class="fab fa-stripe-s"></i>
                                <span><em>{{ trans('lang.pay_amount_via') }}</em> {{ Helper::getPaymentMethodList($gatway)['title']}} {{ trans('lang.pay_gateway') }}</span>
                            </a>
                            @endif
                        </li>
                        @endforeach
                    </ul>
                </div>
                @endif
            </div>
            <b-modal size="lg" ref="myModalRef" hide-footer class="la-pay-stripe" :no-close-on-backdrop="true">
                <template v-slot:modal-title>
                    <span>Pay 50 % Of full amount </span>
                </template>
                <div class="d-block text-center">
                    <form class="wt-formtheme wt-form-paycard" method="POST" id="stripe-payment-form" role="form" action="{{ route ('service.payment', ['id'=>$service->id, 'id2'=>$freelancer->id]) }}">
                        {{ csrf_field() }}
                        <fieldset>
                            <div class="form-row">
                                <div class="form-group">
                                    <p>
                                        <b>Bkash Personal Number</b> : {{ $number[0]['stripe_secret'] }} 
                                    </p>
                                    <p>
                                        <b> Bkash Agent Number</b> :  {{ $number[0]['stripe_key'] }}  
                                    </p>
                                </div>
                                <div class="form-group col-lg-6 {{ $errors->has('phone') ? ' has-error' : '' }}">
                                    <label>{{ trans('lang.phone') }}</label>
                                    <input id="phone" type="text" class="form-control" name="phone" value="{{ old('phone') }}" placeholder="Bkash Number" required autofocus>
                                    @if ($errors->has('phone'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('phone') }}</strong>
                                    </span>
                                    @endif
                                </div>

                                <div class="form-group wt-inputwithicon {{ $errors->has('card_no') ? ' has-error' : '' }}">
                                    <img src="{{!empty($stripe_img) ? asset('uploads/settings/payment/'.$stripe_img) : ''}}">
                                </div>

                                <div class="form-group {{ $errors->has('transaction_id') ? ' has-error' : '' }}">
                                    <label>Transaction ID</label>
                                    <input type="text" class="form-control" name="transaction_id" value="{{ old('transaction_id') }}" required placeholder="Bkash Transaction ID" autofocus>
                                    @if ($errors->has('transaction_id'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('transaction_id') }}</strong>
                                    </span>
                                    @endif
                                </div>


                                <div class="form-group wt-btnarea">
                                    <input type="submit" name="button" class="wt-btn" value="Pay {{ $service->price / 2 }}">
                                </div>
                        </fieldset>
                    </form>
                </div>
            </b-modal>
        </div>
    </div>
</section>
@endsection