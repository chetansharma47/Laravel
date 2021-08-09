<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Adding Event</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="{{url('public/admin/assets/img/logo-approved.png')}}" type="image/x-icon"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Signika:wght@300;400;500;600;700&display=swap" rel="stylesheet">

	<!-- Fonts and icons -->
	<script src="{{url('public/admin/assets/js/plugin/webfont/webfont.min.js')}}"></script>
	<link href="{{url('public/admin/assets/css/mdtimepicker.css')}}" rel="stylesheet" />
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
				<a class="nav-link" href="{{route('admin.addingVenue')}}">Our Venues</a>
			</li>
			<li class="nav-item">
				<a class="nav-link active" href="{{route('admin.addingEvents')}}">Events</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{{route('admin.offerSettings')}}" >Offers</a>
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
								<a href="javascript:void(0);">Tiki Ladies Night</a>
							</li>
							<li>
								<a href="javascript:void(0);">Cheese & Grape</a>
							</li>
							<li>
								<a href="javascript:void(0);">Hola Cuba! Ladies Night</a>
							</li>
							<li>
								<a href="javascript:void(0);">Tiki Friday Brunch</a>
							</li>
							<li>
								<a href="javascript:void(0);">Business Lunch</a>
							</li>
							<li style="visibility: hidden">
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
								Offer Name
							</label>
							<input type="email" class="form-control form-control-user" placeholder="Offer Name" value="Offer Ladies Night" />
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Image
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Image" value="LadiesNight.jpg" disabled="" />
						</div>
					</div>
					<div class="row pr-5 pl-3  mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Offer Description
							</label>
							<!-- <input type="text" class="form-control form-control-user" placeholder="Menu Link" value="https://www.pacificotiki.com/menu.pdf" /> -->
							<textarea class="form-control" style="font-size: 14px !important; font-family: Lato;
font-style: normal; font-weight: 400; color: #494949" name="" id="" rows="5" placeholder="Offer Description">Every Monday ladies enjoy unlimited complimentary beves at Tiki. Also enjoy our mix of the day, specially prepared by the tiki bartenders.Gents also can get an unlimited beves package for just AED199. </textarea>
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Venue Name
							</label>
							<div class="selectdiv">
								<select class="form-control form-group" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
									<option>Select Venue Name</option>
									<option>Pacifico Tiki</option>
									<option>Offer Ladies Night</option>

								</select>
							</div>
							<div class="mt-3">
								<label>
									Address
								</label>

								<input type="text" class="form-control form-control-user" placeholder="Image" value="Al Bandar | Al Raha Beach | Abu Dhabi" disabled style="background-color: #8D8A8A !important" />
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								When
							</label>
							<div class="checkboxesbg">
								<div class="d-flex flex-wrap">
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Monday</span>
											<input type="checkbox" checked="checked">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Tuesday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Wednesday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Thursday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Friday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Saturday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div>
										<label class="tick_box" style="width: 84px;"><span class="date">Sunday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 venue_inputs">
							<div>
								<label>
									Phone Contact
								</label>

								<input type="text" class="form-control form-control-user" placeholder="Image" value="800909090" disabled style="background-color: #8D8A8A !important" />
							</div>
						</div>	
					</div>
					<label class="applicable-date mt-3">
						Applicable Dates
					</label>
					<div class="row pr-5 pl-3 mt-0">
						<div class="col-md-3 venue_inputs">
							<label>
								From Date
							</label>
							<input type="date" class="form-control form-control-user" placeholder="From Date" value="" />
						</div>
						<div class="col-md-3 venue_inputs">
							<label>
								To Date
							</label>
							<input type="date" class="form-control form-control-user" placeholder="To Date" value="" />
						</div>
						<div class="col-md-6 venue_inputs">
							<div class="" style="margin-top: -64px;">
								<label>
									Google Map Location Link
								</label>

								<textarea class="form-control" style="font-size: 14px !important; background-color: #8D8A8A !important; overflow-y: hidden;" name="" id="" rows="3" placeholder="Book Now Link" disabled>https://www.google.com/maps/																dir/?api=1&destination=Abu%20Dhabi%20-%20United%20Arab%20Emirates
								</textarea>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Time
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Time" value="7:00 AM" id="timepicker3"/>
						</div>
						<div class="col-md-6 venue_inputs">
								<div  style="margin-top: -29px;">
								<label>
									Book Now Link
								</label>

								<textarea class="form-control" style="font-size: 14px !important; background-color: #8D8A8A !important" name="" id="" rows="2" placeholder="Book Now Link" disabled >https://www.pacificotiki.com/book-a-table</textarea>
							</div> 
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
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
	<script src="{{url('public/admin/assets/js/mdtimepicker.js')}}" type="text/javascript"></script>

	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<script src="{{url('public/admin/assets/js/setting-demo.js')}}"></script>
	<script src="{{url('public/admin/assets/js/demo.js')}}"></script>
	<script>
      $(document).ready(function(){
        $('#timepicker').mdtimepicker();
        $('#timepicker2').mdtimepicker();
        $('#timepicker3').mdtimepicker(); 
        $('#timepicker4').mdtimepicker();
        $('#timepicker5').mdtimepicker();
        $('#timepicker6').mdtimepicker();
        $('#timepicker7').mdtimepicker();
        $('#timepicker8').mdtimepicker();
        $('#timepicker9').mdtimepicker();
        $('#timepicker10').mdtimepicker();
        $('#timepicker11').mdtimepicker();
        $('#timepicker12').mdtimepicker();
        $('#timepicker13').mdtimepicker();
        $('#timepicker14').mdtimepicker();
      });
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
</body>