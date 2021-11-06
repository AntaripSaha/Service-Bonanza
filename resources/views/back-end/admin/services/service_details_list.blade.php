@extends(file_exists(resource_path('views/extend/back-end/master.blade.php')) ? 'extend.back-end.master' : 'back-end.master')
@section('content')
	<div class="wt-haslayout wt-dbsectionspace la-manage-jobs-holder">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 float-right" id="services">
				<div class="preloader-section" v-if="loading" v-cloak>
					<div class="preloader-holder">
						<div class="loader"></div>
					</div>
				</div>
				<div class="wt-dashboardbox wt-dashboardservcies">
					<div class="wt-dashboardboxtitle wt-titlewithsearch">
						<h2>Service Users List</h2>
					</div>
					<div class="wt-dashboardboxcontent wt-categoriescontentholder">
						@if ($service_users->count() > 0)
							<table class="wt-tablecategories wt-tableservice">
								<thead>
									<tr>
										<th>{{ trans('lang.service_title') }}</th>
										<th>{{ trans('lang.service_status') }}</th>
										<th>Buyer Information</th>
										<th>{{ trans('lang.action') }}</th>
									</tr>
								</thead>
								<tbody>
                                    @foreach( $service_users as $service_user )
									@if( $service_user->user_id != $service_user->seller_id )
                                    <tr>
                                        <td>
                                            {{ $service->title }}
                                        </td>
                                        <td>
                                            {{ $service_user->status }}
                                        </td>
                                        <td>
                                            <p>
                                                {{ $service_user->profile->first_name }} {{ $service_user->profile->last_name }}
                                            </p>
                                        </td>
                                        <td>
                                            <a href="{{ route('admin.service.details',$service_user->id) }}">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </td>
                                    </tr>
									@endif
                                    @endforeach
								</tbody>
							</table>
						@else
							@if (file_exists(resource_path('views/extend/errors/no-record.blade.php'))) 
								@include('extend.errors.no-record')
							@else 
								@include('errors.no-record')
							@endif
						@endif
						@if ( method_exists($service_users,'links') ) {{ $service_users->links('pagination.custom') }} @endif
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection
