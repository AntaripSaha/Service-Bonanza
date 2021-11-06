@extends(file_exists(resource_path('views/extend/front-end/master.blade.php')) ? 'extend.front-end.master' :
          'front-end.master')

          @section('content')
          
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
                                      <form method="POST" class="wt-formtheme wt-formregister"
                                          action="{{ route('otp.verify',$phone) }}">
                                          @csrf
                                          <fieldset class="wt-registerformgroup">
                                              <div class="wt-haslayout" v-if="step === 1" v-cloak>
                                                  <div class="wt-registerhead">
                                                      <div class="wt-title">
                                                          <h3>OTP Verification</h3>
                                                          <input type="hidden" name="role" value="{{ $role }}">
                                                      </div>
                                                  </div>

                                                  <!-- code -->
                                                  <div class="form-group">
                                                      <input type="number" name="code" class="form-control"
                                                          placeholder="Enter 6 Digit Code" required>
                                                      <span class="help-block" v-if="form_step1.first_name_error">
                                                          <strong v-cloak>@{{form_step1.first_name_error}}</strong>
                                                      </span>
                                                  </div>

                                              </div>
                                          </fieldset>
                                          
                                            <fieldset class="wt-termsconditions">
                                              <div class="wt-checkboxholder">
                                                  <button type="submit" class="wt-btn">Verify</button>
                                              </div>
                                          </fieldset>
                                          {{-- </div> --}}
                                      </form>
                                  </div>
                              </div>
                              <div class="wt-registerformfooter">
                                  <span>{{{ trans('lang.have_account') }}}<a id="wt-lg" href="javascript:void(0);"
                                          @click.prevent='scrollTop()'>{{{ trans('lang.btn_login_now') }}}</a></span>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

              @endsection