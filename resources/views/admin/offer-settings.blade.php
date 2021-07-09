<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Offer Settings</title>
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>  Offers - Criteria Based</a>
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
	<div class="container-fluid">
		<div class="row mt-4">
			<div class="col-md-5 offer_heading">
				<label>Offers</label>
			</div>
			<div class="col-md-7 offer_heading">
				<label>Criteria (Services to run to push the offer for customer who meets the criteria)</label>
			</div>
		</div>
	</div>
	<div class="container-fluid menu-tabs" style="margin-top: 13px">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item">
				<a class="nav-link" href="{{route('admin.addingVenue')}}">Our Venues</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{{route('admin.addingEvents')}}">Events</a>
			</li>
			<li class="nav-item">
				<a class="nav-link active" href="{{route('admin.offerSettings')}}" >Offers</a>
			</li>
		</ul>
	</div>
	<div class="events_venue_details">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2">
					<div class="pt-5 pb-3 pl-3 menu-lisitng">
						<ul style="margin-left: 0px !important;">
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
							<div class="d-flex justify-content-between" style="visibility: hidden;">
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);">
										<img src="../assets/img/icon.png" alt="icon"/>
									</a>
								</li>
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);">
										<img src="../assets/img/icon1.png" alt="icon1"/>
									</a>
								</li>
							</div>
						</ul>
					</div>
				</div>
				<div class="col-md-3">
					<div class="pt-5 pb-3 pl-3 menu-lisitng">
						<ul style="margin-left: 0px !important;">
							<li class="active">
								<a href="javascript:void(0);">Birthday Offer - Free Coffee</a>
							</li>
							<li>
								<a href="javascript:void(0);">Spend 5000 - Free Pizza</a>
							</li>
							<li style="visibility: hidden">
								<a href="#">Ornina</a>
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
							<li style="visibility: hidden">
								<a href="#">Tokyo Grill</a>
							</li>
							<li style="visibility: hidden">
								<a href="#">Tokyo Grill</a>
							</li>
							<div class="d-flex justify-content-between">
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);">
										<img src="../assets/img/icon.png" alt="icon"/>
									</a>
								</li>
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);">
										<img src="../assets/img/icon1.png" alt="icon1"/>
									</a>
								</li>
							</div>
						</ul>
					</div>
				</div>
				<div class="col-md-7 padding-top">
					<div class="criteria_section">
						<div class="col-md-12 venue_inputs">
							<label>
								Criteria
							</label>
						</div>
						<div class="col-md-12">
							<div class="gre_bg">
								<div class="row">
									<div class="col-md-3 venue_inputs">
										<label>
											DOB
										</label>
										<input type="email" class="form-control form-control-user" placeholder="DOB" value="Today"style="font-size: 14px !important;    padding: .6rem 1rem; border-radius: 10px;" />
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Gender
										</label>
										<select class="form-control form-group" style="padding: .6rem 1rem; position: relative; font-size: 14px !important; border-radius: 10px;    background-size: 12px!important; background-position: 91% 50%!important;" id="exampleFormControlSelect1">
											<option>Select Gender</option>
											<option>All</option>
											<option>Male</option>
											<option>Female</option>
										</select>
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Transaction Start Period
										</label>
										<input type="date" class="form-control form-control-user" placeholder="From Date" value="" style="font-size: 14px !important; border-radius: 10px;"/>
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Transaction End Period
										</label>
										<input type="date" class="form-control form-control-user" placeholder="From Date" value="" style="font-size: 14px !important; border-radius: 10px;"/>
									</div>
								</div>
								<div class="row mt-1">
									<div class="col-md-3 venue_inputs">
										<label>
											Date
										</label>
										<input type="date" class="form-control form-control-user" placeholder="DOB" value="Today"style="font-size: 14px !important;    padding: .6rem 1rem; border-radius: 10px; background-size: 12px!important; background-position: 91% 50%!important;" />
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											City of residence
										</label>
										<select class="form-control form-group" style="padding: .6rem 1rem; position: relative; font-size: 14px !important; border-radius: 10px;background-size: 12px!important; background-position: 91% 50%!important;" id="exampleFormControlSelect1">
											<option>Select Residence</option>
											<option>All</option>
											<option>Dubai</option>
										</select>
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Transaction Amount Condition
										</label>
										<select class="form-control form-group" style="padding: .6rem 1rem; position: relative; font-size: 14px !important; border-radius: 10px;background-size: 12px!important; background-position: 91% 50%!important;" id="exampleFormControlSelect1">
											<option>Select  Amount </option><option>Between</option>
											<option>Around</option>
											<option>Center</option>
										</select>
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Transaction Amount
										</label>
										<div class="d-flex">
											<input type="text" class="form-control form-control-user" placeholder="Price" value="5000" style="font-size: 14px !important; border-radius: 10px; margin-right: 12px;"/>
											<input type="text" class="form-control form-control-user" placeholder="Price" value="10000" style="font-size: 14px !important; border-radius: 10px;"/>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Offer Name
							</label>
							<input type="email" class="form-control form-control-user" placeholder="Offer Name" value="Offer Ladies Night" />
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Venue Name
							</label>
							<select class="form-control form-group" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
									<option>Select Venue Name</option><option>Salt & Caramel</option>
									<option>Offer Ladies Night</option>

								</select>
						</div>
					</div>
					<div class="row pr-5 pl-3  mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Offer Description
							</label>
							<!-- <input type="text" class="form-control form-control-user" placeholder="Menu Link" value="https://www.pacificotiki.com/menu.pdf" /> -->
							<textarea class="form-control" style="font-size: 14px !important" name="" id="" rows="2" placeholder="Offer Description">We have a Special coffee on your birthday</textarea>
						</div>
						<div class="col-md-6 venue_inputs">
							<div class="">
								<label>
									Address (Should Be Auto Filled)
								</label>

								<input type="text" class="form-control form-control-user" placeholder="Image" value="Al Bandar | Al Raha Beach | Abu Dhabi" disabled style="background-color: #8D8A8A !important" />
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Image
							</label>
							<input type="email" class="form-control form-control-user" placeholder="Image" value="Birthday Offer.jpg" disabled=""/>
						</div>
						<div class="col-md-6 venue_inputs">
							<div style="margin-top: -13px;">
								<label>
									Phone Contact (Should Be Auto Filled)
								</label>

								<input type="text" class="form-control form-control-user" placeholder="Image" value="800909090" disabled style="background-color: #8D8A8A !important" />
							</div>
						</div>	
					</div>
					<label class="applicable-date mt-3">
						Expiry Date
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
							<div class="" style="margin-top: -38px;">
								<label>
									Google Map Location Link (Should Be Auto Filled)
								</label>

								<textarea class="form-control" style="font-size: 14px !important; background-color: #8D8A8A !important; overflow-y: hidden;" name="" id="" rows="3" placeholder="Book Now Link"  disabled >https://www.google.com/maps/dir/?api=1&destination=Abu%20Dhabi%20-%20United%20Arab%20Emirates</textarea>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Time
							</label>
							<input type="text" class="form-control form-control-user" placeholder="To Date" value="7:00 AM"  id="timepicker3"/>
						</div>
						<div class="col-md-6 venue_inputs">
								<div  style="margin-top: -7px;">
								<label>
									Book Now Link (Should Be Auto Filled)
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
	<script src="../assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>

	<!-- jQuery UI -->
	<script src="../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>


	<!-- Chart JS -->
	<script src="../assets/js/plugin/chart.js/chart.min.js"></script>

	<!-- jQuery Sparkline -->
	<script src="../assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

	<!-- Chart Circle -->
	<script src="../assets/js/plugin/chart-circle/circles.min.js"></script>

	<!-- Datatables -->
	<script src="../assets/js/plugin/datatables/datatables.min.js"></script>

	<!-- Bootstrap Notify -->
	<!-- <script src="../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script> -->

	<!-- jQuery Vector Maps -->
	<script src="../assets/js/plugin/jqvmap/jquery.vmap.min.js"></script>
	<script src="../assets/js/plugin/jqvmap/maps/jquery.vmap.world.js"></script>

	<!-- Sweet Alert -->
	<script src="../assets/js/plugin/sweetalert/sweetalert.min.js"></script>

	<!-- Atlantis JS -->
	<script src="../assets/js/atlantis.min.js"></script>
	<script src="../assets/js/mdtimepicker.js" type="text/javascript"></script>

	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<script src="../assets/js/setting-demo.js"></script>
	<script src="../assets/js/demo.js"></script>
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