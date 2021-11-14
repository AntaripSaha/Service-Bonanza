          @extends(file_exists(resource_path('views/extend/front-end/master.blade.php')) ? 'extend.front-end.master' :
          'front-end.master')
          @section('content')
          @php
          $employees = Helper::getEmployeesList();
          $departments = App\Department::all();
          $locations = App\Location::select('title', 'id')->get()->pluck('title', 'id')->toArray();
          $roles = Spatie\Permission\Models\Role::all()->toArray();
          $register_form = App\SiteManagement::getMetaValue('reg_form_settings');
          $reg_one_title = !empty($register_form) && !empty($register_form[0]['step1-title']) ?
          $register_form[0]['step1-title'] : trans('lang.join_for_good');
          $reg_one_subtitle = !empty($register_form) && !empty($register_form[0]['step1-subtitle']) ?
          $register_form[0]['step1-subtitle'] : trans('lang.join_for_good_reason');
          $reg_two_title = !empty($register_form) && !empty($register_form[0]['step2-title']) ?
          $register_form[0]['step2-title'] : trans('lang.pro_info');
          $reg_two_subtitle = !empty($register_form) && !empty($register_form[0]['step2-subtitle']) ?
          $register_form[0]['step2-subtitle'] : '';
          $term_note = !empty($register_form) && !empty($register_form[0]['step2-term-note']) ?
          $register_form[0]['step2-term-note'] : trans('lang.agree_terms');
          $reg_three_title = !empty($register_form) && !empty($register_form[0]['step3-title']) ?
          $register_form[0]['step3-title'] : trans('lang.almost_there');
          $reg_three_subtitle = !empty($register_form) && !empty($register_form[0]['step3-subtitle']) ?
          $register_form[0]['step3-subtitle'] : trans('lang.acc_almost_created_note');
          $register_image = !empty($register_form) && !empty($register_form[0]['register_image']) ?
          '/uploads/settings/home/'.$register_form[0]['register_image'] : 'images/work.jpg';
          $reg_page = !empty($register_form) && !empty($register_form[0]['step3-page']) ?
          $register_form[0]['step3-page'] : '';
          $reg_four_title = !empty($register_form) && !empty($register_form[0]['step4-title']) ?
          $register_form[0]['step4-title'] : trans('lang.congrats');
          $reg_four_subtitle = !empty($register_form) && !empty($register_form[0]['step4-subtitle']) ?
          $register_form[0]['step4-subtitle'] : trans('lang.acc_creation_note');
          $show_emplyr_inn_sec = !empty($register_form) && !empty($register_form[0]['show_emplyr_inn_sec']) ?
          $register_form[0]['show_emplyr_inn_sec'] : 'true';
          $show_reg_form_banner = !empty($register_form) && !empty($register_form[0]['show_reg_form_banner']) ?
          $register_form[0]['show_reg_form_banner'] : 'true';
          $reg_form_banner = !empty($register_form) && !empty($register_form[0]['reg_form_banner']) ?
          $register_form[0]['reg_form_banner'] : null;
          $selected_registration_type = !empty($register_form) && !empty($register_form[0]['registration_type']) ?
          $register_form[0]['registration_type'] : 'multiple';
          $breadcrumbs_settings = \App\SiteManagement::getMetaValue('show_breadcrumb');
          $show_breadcrumbs = !empty($breadcrumbs_settings) ? $breadcrumbs_settings : 'true';
          @endphp
          @php $breadcrumbs = Breadcrumbs::generate('registerPage'); @endphp
          @if (file_exists(resource_path('views/extend/front-end/includes/inner-banner.blade.php')))
          @include('extend.front-end.includes.inner-banner',
          ['title' => trans('lang.join_for_free'), 'inner_banner' => $reg_form_banner, 'path' =>
          'uploads/settings/home/', 'show_banner' => $show_reg_form_banner ]
          )
          @else
          @include('front-end.includes.inner-banner',
          ['title' => trans('lang.join_for_free'), 'inner_banner' => $reg_form_banner, 'path' =>
          'uploads/settings/home/', 'show_banner' => $show_reg_form_banner ]
          )
          @endif
          <div class="wt-haslayout wt-main-section">
              <div class="container">
                  <div class="row justify-content-md-center">
                      <div class="col-xs-12 col-sm-12 col-md-10 push-md-1 col-lg-8 push-lg-2" id="registration">
                          <div class="preloader-section" v-if="loading" v-cloak>
                              <div class="preloader-holder">
                                  <div class="loader"></div>
                              </div>
                          </div>
                          <div class="wt-registerformhold">
                              <div class="wt-registerformmain">
                                  <div class="wt-joinforms">
                                      @if ($errors->any())
                                      <div class="alert alert-danger">
                                          <ul>
                                              @foreach ($errors->all() as $error)
                                              <li>{{ $error }}</li>
                                              @endforeach
                                          </ul>
                                      </div>
                                      @endif
                                      <form method="POST" class="wt-formtheme wt-formregister" action="{{ route('do.register') }}">
                                          @csrf
                                          <fieldset class="wt-registerformgroup">
                                              <div class="wt-haslayout" v-if="step === 1" v-cloak>
                                                  <div class="wt-registerhead">
                                                      <div class="wt-title">
                                                          <h3>{{{ $reg_one_title }}}</h3>
                                                      </div>
                                                      <div class="wt-description">
                                                          <p>{{{ $reg_one_subtitle }}}</p>
                                                      </div>
                                                  </div>

                                                  <!-- first name -->
                                                  <div class="form-group form-group-half">
                                                      <input type="text" name="first_name" class="form-control" placeholder="{{{ trans('lang.ph_first_name') }}}" v-bind:class="{ 'is-invalid': form_step1.is_first_name_error }" v-model="first_name">
                                                      <span class="help-block" v-if="form_step1.first_name_error">
                                                          <strong v-cloak>@{{form_step1.first_name_error}}</strong>
                                                      </span>
                                                  </div>

                                                  <!-- last name -->
                                                  <div class="form-group form-group-half">
                                                      <input type="text" name="last_name" class="form-control" placeholder="{{{ trans('lang.ph_last_name') }}}" v-bind:class="{ 'is-invalid': form_step1.is_last_name_error }" v-model="last_name">
                                                      <span class="help-block" v-if="form_step1.last_name_error">
                                                          <strong v-cloak>@{{form_step1.last_name_error}}</strong>
                                                      </span>
                                                  </div>

                                                  <!-- email -->
                                                  <div class="form-group">
                                                      <input id="user_email" type="email" class="form-control" name="email" placeholder="{{{ trans('lang.ph_email') }}}" value="{{ old('email') }}" v-bind:class="{ 'is-invalid': form_step1.is_email_error }" v-model="user_email">
                                                      <span class="help-block" v-if="form_step1.email_error">
                                                          <strong v-cloak>@{{form_step1.email_error}}</strong>
                                                      </span>
                                                  </div>

                                                  <!-- phone -->
                                                  <div class="form-group">
                                                      <input type="text" name="phone" class="form-control" placeholder="01*********">
                                                      <span class="help-block" v-if="form_step1.phone_error">
                                                          <strong v-cloak>@{{form_step1.phone_error}}</strong>
                                                      </span>
                                                  </div>


                                              </div>
                                          </fieldset>
                                          {{-- <div class="wt-haslayout"> --}}
                                          <fieldset class="wt-registerformgroup">
                                              @if (!empty($locations))
                                              <div class="form-group">
                                                  <span class="wt-select">
                                                      <select name="locations" class="form-select" aria-label="Default select example">
                                                          <option selected>Select Location</option>
                                                          @foreach ($location as $location){
                                                          <option value="{{$location->id}}">{{$location->title}}
                                                          </option>
                                                          }
                                                          @endforeach
                                                      </select>
                                                      <span class="help-block" v-if="form_step2.locations_error">
                                                          <strong v-cloak>@{{form_step2.locations_error}}</strong>
                                                      </span>
                                                  </span>
                                              </div>
                                              @endif
                                              <div class="form-group form-group-half">
                                                  <input id="password" type="password" class="form-control" name="password" placeholder="{{{ trans('lang.ph_pass') }}}" v-bind:class="{ 'is-invalid': form_step2.is_password_error }">
                                                  <span class="help-block" v-if="form_step2.password_error">
                                                      <strong v-cloak>@{{form_step2.password_error}}</strong>
                                                  </span>
                                              </div>
                                              <div class="form-group form-group-half">
                                                  <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="{{{ trans('lang.ph_retry_pass') }}}" v-bind:class="{ 'is-invalid': form_step2.is_password_confirm_error }">
                                                  <span class="help-block" v-if="form_step2.password_confirm_error">
                                                      <strong v-cloak>@{{form_step2.password_confirm_error}}</strong>
                                                  </span>
                                                  <input type="hidden" value="{{ request()->route('name') }}" name="role">
                                              </div>
                                          </fieldset>
                                          <!-- <fieldset class="wt-formregisterstart" style="datahidde=true">
                                                <div class="wt-title wt-formtitle">
                                                    <h4>{{{ trans('lang.start_as') }}} </h4>
                                                </div>

                                                {{request()->route('name')}}
                                                @if(!empty($roles))
                                                <ul class="wt-accordionhold wt-formaccordionhold accordion">
                                                    @foreach ($roles as $key => $role)
                                                    @if (!in_array($role['id'] == 1, $roles))
                                                    <li v-bind:class="{ 'role-is-invalid': form_step2.is_role_error }">
                                                        <div class="wt-accordiontitle" id="headingOne" data-toggle="collapse" data-target="#collapseOne">
                                                            <span class="wt-radio">
                                                                <input type="radio" name="role" value="{{{ $role['role_type'] }}}" @if( $role['role_type'] == request()->route('name' ) ) checked @endif v-model="user_role" v-on:change="selectedRole(user_role)">
                                                                <label for="wt-company-{{$key}}">
                                                                    {{ $role['name'] === 'freelancer' ? trans('lang.freelancer') : trans('lang.employer')}}
                                                                </label>
                                                                {{ request()->route('name' ) }} {{ $role['role_type'] }}
                                                            </span>
                                                        </div>
                                                    </li>
                                                    @endif
                                                    @endforeach
                                                </ul>
                                                <span class="help-block" v-if="form_step2.role_error">
                                                    <strong v-cloak>@{{form_step2.role_error}}</strong>
                                                </span>
                                                @endif
                                            </fieldset> -->
                                          <fieldset class="wt-termsconditions">
                                              <div class="wt-checkboxholder">
                                                  <span class="wt-checkbox">
                                                      <input id="termsconditions" type="checkbox" name="termsconditions" checked="">
                                                      <label for="termsconditions"><span>{{{ $term_note }}}</span></label>
                                                      <span class="help-block" v-if="form_step2.termsconditions_error">
                                                          <strong style="color: red;" v-cloak>{{trans('lang.register_termsconditions_error')}}</strong>
                                                      </span>
                                                  </span>
                                                  <button type="submit" class="wt-btn">{{{ trans('lang.submit') }}}</button>
                                              </div>
                                          </fieldset>
                                          {{-- </div> --}}
                                      </form>
                                  </div>
                              </div>
                              <div class="wt-registerformfooter">
                                  <span>{{{ trans('lang.have_account') }}}<a id="wt-lg" href="javascript:void(0);" @click.prevent='scrollTop()'>{{{ trans('lang.btn_login_now') }}}</a></span>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

              @endsection