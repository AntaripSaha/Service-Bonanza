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
                <div class="wt-dashboardbox wt-submitorder">
                @if (Session::has('message'))
                    <div class="flash_msg">
                        <flash_messages :message_class="'success'" :time ='5' :message="'{{{ Session::get('message') }}}'" v-cloak></flash_messages>
                    </div>
                    @php session()->forget('message') @endphp;
                @elseif (Session::has('error'))
                    <div class="flash_msg">
                        <flash_messages :message_class="'danger'" :time ='5' :message="'{{{ str_replace("'s", " ", Session::get('error')) }}}'" v-cloak></flash_messages>
                    </div>
                    @php session()->forget('error') @endphp
                @endif
                <div class="sj-checkoutjournal">
                    <div class="sj-title">
                        <h3>{{{trans('lang.checkout')}}}</h3>
                    </div>
                    @php
                        $options = unserialize($package->options);
                        $banner = $options['banner_option'] = 1 ? 'ti-check' : 'ti-na';
                        $chat = $options['private_chat'] = 1 ? 'ti-check' : 'ti-na';
                        session()->put(['product_id' => e($package->id)]);
                        session()->put(['product_title' => e($package->title)]);
                        session()->put(['product_price' => e($package->cost)]);
                        session()->put(['type' => 'package']);
                    @endphp
                    <table class="sj-checkouttable">
                        <thead>
                            <tr>
                                <th>{{ trans('lang.item_title') }}</th>
                            <th>{{trans('lang.details')}}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="sj-producttitle">
                                        <div class="sj-checkpaydetails">
                                            <h4>{{{$package->title}}}</h4>
                                            <span>{{{$package->subtitle}}}</span>
                                        </div>
                                    </div>
                                </td>
                                <td>{{ !empty($symbol['symbol']) ? $symbol['symbol'] : '$' }}{{{$package->cost}}}</td>
                            </tr>
                            <tr>
                                <td>{{ trans('lang.duration') }}</td>
                                <td>{{{Helper::getPackageDurationList($options['duration'])}}}</td>
                            </tr>
                            <tr>
                                <td>{{ trans('lang.total') }}</td>
                                <td>{{ !empty($symbol['symbol']) ? $symbol['symbol'] : '$' }}{{{$package->cost}}}</td>
                            </tr>
                            @if ($mode == 'false')
                                <tr>
                                    <td>{{ trans('lang.status') }}</td>
                                    <td>{{ trans('lang.pending') }}</td>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
                <div>
                </div>
                    @if ($mode == 'true' && !empty($payment_gateway))
                        <div class="sj-checkpaymentmethod">
                            <div class="sj-title">
                                <h3>{{ trans('lang.select_pay_method') }}</h3>
                            </div>
                            <ul class="sj-paymentmethod">
                                @foreach ($payment_gateway as $gatway)
                                    <li>
                                        @if($gatway == "stripe")
                                            <a href="javascrip:void(0);" v-on:click.prevent="getStriprForm">
                                                <i class="fab fa fa-bold"></i>
                                                <!-- <span><em>{{ trans('lang.pay_amount_via') }}</em> {{ Helper::getPaymentMethodList($gatway)['title']}} {{ trans('lang.pay_gateway') }}</span> -->
                                                <span><em>{{ trans('lang.pay_amount_via') }}</em> {{ Helper::getPaymentMethodList($gatway)['title']}} {{ trans('lang.pay_gateway') }}</span>
                                            </a>
                                        @endif
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    @else
                        <div class="sj-checkpaymentmethod">
                            <div class="form-group wt-btnarea">
                                <a class="wt-btn" href="javascript:;" v-on:click.prevent="generateOrder('{{$package->id}}')">
                                    {{ trans('lang.pay_order')}} 
                                </a>
                            </div>
                        </div>
                    @endif
                    
                </div>
                <b-modal size="lg" ref="myModalRef" hide-footer class="la-pay-stripe" :no-close-on-backdrop="true">
                    <template v-slot:modal-title>
                        {{ trans('lang.stripe_payment')}} 
                        <span>{{ trans('lang.stripe_form_note')}}  </span>
                    </template>
                    
                    <div class="d-block text-center">
                        <form class="wt-formtheme wt-form-paycard" method="POST" action="{{ route('user.package.make.payment',$package->id) }}">
                            {{ csrf_field() }}
                            <fieldset>
                                <div class="form-row">
                                    <div class="form-group">
                                        <p>
                                            <b>Bkash Personal Number</b> : {{ $number[0]['stripe_secret'] }} 
                                        </p>
                                        <p>
                                            <b> Bkash Agent Number</b> : {{ $number[0]['stripe_key'] }}  
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
                                </div>

                                <div class="form-group wt-inputwithicon {{ $errors->has('card_no') ? ' has-error' : '' }}">
                                    <img src="{{!empty($stripe_img) ? asset('uploads/settings/payment/'.$stripe_img) : ''}}">
                                </div>
                                <div class="form-group {{ $errors->has('transaction_id') ? ' has-error' : '' }}">
                                    <label>Transaction ID</label>
                                    <input type="text" class="form-control" name="transaction_id" value="{{ old('transaction_id') }}" required  placeholder="Bkash Transaction ID" autofocus>
                                    @if ($errors->has('transaction_id'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('transaction_id') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                
                                <div class="form-group wt-btnarea">
                                    <input type="submit" name="button" class="wt-btn" value="Pay {{ !empty($symbol['symbol']) ? $symbol['symbol'] : '$' }}{{$package->cost}}">
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </b-modal>
            </div>
        </div>
    </section>
@endsection
