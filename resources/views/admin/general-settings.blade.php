<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>General Settings</title>
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
		.canvasjs-chart-credit {
			display: none;
		}
		.venue_inputs {
			width: 100%;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>   General Settings</a>
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
										<a class="nav-link" href="#">User: Nadeer</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="{{route('admin.adminTabs')}}" style="color: #FFDA7A;">
											Admin
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
	<section class="mt-0">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4">
					<div class="app_notification_bg" style="background-color: transparent; padding-top: 0;">
						<!-- <div class="d-flex justify-content-between"> -->
							<div class="row">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Contact Us Email ID</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Contact Us Email ID" value="info@capitalmotion.com" style="border-radius: 10px;padding: 12px 22px !important;"/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Contact Us No.</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Contact Us No." value="800 6996" style="border-radius: 10px;padding: 12px 22px !important;"/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Offer Screen Image</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Offer Screen Image" value="Offerscreen.jpg" style="border-radius: 10px;padding: 12px 22px !important;" disabled=""/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Welcome Screen Logo Static</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Welcome Screen Logo Static" value="Logo.jpg" style="border-radius: 10px;padding: 12px 22px !important;" disabled=""/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Welcome Screen Image 1</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Welcome Screen Image 1" value="Image1.jpg" style="border-radius: 10px;padding: 12px 22px !important;" disabled="" />
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Welcome Screen Image 2</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Welcome Screen Image 2" value="Image2.jpg" style="border-radius: 10px;padding: 12px 22px !important;" disabled=""/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Welcome Screen Image 3</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Welcome Screen Image 3" value="Image3.jpg" style="border-radius: 10px;padding: 12px 22px !important;" disabled=""/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Welcome Screen Image 4</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Welcome Screen Image 4" value="Image4.jpg" style="border-radius: 10px;padding: 12px 22px !important;" disabled=""/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>App Theme Color</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="App Theme Color" value="0B68AC" style="border-radius: 10px;padding: 12px 22px !important;"/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Launch Animation</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Launch Animation" value="animation.filetype" style="border-radius: 10px;padding: 12px 22px !important;" disabled=""/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec">
										<h5>Loading Indicator</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" class="form-control form-control-user" placeholder="Loading Indicator" value="Loading Indicator" style="border-radius: 10px;padding: 12px 22px !important;"/>
											</div>
											<a href="" class="btn btn-primary btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
						<!-- </div> -->
					</div>
				</div>
				<div class="col-md-5 mt-5">
					<div class="row">
						<div class="col-md-6">
							<div class="gen_setting">
								<h5 class="">About our loyalty program</h5>
							</div>
							<div class="app_notification_bg scrool_box" id="style-1">
								<div class="force-overflow"></div>
								<div class="gernal_input_sec">
									<h5 style="color: #000">About our loyalty program?</h5>	
									<p class="about_para">
										Here we introduce our new loyalty program where you can earn the direct cash bacl to your wallet when you dine in / transaction with us. This is a good chance for anyone who loves food, to dine in and get the cash back to your wallet. You can use the wallet amount anytime when you dine in with us.
									</p>
									<h5 style="color: #000">Customer Tiers:</h5>
									<p  class="about_para mb-0">
										There are many types of customer categories available depending on the total transaction you do with us in the specified time period. Some of the categories are as follows:
									</p>	
								</div>
							</div>
							<div class="text-right">
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 118px;     margin: 14px 0 0 auto;">
		                      		Save
		                    	</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="gen_setting">
								<h5 class="">FAQs</h5>
							</div>
							<div class="app_notification_bg scrool_box" id="style-1">
								<div class="force-overflow"></div>
								<div class="gernal_input_sec">
									<!-- <h5 style="color: #000">FAQs</h5> -->
									<p class="question_para">
										Q: How many dirhams will I get when I dine in at Pacifico Tiki?
									</p>	
									<p class="about_para">
										A:The dirhams earned on your wallet depends on the offer applicable on the day of your transaction.
									</p>
									<p class="question_para">
										Q:  When will I get the Cashback on my wallet?
									</p>	
									<p class="about_para">
										A:You will get the cash back into your wallet the next day of your purchase.
									</p>	
									<p class="question_para">
										Q:  Can I use the wallet amount everywhere?
									</p>	
									<p class="about_para mb-0">
										A:You can use the wallet amount anywhere in our chain of restaurants.
									</p>
								</div>
							</div>
							<div class="text-right">
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 118px;     margin: 14px 0 0 auto;">
		                      		Save
		                    	</a>
							</div>
						</div>
					</div>
					<div class="row mt-4">
						<div class="col-md-6">
							<div class="gen_setting">
								<h5 class="">Terms & Conditions</h5>
							</div>
							<div class="app_notification_bg scrool_box" id="style-1">
								<div class="force-overflow"></div>
								<div class="gernal_input_sec">
									<!-- <h5 style="color: #000">About our loyalty program?</h5>	 -->
									<p class="about_para mb-0">
										These terms and conditions are a set of rules about use of a website or application. They set out how users may use the site or application, and what they can and cannot do on the site or application. For example, if a user posts offensive or defamatory content on a website, the owner of the site will want to have terms and conditions to fall back on which clearly state that the owner of the site does not permit or take responsibility for that offensive content, and that any liability (such as a defamation claim) should therefore sit with the user. In addition, the owner of the site may want to have the ability to terminate the user's account - and this also will need to be explained in the terms and conditions.


									</p>	
								</div>
							</div>
							<div class="text-right">
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 118px;     margin: 18px 0 0 auto;">
		                      		Save
		                    	</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="gen_setting">
								<h5 class="">Privacy Policy</h5>
							</div>
							<div class="app_notification_bg scrool_box" id="style-1">
								<div class="force-overflow"></div>
								<div class="gernal_input_sec">
									<!-- <h5 style="color: #000">FAQs</h5> -->
									<p class="about_para">
									A Privacy Policy is a legal statement that specifies what the business owner does with the personal data collected from users, along with how the data is processed and for what purposes.
									</p>
									<p class="about_para mb-0">
									In 1968, Council of Europe did studies on the threat of the Internet expansion as they were concerned with the effects of technology on human rights. This lead to the development of policies that were to be developed to protect personal data.
									</p>

								</div>
							</div>
							<div class="text-right">
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 118px;     margin: 18px 0 0 auto;">
		                      		Save
		                    	</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 p-0 mt-1">
					<div class="app_notification_bg" style="background-color: transparent;">
						<h4 style="color: #535050">Venue Invoice No Entry Check</h4>
						<div class="d-flex align-items-center">
							<!-- <div>
								<label class="app_checkboxes">
									<input type="checkbox" checked="checked">
									<span class="checkmark"></span>
								</label>
							</div> -->
							<div class="venue_inputs" style="margin: 0 13px 0 0px;">
								<label style="color: #797676 !important">
									Unique Invoice No Check From Past Entry
								</label>
								<input type="text" class="form-control form-control-user" placeholder="Unique Invoice No Check From Past Entry" value="30 Days" style="font-size: 14px !important; border-radius: 10px !important; margin-bottom: 14px;"/>
							</div>
							<div class="" style="margin-top: 32px;">
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Save
			                    </a>
							</div>
						</div>
						<h4 class="mb-0" style="color: #535050">Venue Timeout</h4>
						<div class="venue_inputs mt-0">
							<label style="color: #535050">
								Timer starts when customer QR Code is scanned successfully
							</label>
						</div>
						<div class="d-flex align-items-center mt-3">
							<!-- <div>
								<label class="app_checkboxes">
									<input type="checkbox" checked="checked">
									<span class="checkmark"></span>
								</label>
							</div> -->
							<div class="venue_inputs" style="margin: 0 13px 0 0px;">
								<label style="color: #797676 !important">
									Timeout in Seconds
								</label>
								<input type="text" class="form-control form-control-user" placeholder="Timeout in Seconds" value="180" style="font-size: 14px !important; border-radius: 10px !important; margin-bottom: 14px;"/>
							</div>
							<div style="margin-top: 12px;">
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Save
			                    </a>
							</div>
						</div>
						<h4 class="mb-0" style="color: #535050">SMS OTP Validity</h4>
						<div class="venue_inputs mt-0">
							<label style="color: #535050">
								Validity starts when redemption verify button, product redeem button is pressed
							</label>
						</div>
						<div class="d-flex align-items-top mt-3">
							<div>
								<label class="app_checkboxes">
									<span style="font-family: 'Signika', sans-serif;font-weight: 700;color: #000 !important;font-size: 14px !important;">Enable</span>
									<input type="checkbox" checked="checked">
									<span class="checkmark" style="top: 30px"></span>
								</label>
							</div>
							<div class="venue_inputs" style="margin: 0 13px 0 7px;">
								<label style="color: #797676 !important">
									SMS Validity in Seconds
								</label>
								<input type="text" class="form-control form-control-user" placeholder="SMS Validity in Seconds" value="180" style="font-size: 14px !important; border-radius: 10px !important; margin-bottom: 14px;"/>
							</div>
							<div style="margin-top: 25px;">
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Save
			                    </a>
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
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: ""
	},
	axisX:{
		valueFormatString: "DD MMM",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "",
		valueFormatString: "2k",
		crosshair: {
			enabled: true,
			snapToDataPoint: true,
			labelFormatter: function(e) {
				return "$" + CanvasJS.formatNumber(e.value, "2k");
			}
		}
	},
	data: [{
		type: "area",
		xValueFormatString: "DD MMM",
		yValueFormatString: "2k",
		dataPoints: [
			{ x: new Date(2016, 07, 01), y: 76.727997 },
			{ x: new Date(2016, 07, 02), y: 75.459999 },
			{ x: new Date(2016, 07, 03), y: 76.011002 },
			{ x: new Date(2016, 07, 04), y: 75.751999 }
		]
	}]
});
chart.render();


var chart = new CanvasJS.Chart("chartContainer1", {
	animationEnabled: true,
	title:{
		text: ""
	},
	axisX:{
		valueFormatString: "DD MMM",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "",
		valueFormatString: "2k",
		crosshair: {
			enabled: true,
			snapToDataPoint: true,
			labelFormatter: function(e) {
				return "$" + CanvasJS.formatNumber(e.value, "2k");
			}
		}
	},
	data: [{
		type: "area",
		xValueFormatString: "DD MMM",
		yValueFormatString: "2k",
		dataPoints: [
			{ x: new Date(2016, 07, 01), y: 76.727997 },
			{ x: new Date(2016, 07, 02), y: 75.459999 },
			{ x: new Date(2016, 07, 03), y: 76.011002 },
			{ x: new Date(2016, 07, 04), y: 75.751999 }
		]
	}]
});
chart.render();

var chart = new CanvasJS.Chart("chartContainer2", {
	animationEnabled: true,
	title:{
		text: ""
	},
	axisX:{
		valueFormatString: "DD MMM",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "",
		valueFormatString: "2k",
		crosshair: {
			enabled: true,
			snapToDataPoint: true,
			labelFormatter: function(e) {
				return "$" + CanvasJS.formatNumber(e.value, "2k");
			}
		}
	},
	data: [{
		type: "area",
		xValueFormatString: "DD MMM",
		yValueFormatString: "2k",
		dataPoints: [
			{ x: new Date(2016, 07, 01), y: 76.727997 },
			{ x: new Date(2016, 07, 02), y: 75.459999 },
			{ x: new Date(2016, 07, 03), y: 76.011002 },
			{ x: new Date(2016, 07, 04), y: 75.751999 }
		]
	}]
});
chart.render();

var chart = new CanvasJS.Chart("chartContainer3", {
	animationEnabled: true,
	title:{
		text: ""
	},
	axisX:{
		valueFormatString: "DD MMM",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "",
		valueFormatString: "2k",
		crosshair: {
			enabled: true,
			snapToDataPoint: true,
			labelFormatter: function(e) {
				return "$" + CanvasJS.formatNumber(e.value, "2k");
			}
		}
	},
	data: [{
		type: "area",
		xValueFormatString: "DD MMM",
		yValueFormatString: "2k",
		dataPoints: [
			{ x: new Date(2016, 07, 01), y: 76.727997 },
			{ x: new Date(2016, 07, 02), y: 75.459999 },
			{ x: new Date(2016, 07, 03), y: 76.011002 },
			{ x: new Date(2016, 07, 04), y: 75.751999 }
		]
	}]
});
chart.render();

var chart = new CanvasJS.Chart("chartContainer4", {
	animationEnabled: true,
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "Products Offer Redemption"
	},
	axisY: {
		title: ""
	},
	data: [{        
		type: "column",  
		showInLegend: true, 
		legendMarkerColor: "grey",
		legendText: "",
		dataPoints: [      
			{ y: 6,  label: "Special Treat" },
			{ y: 4, label: "Birthday Coffee" },
			{ y: 2,  label: "Free Pizza" },
			{ y: 0,  label: "Free Coffee" }
		]
	}]
});
chart.render();

}

</script>
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
						var select = $('<select class="form-control select_option"><option value=""></option></select>')
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
</html>