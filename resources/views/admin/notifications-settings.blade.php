<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Notification Settings</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="{{url('public/admin/assets/img/logo-approved.png')}}" type="image/x-icon"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Signika:wght@300;400;500;600;700&display=swap" rel="stylesheet">

	<!-- Fonts and icons -->
	<script src="{{url('public/admin/assets/js/plugin/webfont/webfont.min.js')}}"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['../public/admin/assets/css/fonts.min.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>

	<!-- CSS Files -->
	<link rel="stylesheet" href="{{url('public/admin/assets/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{url('public/admin/assets/css/atlantis.min.css')}}">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="{{url('public/admin/assets/css/custom.css')}}">
	<style>
		body {
			background: #fff !important;
		}

		#basic-datatables_length {
			display: none;
		}
		.page-item.active .page-link {
			background-color: #193358;
			border-color: #193358;
		}
		.page-item.active .page-link:hover {
			color: #fff !important
		}
		div.dataTables_wrapper div.dataTables_filter input {
			font-size: 14px !important;
			border-radius: 0px !important;
			margin-bottom: 14px;
			padding: 3px 10px !important;
			border: 0 !important;
			background: #EBEBEB !important;
			font-family: 'Signika', sans-serif;
			font-weight: 700;
			font-size: 20px !important;
			color: #676767 !important;
			background-color: #EBEBEB !important;
		}
		
		.venue_inputs input[type="date"]::-webkit-calendar-picker-indicator {
    /*content: url(../images/calender_icon.png);*/
    opacity: 0;
    width: 100%;
    position: absolute;
    right: 15px;
    top: 50px;
    background-position: right;
    cursor: pointer;
} 

#validationModel .modal-header {
		    background-color: #5f5f5f;
		    color: #fff;
		    justify-content: center;
		}

		#validationModel .modal-body {
			text-align: center;
		}

		#validationModel .modal-body p {
			margin-bottom: 0rem;
		}
		#successModel .modal-title{
		    text-align: center;
		    width: 100%;
		    font-size: 20px;
		    font-weight: 600;
		}
		#successModel .modal-header {
		    background-color: #5f5f5f;
		    color: #fff;
		    justify-content: center;
		}

		#successModel .modal-body {
			text-align: center;
		}

		#successModel .modal-body p {
			margin-bottom: 0rem;
		}

		#confirmationmodel .modal-title{
		    text-align: center;
		    width: 100%;
		    font-size: 20px;
		    font-weight: 600;
		}
		#confirmationmodel .modal-header {
		    background-color: #5f5f5f;
		    color: #fff;
		    justify-content: center;
		}

		#confirmationmodel .modal-body {
			text-align: center;
		}

		#confirmationmodel .modal-body p {
			margin-bottom: 0rem;
		}
		div#loaderImg2 {
		    position: absolute;
		    left: 0;
		    right: 0;
		    text-align: center;
		    margin-top: 250px;
		}
		img.upload_icon {
		    position: absolute;
		    width: 30px;
		    top: 335px;
		    right: 132px;
		    cursor: pointer;
		}
	</style>
</head>
<body class="my_body">
	<header class="curve-bg">
		<div class="container-fluid">
			<div class="curve-bg1">
				<nav class="navbar navbar-expand-lg">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div class="row w-100">
							<div class="col-md-5 col-sm-12">
								<ul class="navbar-nav">
									<li class="nav-item">
										<a class="nav-link hover_color" href="{{route('admin.adminTabs')}}" style="padding-right: 0">Admin Portal</a>
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>Notification Settings</a>
									</li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-12 text-center">
								<ul class="" style="padding-left: 25px;">
										<a class="nav-link" href="{{route('admin.adminTabs')}}">
											<img src="{{url('public/admin/assets/img/logo-approved.png')}}" style="width: 100px;" alt="logo-approved"/>
										</a>
								</ul>
							</div>
							<div class="col-md-5 text-right pr-0">
								<ul class="navbar-nav">
									<li class="nav-item">
										<a class="nav-link" href="#">User: {{auth()->guard('admin')->user()->name}}</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="{{route('admin.adminTabs')}}" style="color: #FFDA7A;">
											{{auth()->guard('admin')->user()->role_type}}
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="{{route('admin.logout')}}" style="color: #FFDA7A;">
											logout
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<section class="mt-3 mb-5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-5">
					<div class="app_notification_bg" style="background-color: #f7f7f7; padding-bottom: 113px;">
						<h4>App Notification</h4>
						<!-- <div class="d-flex justify-content-between"> -->
							<div class="row">
								<div class="col-md-4 pr-0">
									<div class="d-flex mt-3">
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="1">
												<div class="checkbox-text" data-name="push" uniq-id="1">Push</div>
												<input type="checkbox" data-name="push" uniq-id="1">
												<span class="checkmark" data-name="push" uniq-id="1"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="1">
												<div class="checkbox-text" data-name="sms" uniq-id="1">SMS</div>
												<input type="checkbox" data-name="sms" uniq-id="1">
												<span class="checkmark" data-name="sms" uniq-id="1"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes" uniq-id="1">
												<div class="checkbox-text" data-name="email" uniq-id="1">Email</div>
												<input type="checkbox" data-name="email" uniq-id="1">
												<span class="checkmark" data-name="email" uniq-id="1"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes" uniq-id="1">
										<div class="checkbox-text">Transaction Notification to customer (Automatic - Instant)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea maxlength="999" class="form-control notify_message" uniq-id="1" style="font-size: 14px !important; width: 94%;   font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" rows="2" placeholder="Transaction Notification Message"></textarea> <!-- Thank you for dinein with us. Clickable Link -->
											</div>
											<a href="javascript:void(0);" uniq-id="1" data-name="transaction" class="btn btn-primary btn-user btn-block common_btn common_btn_app_notify" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-4 pr-0">
									<div class="d-flex mt-3">
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="2">
												<div class="checkbox-text" data-name="push" uniq-id="2">Push</div>
												<input type="checkbox" data-name="push" uniq-id="2">
												<span class="checkmark" data-name="push" uniq-id="2"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="2">
												<div class="checkbox-text" data-name="sms" uniq-id="2">SMS</div>
												<input type="checkbox" data-name="sms" uniq-id="2">
												<span class="checkmark" data-name="sms" uniq-id="2"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes" uniq-id="2">
												<div class="checkbox-text" data-name="email" uniq-id="2">Email</div>
												<input type="checkbox" data-name="email" uniq-id="2">
												<span class="checkmark" data-name="email" uniq-id="2"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes" uniq-id="2">
										<div class="checkbox-text">Cash Back Notification to customer (Automatic - After Verifying Transaction)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea maxlength="999" class="form-control  notify_message" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" uniq-id="2" rows="2" placeholder="Cashback Notification Message"></textarea>
											</div>
											<a href="javascript:void(0);" uniq-id="2" data-name="cashback"  class="btn btn-primary btn-user btn-block common_btn common_btn_app_notify" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-4 pr-0">
									<div class="d-flex mt-3">
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="3">
												<div class="checkbox-text" data-name="push" uniq-id="3">Push</div>
												<input type="checkbox" data-name="push" uniq-id="3">
												<span class="checkmark" data-name="push" uniq-id="3"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="3">
												<div class="checkbox-text" data-name="sms" uniq-id="3">SMS</div>
												<input type="checkbox" data-name="sms" uniq-id="3">
												<span class="checkmark" data-name="sms" uniq-id="3"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes" uniq-id="3">
												<div class="checkbox-text" data-name="email" uniq-id="3">Email</div>
												<input type="checkbox" data-name="email" uniq-id="3">
												<span class="checkmark" data-name="email" uniq-id="3"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes" uniq-id="3">
										<div class="checkbox-text">Welcome Bonus Notification to customer (Automatic Successful Signup)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea maxlength="999" class="form-control  notify_message" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" uniq-id="3" rows="2" placeholder="Welcome Bonus Message"></textarea>
											</div>
											<a href="javascript:void(0);"  uniq-id="3" data-name="welcome bonus" class="btn btn-primary btn-user btn-block common_btn common_btn_app_notify" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-4 pr-0">
									<div class="d-flex mt-3">
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="4">
												<div class="checkbox-text" data-name="push" uniq-id="4">Push</div>
												<input type="checkbox" data-name="push" uniq-id="4">
												<span class="checkmark"  data-name="push" uniq-id="4"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="4">
												<div class="checkbox-text" data-name="sms" uniq-id="4">SMS</div>
												<input type="checkbox" data-name="sms" uniq-id="4">
												<span class="checkmark"  data-name="sms" uniq-id="4"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes" uniq-id="4">
												<div class="checkbox-text" data-name="email" uniq-id="4">Email</div>
												<input type="checkbox" data-name="email" uniq-id="4">
												<span class="checkmark"  data-name="email" uniq-id="4"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes" uniq-id="4">
										<div class="checkbox-text">Referral Bonus Notification to customer (Automatic - Referral Successful First Transaction)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea maxlength="999" class="form-control  notify_message" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" uniq-id="4" rows="2" placeholder="Referral Bonus Message"></textarea>
											</div>
											<a href="javascript:void(0);" uniq-id="4" data-name="referral bonus" class="btn btn-primary btn-user btn-block common_btn common_btn_app_notify" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-4 pr-0">
									<div class="d-flex mt-3">
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="5">
												<div class="checkbox-text" data-name="push" uniq-id="5">Push</div>
												<input type="checkbox" data-name="push" uniq-id="5">
												<span class="checkmark"  data-name="push" uniq-id="5"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="5">
												<div class="checkbox-text" data-name="sms" uniq-id="5">SMS</div>
												<input type="checkbox" data-name="sms" uniq-id="5">
												<span class="checkmark"  data-name="sms" uniq-id="5"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes" uniq-id="5">
												<div class="checkbox-text" data-name="email" uniq-id="5">Email</div>
												<input type="checkbox" data-name="email" uniq-id="5">
												<span class="checkmark"  data-name="email" uniq-id="5"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes" uniq-id="5">
										<div class="checkbox-text">Event Notification To Customer (Automatic - When Events Are Happening)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea maxlength="999" class="form-control  notify_message" uniq-id="5" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" uniq-id="5" rows="2" placeholder="Event Notification Message"></textarea>
											</div>
											<a href="javascript:void(0);" uniq-id="5" data-name="event"  class="btn btn-primary btn-user btn-block common_btn common_btn_app_notify" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-4 pr-0">
									<div class="d-flex mt-3">
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="6">
												<div class="checkbox-text"  data-name="push" uniq-id="6">Push</div>
												<input type="checkbox" data-name="push" uniq-id="6">
												<span class="checkmark"  data-name="push" uniq-id="6"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes" uniq-id="6">
												<div class="checkbox-text"  data-name="sms" uniq-id="6">SMS</div>
												<input type="checkbox" data-name="sms" uniq-id="6">
												<span class="checkmark"  data-name="sms" uniq-id="6"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes" uniq-id="6">
												<div class="checkbox-text"  data-name="email" uniq-id="6">Email</div>
												<input type="checkbox" data-name="email" uniq-id="6">
												<span class="checkmark"  data-name="email" uniq-id="6"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes" uniq-id="6">
										<div class="checkbox-text">Customer Specific Notification To Customer (Automatic - When Customer Offers Are Assigned)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea maxlength="999" uniq-id="6" class="form-control notify_message" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" uniq-id="6" rows="2" placeholder="Customer Specific Notification"></textarea>
											</div>
											<a href="javascript:void(0);" uniq-id="6" data-name="specific"  class="btn btn-primary btn-user btn-block common_btn common_btn_app_notify" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
						<!-- </div> -->
						<!-- <div class="d-flex justify-content-between">
							<div class="d-flex mt-3">
								<div class="mr-3">
									<label class="app_checkboxes">
										<div class="checkbox-text">Push</div>
										<input type="checkbox" checked="checked">
										<span class="checkmark"></span>
									</label>
								</div>
								<div class="mr-3">
									<label class="app_checkboxes">
										<div class="checkbox-text">SMS</div>
										<input type="checkbox" checked="checked">
										<span class="checkmark"></span>
									</label>
								</div>
								<div class="mr-3">
									<label class="app_checkboxes">
										<div class="checkbox-text">Email</div>
										<input type="checkbox" checked="checked">
										<span class="checkmark"></span>
									</label>
								</div>
							</div>
							<div class="app_checkboxes">
								<div class="checkbox-text">Transaction Notification to customer (Automatic - Instant)</div>
								<div class="d-flex justify-content-between mt-2">
									<div class="venue_inputs">
										<textarea class="form-control" style="font-size: 14px !important; width: 109%" name="" id="" rows="2" placeholder="Event Description">Thank you for dinein with us. Clickable Link</textarea>
									</div>
									<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 138px; padding-top: 12px;">
	                      				Save
	                    			</a>
								</div>
							</div>
						</div> -->
					</div>
				</div>
				<div class="col-md-3 p-0">
					<div class="app_notification_bg" style="background-color: #f7f7f7; padding-bottom: 147px;">
						<h4>Select the Criteria</h4>
						<div class="row pr-5 pl-3 select_area">
							<div class="col-md-9 venue_inputs p-0">
								<label>
									Gender
								</label>
								<select class="form-control form-group select_option select_gender" style="padding: .6rem 1rem; position: relative; cursor: pointer;" id="exampleFormControlSelect1">
									<option value="">Select Gender</option>
									<option value="All">All</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
									<option value="Other"> Other </option>
								</select>
							</div>
						</div>
						<div class="row pr-5 pl-3 select_area mt-2">
							<div class="col-md-9 venue_inputs p-0">
								<label>
									City of Residence
								</label>
								<select class="form-control form-group select_option select_city" style="padding: .6rem 1rem; position: relative; cursor: pointer;" id="exampleFormControlSelect1">
									<option value="">Select Residence</option>
									@if(count($city) > 0)
										@foreach($city as $valu)
											<option value="{{ $valu->id }}" data-name="{{ $valu->city_name }}">{{ $valu->city_name }}</option>
										@endforeach
									@endif
								</select>
							</div>
						</div>
						<div class="row pr-5 pl-3 select_area mt-2">
							<div class="col-md-11 venue_inputs p-0">
								<label>
									Nationality
								</label>
								<select class="form-control form-group select_option select_national" style="padding: .6rem 1rem; cursor: pointer;  position: relative;" id="exampleFormControlSelect1">
									<option value="">Select Nationality</option>
									@if(count($country) > 0)
										@foreach($country as $valu)
											<option value="{{ $valu->name }}">{{ $valu->name }}</option>
										@endforeach
									@endif
									<!-- <option value="Afghanistan">Afghanistan</option>
									<option value="IN">IN</option>
									<option value="UAE">UAE</option>
									<option value="USA">USA</option> -->
									<!-- <option> Multiple Selection </option> -->
								</select>
							</div>
						</div>
						<div class="row pr-3 pl-3 select_area mt-2">
							<div class="col-md-6 venue_inputs pl-0">
								<label>
									Transaction Start Period
								</label>
								<input type="date" class="form-control form-control-user txn-from-date" placeholder="From Date" value="" style="font-size: 14px !important;    padding: .6rem 1rem; border-radius: 10px;" />
							</div>
							
							<div class="col-md-6 venue_inputs p-0">
								<label style="width: 100px;">
									Transaction End Period
								</label>
								<input type="date" class="form-control form-control-user txn-end-date" placeholder="End Date" value="" style="font-size: 14px !important;    padding: .6rem 1rem; border-radius: 10px;" />
							</div>
						</div>
						<div class="row pr-4 select_area mt-2">
							<div class="col-md-6 venue_inputs">
								<label>
									Transaction Amount Condition
								</label>
								<select class="form-control form-group select_option txn-amount-condition" style="padding: .6rem 1rem; position: relative;font-size: 14px !important; padding-right: 32px !important;  cursor: pointer;    background-size: 12px!important;
    background-position: 91% 50%!important;" id="exampleFormControlSelect1">
									<option value="">Select Amount</option>
									<option value="Between"> Between</option>
									<option value="Greater Than"> Greater than </option>
								</select>
							</div>
							<div class="col-md-6 venue_inputs p-0">
								<label style="width: 100px;">
									Transaction Amount
								</label>
								<div class="d-flex">
									<input type="text" class="form-control form-control-user txn-from-price" placeholder="From Price" value="" maxlength="10" style="font-size: 14px !important; border-radius: 10px; margin-right: 12px;"/>
									<input type="text" class="form-control form-control-user txn-to-price" placeholder="To Price" value="" maxlength="10" style="font-size: 14px !important; border-radius: 10px;"/>
											
								</div>
							</div>
						</div>
						<div class="row  select_area mt-2" style="padding-top: 70px;">
							<div class="col-md-12 venue_inputs">
								<label>
									Message  Text
								</label>
								<textarea maxlength="999" class="form-control specific_criteria_message" style="font-size: 14px !important" name="" id="" rows="4" placeholder="Description"></textarea>
							</div>
						</div>
						<div class="d-flex justify-content-between mt-4">
							<div>
								<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block criteria_push_btn common_btn" msg-type="Push" style="    padding: 9px; font-size: 14px;">
	                      			PUSH APP NOTIFICATION
	                    		</a>
							</div>
							<div>
								<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block criteria_sms_btn common_btn" msg-type="Sms" style="    padding: 9px; font-size: 14px;">
	                      			PUSH SMS
	                    		</a>
							</div>
						</div>	
					</div>
				</div>
				<div class="col-md-4 p-0">
					<form method="POST" enctype="multipart/form-data" id="email_form">
					<div class="app_notification_bg" style="background-color: transparent;">
						<h4>Automatic Email</h4>
						<div class="d-flex">
							<div>
								<label class="app_checkboxes welcome_title_checkbox" uniq-id="7">
									<input type="checkbox" class="welcome_title_checkbox" uniq-id="7">
									<span class="checkmark welcome_title_checkbox" uniq-id="7" style="top: 48px"></span>
								</label>
							</div>
							<div class="venue_inputs" uniq-id="7" style="margin: 0 13px 0 35px;">
								<label>
									Welcome Email (Automatic At Successful Sign Up)
								</label>
								<input type="text" uniq-id="7" class="form-control form-control-user  welcome_title" placeholder="Welcome Title" name="title" maxlength="200" style="font-size: 14px !important; border-radius: 0px !important; margin-bottom: 14px;"/>
								<!-- Welcome to Capital Society | Start Earning Today -->
								<textarea maxlength="999" class="form-control welcome_message" style="font-size: 14px !important" name="welcome_message" uniq-id="7" id="" rows="5" placeholder="Welcome Message"></textarea>
								<!-- Dear People,

								Thank you and welcome our new loyalty program -->
							</div>
							<div style="margin-top: 44px;">
								<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn welcome_email_btn" uniq-id="7" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Save
			                    </a>
							</div>
						</div>
						<div class="d-flex mt-3">
							<div>
								<label class="app_checkboxes app_checkboxes_upload" uniq-id="7">
									<input type="checkbox" class="app_checkboxes_upload" uniq-id="7">
									<span class="checkmark" class="app_checkboxes_upload" uniq-id="7" style="top: 48px"></span>
								</label>
							</div>
							<div class="venue_inputs" style="margin: 0 13px 0 35px;">
								<label>
									Email Attachment (Attached To All Email Push)
								</label>
								@csrf
								<input type="text"  uniq-id="7" class="form-control form-control-user attachment_upload" placeholder="" readonly value="" name="attachment_upload"  style="font-size: 14px !important; border-radius: 0px !important; margin-bottom: 14px; cursor: pointer;"/>

								<label for="img_upload" uniq-id="7"><img src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer; display: none;"></label>
								<input type="file" uniq-id="7" name="img_upload" src="" id="img_upload" class="img_upload" hidden />
								<input type="text" uniq-id="7" src="" name="img_upload2" class="img_upload2" hidden />

								<!-- General Attachment.pdf / Any Document Format -->
							</div>
							<div style="margin-top: 44px;">
								<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block common_btn common_upload_btn" uniq-id="7" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Upload
			                    </a>
							</div>
						</div>
						
					</div>
					</form>
				</div>


				<div class="venue_inputs mt-5" style="width: 100%; position: relative;">
							<label style="margin-left: 19px; position: absolute;
    top: 24px;">
								Push Notification / SMS / Automatic Notification  History with (Message, Customer, Date, Time & User)
							</label>
							<div class="table-responsive mt-3">
								<table id="basic-datatables" class="display table table-striped table-hover" style="width: 100 !important;">
									<thead>
										<tr style="background-color: #193358;    color: #fff;">
											<th class="text-left">Message</th>
											<th class="text-left">Sent On</th>
											<th style="width: 67px;">Sent By</th>
											<th>Criteria Details</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>New Restaurants are opening in Dubai</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td>New Restaurants are opening in Dubai</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td>New Restaurants are opening in Dubai</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>



			</div>
		</div>
	</section>
<!--   Core JS Files   -->
	<script src="{{url('public/admin/assets/js/core/jquery.3.2.1.min.js')}}"></script>
	<script src="{{url('public/admin/assets/js/core/popper.min.js')}}"></script>
	<script src="{{url('public/admin/assets/js/core/bootstrap.min.js')}}"></script>

	<!-- jQuery UI -->
	<script src="{{url('public/admin/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js')}}"></script>
	<script src="{{url('public/admin/assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js')}}"></script>

	<!-- jQuery Scrollbar -->
	<script src="{{url('public/admin/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js')}}"></script>


	<!-- Chart JS -->
	<script src="{{url('public/admin/assets/js/plugin/chart.js/chart.min.js')}}"></script>

	<!-- jQuery Sparkline -->
	<script src="{{url('public/admin/assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js')}}"></script>

	<!-- Chart Circle -->
	<script src="{{url('public/admin/assets/js/plugin/chart-circle/circles.min.js')}}"></script>

	<!-- Datatables -->
	<script src="{{url('public/admin/assets/js/plugin/datatables/datatables.min.js')}}"></script>

	<!-- Bootstrap Notify -->
	<!-- <script src="../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script> -->

	<!-- jQuery Vector Maps -->
	<script src="{{url('public/admin/assets/js/plugin/jqvmap/jquery.vmap.min.js')}}"></script>
	<script src="{{url('public/admin/assets/js/plugin/jqvmap/maps/jquery.vmap.world.js')}}"></script>

	<!-- Sweet Alert -->
	<script src="{{url('public/admin/assets/js/plugin/sweetalert/sweetalert.min.js')}}"></script>

	<!-- Atlantis JS -->
	<script src="{{url('public/admin/assets/js/atlantis.min.js')}}"></script>

	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<script src="{{url('public/admin/assets/js/setting-demo.js')}}"></script>
	<!-- <script src="{{url('public/admin/assets/js/demo.js')}}"></script> -->


	<!-- loader modal -->

<div id="loaderModel" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <div class="loaderImg2" id="loaderImg2">
               <img src = "{{url('public/loader.gif')}}">
            </div>

  </div>
</div>

<!-- validation model -->

<div class="modal fade" id="validationModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Alert</h5>
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> -->
      </div>
      <div class="modal-body">
        <p id="alert_text">info</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">Ok</button>
       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>

<!-- success modal show -->
<div class="modal fade" id="successModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Success</h5>
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> -->
      </div>
      <div class="modal-body">
        <p id="success_alert_text">Info Text</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">Ok</button>
       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>

<!-- confirmation modal show -->
<div class="modal fade" id="confirmationmodel" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Alert</h5>
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> -->
      </div>
      <div class="modal-body">
        <p id="success_alert_text">Are you sure, you want to delete this venue?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">No</button> 
        <button type="button" class="btn btn-secondary confirm_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;" onclick="removeVenue();"  data-dismiss="modal">Yes</button>
       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>


<script>
	
	$(document).ready(function(){

		var date = new Date();
    	var min_date = date.toISOString().slice(0,10);
		$('.txn-from-date , .txn-end-date').attr('max',min_date);

		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
			$("#successModel").modal("hide");
		});

		$(document).on('input','.txn-amount-condition',function(){
			var value = $(this).val();
			if(value == 'Greater Than'){
				$('.txn-to-price').css('display','none');
			}else{
				$('.txn-to-price').css('display','block');
			}
		});


		$('.criteria_push_btn, .criteria_sms_btn').click(function(){
			var msg_type = $(this).attr('msg-type');
			var gender = $('.select_gender').val();
			var city_id = $('.select_city').val();
			var city_name = $('.select_city option:selected, this').attr('data-name');
			var nationality = $('.select_national').val();
			var txn_start_date = $('.txn-from-date').val();
			var txn_end_date = $('.txn-end-date').val();
			var txn_amount_condition = $('.txn-amount-condition').val();
			var txn_from_price = $('.txn-from-price').val();
			var txn_to_price = $('.txn-to-price').val();
			var specific_criteria_message = $('.specific_criteria_message').val();

			if(gender == ''){
				$("#alert_text").text("Please select gender.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			// if(city_id == ''){
			// 	$("#alert_text").text("Please select city of residence.");
			// 	$("#validationModel").modal("show");
			// 	$("#validationModel").unbind("click");
			// 	return false;
			// }

			/*if(nationality == ''){
				$("#alert_text").text("Please select nationality.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}*/

			if(txn_start_date || txn_end_date || txn_amount_condition || txn_from_price || txn_to_price){
				if(txn_start_date == ''){
					$("#alert_text").text("Please select transaction start period date.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}

				if(txn_end_date == ''){
					$("#alert_text").text("Please select transaction end period date.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
				if(txn_start_date > txn_end_date){
					$("#alert_text").text("Transaction end date should be greater than transaction start date.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}

				if(txn_amount_condition == ''){
					$("#alert_text").text("Please select transaction amount condition.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}else{

					if(txn_amount_condition == 'Between'){


						if(txn_from_price == ""){
							$("#alert_text").text("Please enter transaction from price.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							return false;
						}else if(txn_from_price == 0){
							$("#alert_text").text("Transaction price should be greater than 0.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							return false;
						}

						if(txn_to_price==""){
							$("#alert_text").text("Please enter transaction to price.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							return false;
						}else if(txn_to_price == 0){
							$("#alert_text").text("Transaction to price should be greater than 0.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							return false;
						}

						if(txn_from_price > 0 && txn_to_price > 0 ){

							if(parseInt(txn_from_price) >= parseInt(txn_to_price)){
								$("#alert_text").text("Transaction to price should be greater than from price.");
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
								return false;
							}
						}
					}else if(txn_amount_condition == "Greater Than"){
						if(txn_from_price==""){
							$("#alert_text").text("Please enter transaction from price.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							return false;
						}else if(txn_from_price == 0){
							$("#alert_text").text("Transaction from price should be greater than 0.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							return false;
						}
					}
				}
			}

			

			if(specific_criteria_message == ''){
				$("#alert_text").text("Please enter message.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}


			$.ajax({
				url:'{{ route("admin.saveCriteriaMessage") }}',
				type:'POST',
				dataType:'JSON',
				data:{msg_type,gender,city_id,city_name,nationality,txn_start_date,txn_end_date,txn_amount_condition,txn_from_price,txn_to_price,specific_criteria_message,'_token':'{{ csrf_token() }}'},
				beforeSend:function(){
		      		$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
				},
				success:function(data){
					setTimeout(function(){
					  	$("#loaderModel").modal("hide");
					  	$("#successModel").modal("show");
				  		$("#success_alert_text").text(data.message);
				  		$("#successModel").unbind("click");
						$('.select_gender').val('');
						$('.select_city').val('');
						$('.select_national').val('');
						$('.txn-from-date').val('');
						$('.txn-end-date').val('');
						$('.txn-amount-condition').val('');
						$('.txn-from-price').val('');
						$('.txn-to-price').val('');
						$('.specific_criteria_message').val('');
						$('#basic-datatables').DataTable().ajax.reload();
					},500);
				}
			});




		});

		$('.common_btn_app_notify').click(function(){
			let uniq_id = $(this).attr('uniq-id');
			let data_name = $(this).attr('data-name');

			var type_message = [];
			var message = $('.notify_message[uniq-id='+uniq_id+']').val();
			$.each($('.app_checkboxes input[uniq-id='+uniq_id+']:checked'),function(key,val){
				type_message.push($(this).attr('data-name'));
			});

			if(message == ''){
				$("#alert_text").text("Please enter "+data_name+" notification message.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(type_message.length == 0){
				$("#alert_text").text("Please select atleast one checkbox.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}


			$.ajax({
				url:'{{ route("admin.save_notification_message") }}',
				type:'POST',
				dataType:'JSON',
				data:{message,type_message,uniq_id,'_token':'{{csrf_token()}}'},
				beforeSend:function(){
		      		$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
				},
				success:function(data){
					setTimeout(function(){
					  	$("#loaderModel").modal("hide");
					  	$("#successModel").modal("show");
				  		$("#success_alert_text").text(data.message);
				  		$("#successModel").unbind("click");
					},500);
				}
			});


		});

		$('.common_upload_btn').click(function(){
			$('.upload_icon').trigger('click');
		});

		$('.welcome_email_btn').click(function(){
			var uniq_id = $(this).attr('uniq-id');
			if($('input.welcome_title_checkbox[uniq-id='+uniq_id+']').prop('checked')){
				
				var title = $('.welcome_title[uniq-id='+uniq_id+']').val();

				if(title == ''){
					$("#alert_text").text("Please enter welcome title.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
			}

			var welcome_message = $('.welcome_message[uniq-id='+uniq_id+']').val();

			if(welcome_message == ''){
				$("#alert_text").text("Please enter welcome message.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if($('input.app_checkboxes_upload[uniq-id='+uniq_id+']').prop('checked')){
				
				var attachment_hidden = $('#img_upload[uniq-id='+uniq_id+']').attr('value');
				var attachment_hidden_src = $('#img_upload[uniq-id='+uniq_id+']').attr('src');
				var img_upload2_value = $('#img_upload2[uniq-id='+uniq_id+']').attr('src');
				if(img_upload2_value == ''){
					if(attachment_hidden == '' || attachment_hidden_src == ''){
						$("#alert_text").text("Please upload file.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;
					}
				}
			}
			$('#email_form').trigger('submit');
			
		});

		$('#email_form').submit(function(e){
			var formdata = new FormData(this);
			$.ajax({
				url:'{{ route("admin.save_notification_message_email") }}',
				type:'POST',
				processData:false,
	            contentType:false,
	            dataType:'JSON',
	            data:formdata,
				beforeSend:function(){
		      		$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
				},
				success:function(data){
					setTimeout(function(){
					  	$("#loaderModel").modal("hide");
					  	$("#successModel").modal("show");
				  		$("#success_alert_text").text(data.message);
				  		$("#successModel").unbind("click");
					},500);
				}

			});
			return false;
		});

		$.ajax({
			url:'{{ route("admin.getAdminNotification") }}',
			dataType:'JSON',
			beforeSend:function(){
	      		$("#loaderModel").modal("show");
				$("#loaderModel").unbind("click");
			},
			success:function(data){
				setTimeout(function(){
				  	$("#loaderModel").modal("hide");
				  	if(data.length > 0){
				  		$.each(data,function(key,val){
							if(val.push_type == 1){
								let data_name_push = 'push';
				  				$(`.app_checkboxes input[uniq-id=${val.uniq_id}][data-name=${data_name_push}]`).prop('checked',true);
							}
							if(val.sms_type == 1){
								let data_name_sms = 'sms';
				  				$(`.app_checkboxes input[uniq-id=${val.uniq_id}][data-name=${data_name_sms}]`).prop('checked',true);
							}
							if(val.email_type == 1){
								let data_name_email = 'email';
				  				$(`.app_checkboxes input[uniq-id=${val.uniq_id}][data-name=${data_name_email}]`).prop('checked',true);
							}
							
				  			$('.notify_message[uniq-id='+val.uniq_id+']').text(val.message);

				  			if(val.uniq_id == 7){
				  				if(val.title){
				  					$(`.welcome_title_checkbox input[uniq-id=${7}]`).prop('checked',true);
				  				}
				  				$('.welcome_title').val(val.title);
				  				$('.welcome_message[uniq-id=7]').text(val.message);

								
				  				if(val.image_type){
					  				var valu = val.name_of_file_show;
									var length = valu.length;
									if(length>35){
										var slice_name = valu.slice(0,35)+'...';
									}else{
										var slice_name = valu;
									}
				  					$(`.app_checkboxes_upload input[uniq-id=${7}]`).prop('checked',true);
					  				$('.attachment_upload[uniq-id=7]').attr('value',slice_name);
					  				$('.attachment_upload[uniq-id=7]').attr('src',val.image);
					  				$('#img_upload[uniq-id=7]').attr('value',val.name_of_file_show);
									$('.img_upload2[uniq-id=7]').attr('value',val.name_of_file_show);

				  				}
				  			}
				  		});
				  	}
				},500);
			}

		});


		function notification_history(){
			let table =$("#basic-datatables").DataTable({
				processing:true,
				serverSide:true,
				retrieve: true,
				paging: true,
				searching:true,
				ajax:{
					url:"{{ route('admin.notification_history') }}",
					type:"POST",
					data:{'_token':'{{csrf_token()}}'},
				},
				columns:[
					{data:'message',name:'message'},
					{data:'created_at', name:'created_at'},
					{data:'sent_by', name:'sent_by'},
					{data:'criteria', name:'criteria'},
				]
			
			});
		}
		setTimeout(function(){
			notification_history();
		},500);

		$('#img_upload').on('change',function(e){
			var file = event.target.files[0];
			console.log(file);
			var file_nameshow = file.name;

			var valu = file_nameshow;
			var length = valu.length;
			if(length>35){
				var slice_name = valu.slice(0,35)+'...';
			}else{
				var slice_name = valu;
			}

			let uniq_id = $(this).attr('uniq-id');

			if(file){
				//alert(file.type)
				if(file.type == "image/jpeg" || file.type == "image/png" || file.type == "image/jpg" || file.type == "application/vnd.openxmlformats-officedocument.wordprocessingml.document" || file.type == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" || file.type == "application/excel" || file.type == "application/vnd.ms-excel" || file.type == "application/pdf" || file.type=="text/csv"){

					var size = file.size;
					console.log(size);
					if(parseInt(size) > 5242880){
						$("#alert_text").text("File should be less than or equal to 5 MB.");
				        $("#validationModel").modal("show");
				        $("#validationModel").unbind("click");
						return false;
					}else{
						var reader = new FileReader();
						reader.onload = function(e){
							$('.attachment_upload[uniq-id='+uniq_id+']').attr('value',slice_name);
							$('.attachment_upload[uniq-id='+uniq_id+']').attr('src',e.target.result);
							$('#img_upload[uniq-id='+uniq_id+']').attr('value',file_nameshow);
							$('#img_upload[uniq-id='+uniq_id+']').attr('src',e.target.result);
							$('.img_upload2[uniq-id='+uniq_id+']').attr('value','');
							
						}
					}
				
					reader.readAsDataURL(file);			
				}else{
					$("#alert_text").text("Please upload .jpg, .jpeg, .png, .docx, .xlsx, or .pdf format file only.");
			      	$("#validationModel").modal("show");
			      	$("#validationModel").unbind("click");
			      	return false;
				}

			}

		});

		$(document).on('click','.attachment_upload',function(){
			var get_base64 = $(this).attr('src');
			if(get_base64){
			fetch(get_base64)
		   	.then(e => e.blob())
		   	.then(e => {
		        // console.log("-- ",e)
		        let obj = URL.createObjectURL(e);
		        // console.log("-- ",obj)
		        window.open(obj);
		   	})
		   	.catch(e => {
		   		console.log(e)
		   	});
		   }
		});

		$(".txn-from-price, .txn-to-price").on("keypress", function (e) {
	        let keyCode = e.which ? e.which : e.keyCode  
	        if (!(keyCode >= 48 && keyCode <= 57)) {
	           return false;
	        }
     	});

		$('.txn-from-price, .txn-to-price').keydown(function(e){
			if(e.which===32){
				return false;
			}
		});

		$(document).on("keyup",".form-control",function(){
	        if($.trim($(this).val()).length == 0){
	           $(this).val("");
	        }else{
	          $(this).val($(this).val().trimLeft(""));
	        }
      });

	});


</script>

<script type="text/javascript">
$.ajax({
    type: 'GET', //THIS NEEDS TO BE GET
    url: "{{url('queue-work')}}",
    dataType: 'json',
    success: function (data) {
       // console.log(data);
    },error:function(){ 
         
    }
});
</script>

	
</body>
</html>