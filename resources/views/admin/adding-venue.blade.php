<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Adding Venue</title>
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
	<link href="{{url('public/admin/assets/css/mdtimepicker.css')}}" rel="stylesheet" />
	<style>
		body {
			background: #fff !important;
		}
		/*.curve-bg .navbar-nav li.nav-item:nth-child(1) {
			width: 100%;
			margin-right: 0;
		}*/
	/*	.curve-bg .navbar-nav li.nav-item:nth-child(2) {
			width: 0;
		}*/
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

					<!-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link hover_color" href="admin_tabs.html" style="padding-right: 0">Admin Portal</a>
								<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span> Add Restaurants, Events, Offers</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="admin_tabs.html">
									<img src="../assets/img/logo-approved.png"/ alt="logo-approved">
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">User: Nadeer</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="admin_tabs.html" style="color: #FFDA7A;">
									Admin
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="login.html" style="color: #FFDA7A;">
									logout
								</a>
							</li>
						</ul>
					</div> -->

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div class="row w-100">
							<div class="col-md-5 col-sm-12">
								<ul class="navbar-nav">
									<li class="nav-item">
										<a class="nav-link hover_color" href="{{route('admin.adminTabs')}}" style="padding-right: 0">Admin Portal</a>
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span> Add Restaurants, Events, Offers</a>
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
	<div class="container-fluid menu-tabs">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" href="adding_venue.html">Our Venues</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="adding_events.html">Events</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="offer-settings.html">Offers</a>
			</li>
		</ul>
	</div>
	<div class="events_venue_details">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="pt-5 pb-3 pl-3 pr-3 menu-lisitng">
						<ul>
							<li class="active">
								<a href="javascript:void(0);">Salt & Caramel</a>
							</li>
							<li>
								<a href="javascript:void(0);">Pacifico Tiki</a>
							</li>
							<li>
								<a href="javascript:void(0);">Ornina</a>
							</li>
							<li>
								<a href="javascript:void(0);">Aquarium</a>
							</li>
							<li>
								<a href="javascript:void(0);">Tokyo Grill</a>
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
							<li style="visibility: hidden">
								<a href="#">Tokyo Grill</a>
							</li>
							<div class="d-flex justify-content-between">
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);">
										<img src="{{url('public/admin/assets/img/icon.png')}}" alt="icon"/>
									</a>
								</li>
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);">
										<img src="{{url('public/admin/assets/img/icon1.png')}}" alt="icon1"/>
									</a>
								</li>
							</div>
						</ul>
					</div>
				</div>
				<div class="col-md-9 padding-top">
					<div class="row pr-5 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Venue Name
							</label>
							<input type="email" class="form-control form-control-user" placeholder="Venue Name" value="Pacifico Tiki" />
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Image
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Image" value="PacificoTiki.jpg" disabled=""/>
						</div>
					</div>
					<div class="row pr-5 pl-3  mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Address
							</label>
							<input type="email" class="form-control form-control-user" placeholder="Address" value="Al Bandar | Al Raha Beach | Abu Dhabi" />
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Menu Link
							</label>
							<!-- <input type="text" class="form-control form-control-user" placeholder="Menu Link" value="https://www.pacificotiki.com/menu.pdf" /> -->
							<textarea class="form-control" style="font-size: 14px !important" name="" id="" rows="2" placeholder="Menu Link">https://www.pacificotiki.com/menu.pdf</textarea>
						</div>
					</div>
					<div class="row pr-5 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Venue Description
							</label>
							<textarea class="form-control" style="font-size: 14px !important; font-family: Lato;
font-style: normal; font-weight: 400; color: ##494949" name="" id="" rows="5" placeholder="Menu Link">Pacifico Tiki is a Polynesian dining and lounge restaurant built on stilts above the sea at Al Bandar Marina. Inspired by the pleasures of the islands, Tiki provides a perfect ambiance to escape from the busy lifestyle and chill.It’s the ideal spot to catch the beautiful sunsets of Abu Dhabi– right from your dining table!</textarea>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Phone Contact
							</label>
							<input type="email" class="form-control form-control-user" placeholder="Phone Contact" value="800909090" />
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Google Map Location Link
							</label>
							<textarea class="form-control" style="font-size: 14px !important" name="" id="" rows="2" placeholder="Menu Link">https://www.google.com/maps/dir/?api=1&destination=Abu%20Dhabi%20-%20United%20Arab%20Emirates</textarea>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Book Now Link
							</label>
							<!-- <input type="text" class="form-control form-control-user" placeholder="Menu Link" value="https://www.pacificotiki.com/menu.pdf" /> -->
							<textarea class="form-control" style="font-size: 14px !important" name="" id="" rows="2" placeholder="Book Now Link">https://www.pacificotiki.com/book-a-table</textarea>
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Status
							</label>
							<div class="selectdiv">
								<select class="form-control form-group" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
									<option>Active</option>
									<option>Inactive</option>

								</select>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<a href="" class="btn btn-primary btn-user btn-block common_btn">
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
	</div>
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
</body>