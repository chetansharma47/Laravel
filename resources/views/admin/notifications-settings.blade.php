<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Notifiction Settings</title>
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
		#basic-datatables_wrapper,
		#basic-datatables2_wrapper,
		#basic-datatables3_wrapper {
			padding: 0 !important;
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
    width: 74% !important;
		}
		div.dataTables_wrapper div.dataTables_info {
			white-space: inherit !important;
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
	</style>
</head>
<body>
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>   Notification Settings</a>
									</li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-12 text-center">
								<ul class="" style="padding-left: 25px;">
										<a class="nav-link" href="{{route('admin.adminTabs')}}">
											<img src="{{url('public/admin/assets/img/logo-approved.png')}}"/ alt="logo-approved">
										</a>
								</ul>
							</div>
							<div class="col-md-5 text-right pr-0">
								<ul class="navbar-nav">
									<li class="nav-item">
										<a class="nav-link" href="#">User: Nadeer</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="{{route('admin.adminTabs')}}" style="color: #FFDA7A;">
											Admin
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="{{route('admin.login')}}" style="color: #FFDA7A;">
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
											<label class="app_checkboxes">
												<div class="checkbox-text">Push</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes">
												<div class="checkbox-text">SMS</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes">
												<div class="checkbox-text">Email</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes">
										<div class="checkbox-text">Transaction Notification to customer (Automatic - Instant)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea class="form-control" style="font-size: 14px !important; width: 94%;   font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" rows="2" placeholder="Event Description">Thank you for dinein with us. Clickable Link</textarea>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 138px; padding-top: 12px;">
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
											<label class="app_checkboxes">
												<div class="checkbox-text">Push</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes">
												<div class="checkbox-text">SMS</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes">
												<div class="checkbox-text">Email</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes">
										<div class="checkbox-text">Cash Back Notification to customer (Automatic - After Verifying Transaction)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea class="form-control" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" rows="2" placeholder="Event Description">Thank you for dinein with us. Clickable Link</textarea>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 138px; padding-top: 12px;">
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
											<label class="app_checkboxes">
												<div class="checkbox-text">Push</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes">
												<div class="checkbox-text">SMS</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes">
												<div class="checkbox-text">Email</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes">
										<div class="checkbox-text">Welcome Bonus Notification to customer (Automatic Succesful Signup)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea class="form-control" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" rows="2" placeholder="Event Description">Thank you for dinein with us. Clickable Link</textarea>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 138px; padding-top: 12px;">
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
											<label class="app_checkboxes">
												<div class="checkbox-text">Push</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes">
												<div class="checkbox-text">SMS</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes">
												<div class="checkbox-text">Email</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes">
										<div class="checkbox-text">Referral Bonus Notification to customer (Automatic - Referral Successful First Transaction)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea class="form-control" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" rows="2" placeholder="Event Description">Thank you for dinein with us. Clickable Link</textarea>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 138px; padding-top: 12px;">
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
											<label class="app_checkboxes">
												<div class="checkbox-text">Push</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes">
												<div class="checkbox-text">SMS</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes">
												<div class="checkbox-text">Email</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes">
										<div class="checkbox-text">Event Notification To Customer (Automatic - When Events Are Happening)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea class="form-control" style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" rows="2" placeholder="Event Description">Thank you for dinein with us. Clickable Link</textarea>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 138px; padding-top: 12px;">
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
											<label class="app_checkboxes">
												<div class="checkbox-text">Push</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div style="margin-right: 20px;">
											<label class="app_checkboxes">
												<div class="checkbox-text">SMS</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
										<div>
											<label class="app_checkboxes">
												<div class="checkbox-text">Email</div>
												<input type="checkbox" checked="checked">
												<span class="checkmark"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 pl-0">
									<div class="app_checkboxes">
										<div class="checkbox-text">Customer Specific Notification To Customer (Automatic - When Customer Offers Are Assigned)</div>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs w-100">
												<textarea class="form-control " style="font-size: 14px !important; width: 94%;font-family: 'Lato', sans-serif;
     font-weight: 400;" name="" id="" rows="2" placeholder="Event Description">Thank you for dinein with us. Clickable Link</textarea>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 138px; padding-top: 12px;">
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
								<select class="form-control form-group" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
									<option>Select Gender</option>
									<option> Male </option>
									<option> Female </option>
								</select>
							</div>
						</div>
						<div class="row pr-5 pl-3 select_area mt-2">
							<div class="col-md-9 venue_inputs p-0">
								<label>
									City of Residence
								</label>
								<select class="form-control form-group" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
									<option>Select Residence</option>
									<option> All</option>
									<option> Dubai </option>
								</select>
							</div>
						</div>
						<div class="row pr-5 pl-3 select_area mt-2">
							<div class="col-md-11 venue_inputs p-0">
								<label>
									Nationality
								</label>
								<select class="form-control form-group" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
									<option>Select Nationality</option>
									<option> All</option>
									<option> Multiple Selection </option>
								</select>
							</div>
						</div>
						<div class="row pr-3 pl-3 select_area mt-2">
							<div class="col-md-6 venue_inputs pl-0">
								<label>
									Transaction Start Period
								</label>
								<input type="date" class="form-control form-control-user" placeholder="From Date" value="Today"style="font-size: 14px !important;    padding: .6rem 1rem; border-radius: 10px;" />
							</div>
							
							<div class="col-md-6 venue_inputs p-0">
								<label style="width: 100px;">
									Transaction End Period
								</label>
								<input type="date" class="form-control form-control-user" placeholder="From Date" value="Today"style="font-size: 14px !important;    padding: .6rem 1rem; border-radius: 10px;" />
							</div>
						</div>
						<div class="row pr-4 select_area mt-2">
							<div class="col-md-6 venue_inputs">
								<label>
									Transaction Amount Condition
								</label>
								<select class="form-control form-group" style="padding: .6rem 1rem; position: relative;font-size: 14px !important; padding-right: 32px !important;     background-size: 12px!important;
    background-position: 91% 50%!important;" id="exampleFormControlSelect1">
									<option>Select Amount</option>
									<option> Between</option>
									<option> Greater than </option>
								</select>
							</div>
							<div class="col-md-6 venue_inputs p-0">
								<label style="width: 100px;">
									Transaction Amount
								</label>
								<div class="d-flex">
									<input type="text" class="form-control form-control-user" placeholder="Price" value="5000" style="font-size: 14px !important; border-radius: 10px; margin-right: 12px;"/>
									<input type="text" class="form-control form-control-user" placeholder="Price" value="10000" style="font-size: 14px !important; border-radius: 10px;"/>
											
								</div>
							</div>
						</div>
						<div class="row  select_area mt-2" style="padding-top: 70px;">
							<div class="col-md-12 venue_inputs">
								<label>
									Message  Text
								</label>
								<textarea class="form-control" style="font-size: 14px !important" name="" id="" rows="4" placeholder="Event Description">Here customized message Links here</textarea>
							</div>
						</div>
						<div class="d-flex justify-content-between mt-4">
							<div>
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="    padding: 9px; font-size: 14px;">
	                      			PUSH APP NOTIFICATION
	                    		</a>
							</div>
							<div>
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="    padding: 9px; font-size: 14px;">
	                      			PUSH SMS
	                    		</a>
							</div>
						</div>	
					</div>
				</div>
				<div class="col-md-4 p-0">
					<div class="app_notification_bg" style="background-color: transparent;">
						<h4>Automatic Email</h4>
						<div class="d-flex">
							<div>
								<label class="app_checkboxes">
									<input type="checkbox" checked="checked">
									<span class="checkmark" style="top: 48px"></span>
								</label>
							</div>
							<div class="venue_inputs" style="margin: 0 13px 0 35px;">
								<label>
									Welcome Email (Automatic At Successful Sign Up)
								</label>
								<input type="text" class="form-control form-control-user" placeholder="Price" value="Welcome to Capital Society | Start Earning Today" style="font-size: 14px !important; border-radius: 0px !important; margin-bottom: 14px;"/>
								<textarea class="form-control" style="font-size: 14px !important" name="" id="" rows="5" placeholder="Event Description">Dear People,

								Thank you and welcome our new loyalty program

								Please find the attached company profile / hskdjhasdkj

								This is the email body</textarea>
							</div>
							<div style="margin-top: 44px;">
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Save
			                    </a>
							</div>
						</div>
						<div class="d-flex mt-3">
							<div>
								<label class="app_checkboxes">
									<input type="checkbox" checked="checked">
									<span class="checkmark" style="top: 48px"></span>
								</label>
							</div>
							<div class="venue_inputs" style="margin: 0 13px 0 35px;">
								<label>
									Email Attachment (Attached To All Email Push)
								</label>
								<input type="text" class="form-control form-control-user" placeholder="Price" value="General Attachment.pdf / Any Document Format" style="font-size: 14px !important; border-radius: 0px !important; margin-bottom: 14px;"/>
							</div>
							<div style="margin-top: 44px;">
								<a href="" class="btn btn-primary btn-user btn-block common_btn"  style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Upload
			                    </a>
							</div>
						</div>
						<div class="venue_inputs mt-5">
							<label>
								Push Notification / SMS / Automatic Notification  History with (Message, customer, Date, Time & User)
							</label>
							<div class="table-responsive mt-3">
								<table id="basic-datatables" class="display table table-striped table-hover" >
									<thead>
										<tr style="background-color: #193358;    color: #fff;">
											<th class="text-left">Message</th>
											<th class="text-left">Sent On</th>
											<th>Sent By</th>
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
	<script src="{{url('public/admin/assets/js/demo.js')}}"></script>
	<script>
		$('#lineChart').sparkline([102,109,120,99,110,105,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});

		$('#lineChart2').sparkline([99,125,122,105,110,124,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});

		$('#lineChart3').sparkline([105,103,123,100,95,105,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});
	</script>	
	<script >
		$(document).ready(function() {
			$('#basic-datatables').DataTable({
			});

			$('#multi-filter-select').DataTable( {
				"pageLength": 5,
				initComplete: function () {
					this.api().columns().every( function () {
						var column = this;
						var select = $('<select class="form-control"><option value=""></option></select>')
						.appendTo( $(column.footer()).empty() )
						.on( 'change', function () {
							var val = $.fn.dataTable.util.escapeRegex(
								$(this).val()
								);

							column
							.search( val ? '^'+val+'$' : '', true, false )
							.draw();
						} );

						column.data().unique().sort().each( function ( d, j ) {
							select.append( '<option value="'+d+'">'+d+'</option>' )
						} );
					} );
				}
			});

			// Add Row
			$('#add-row').DataTable({
				"pageLength": 5,
			});

			var action = '<td> <div class="form-button-action"> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task"> <i class="fa fa-edit"></i> </button> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove"> <i class="fa fa-times"></i> </button> </div> </td>';

			$('#addRowButton').click(function() {
				$('#add-row').dataTable().fnAddData([
					$("#addName").val(),
					$("#addPosition").val(),
					$("#addOffice").val(),
					action
					]);
				$('#addRowModal').modal('hide');

			});
		});
	</script>
</body>