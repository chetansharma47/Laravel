<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Customer Tier Settings</title>
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


	<link href="{{url('public/admin/assets/css/spectrum.css')}}" rel="stylesheet" type="text/css">

	<style>
		body {
			background: #fff !important;
		}
		.sp-replacer {
			width: 76px;
		    height: 31px;
		    margin-left: 12px;
		}

		label.error {
		    color: #ce3333!important;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>   Customer Tier Settings</a>
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
	<section class="mt-3 mb-3" style="padding-left: 40px;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4">
					<div class="venue_inputs mr-4 mb-4">
						<label>
							Customer Total Transaction Amount Check for
						</label>
						<input type="text" class="form-control form-control-user" placeholder="Amount Check" value="Last 30 Days" style="border-radius: 0px;"/>
					</div>
					<div class="col-md-12" style="padding-left: 0; padding-right: 0">
						<div class="venue_inputs mr-4 mb-4">
							<label>
								Customer Tier Validity Check (Badge Change)
							</label>
							<input type="date" class="form-control form-control-user" placeholder="Customer Tier Validity Check (Badge Change)" value="30 Days from status change" style="border-radius: 0px;"/>
						</div>
					</div>
					<div class="venue_inputs mr-4 mb-4">
						<label>
							If the condition does not meet in mentioned no of days, the prevous status be applied <br/> <br/>
							Service should run to do this check frequently
						</label>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="events_venue_details" style="background-color: transparent;">
		<div class="container-fluid">
			<div class="row mx-4" style="background-color: #f7f7f7;margin: 0px 0px;border-radius: 20px; margin-bottom: 25px;">
				<div class="col-md-3">
					<div class="app_notification_bg" style="background-color: transparent; padding-bottom: 0;padding-left: 8px; padding-top: 10px;">
						<h4 style="">Customer Tier Names</h4>
					</div>
					<div class="pb-1 pl-2 pr-3 menu-lisitng">
						<ul style="margin-left: 0; background-color:#E3DFDF;">
							<li class="active">
								<a href="{{route('admin.customerTierSettings')}}">Silver</a>
							</li>
							<li>
								<a href="{{route('admin.customerTierSettingsGold')}}">Gold</a>
							</li>
							<li>
								<a href="{{route('admin.customerTierSettingsDimond')}}">Diamond</a>
							</li>
							<li style="visibility: hidden">
								<a href="#">Aquarium</a>
							</li>
							<li style="visibility: hidden">
								<a href="#">Tokyo Grill</a>
							</li>
							<li style="visibility: hidden">
								<a href="#">Tokyo Grill</a>
							</li>
							<li style="visibility: hidden">
								<a href="#">Tokyo Grill</a>
							</li>
							<li style="visibility: hidden">
								<a href="#">Tokyo Grill</a>
							</li>
							<li style="visibility: hidden">
								<a href="#">Tokyo Grill</a>
							</li>
							<div class="d-flex justify-content-between">
								<li style="background-color: #ECECEC;">
									<a href="#">
										<img src="{{url('public/admin/assets/img/icon.png')}}" alt="icon"/>
									</a>
								</li>
								<li style="background-color: #ECECEC;">
									<a href="#">
										<img src="{{url('public/admin/assets/img/icon1.png')}}" alt="icon1"/>
									</a>
								</li>
							</div>
						</ul>
					</div>
				</div>
				<div class="col-md-9 padding-top" style="padding-top: 20px">
					<div class="app_notification_bg" style="background-color: transparent; padding-bottom: 0; padding-top: 0;">
						<h4 style="margin-bottom: 50px;  margin-top: -9px;">Customer Tier Conditions</h4>
					</div>
					<div class="venue_inputs ml-3">
						<label>
							Transaction Amount
						</label>
					</div>
					<div class="row pr-5 pl-3 mt-0">
						<div class="col-md-3 venue_inputs">
							<label>
								From Amount
							</label>
							<input type="number" class="form-control form-control-user" placeholder="From Amount" value="0" />
						</div>
						<div class="col-md-3 venue_inputs">
							<label>
								To Amount
							</label>
							<input type="number" class="form-control form-control-user" placeholder="To Amount" value="5000" />
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-5">
						<div class="col-md-3 venue_inputs">
								<label>
									Color Code for Customer Tier 
								</label>
							<div class="d-flex align-items-center">
								<input type="text" class="form-control form-control-user" placeholder="Color Code for Customer Tier color_code" name="color_code" value="#FF0000" />
								<input type="color" class="basic" value="#FF0000">
							</div>
								<label class="error" style="display: none;">Please enter valid color code.</label>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="    margin-top: 66px;
    margin-bottom: 14px;">
	                      		Save
	                    	</a>
                    	</div>	
					</div>
				</div>
			</div>
			
		</div>
		<!-- <div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">cvcvbcvbcbc</div>
		</div> -->
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


	<script src="{{url('public/admin/assets/js/spectrum.js')}}"></script>

	<script type="text/javascript">
		$(".basic").spectrum({
		    preferredFormat: "hex6",
		    showInput: true
		});

		$(".sp-choose").click(function(){
			let color_code = $(".sp-input").val();
			$("#color_code").val(color_code);
		});

		$("body").on("click",function(){
			let input_color_code = $(".color_code").val();

			if(/^#[0-9A-F]{6}$/i.test(input_color_code) == false){
				//alert("Please enter valid color code")
			}
			
		});

		function isColor(strColor){
		  var s = new Option().style;
		  s.color = strColor;
		  return s.color == strColor;
		}
	</script>
</body>