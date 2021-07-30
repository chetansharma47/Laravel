<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title> Loyalty Cash Back Settings</title>
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
		.scroll-text {
			width: 403px;
	    	overflow-y: auto;
		    max-height:180px;
		}

		.scroll-text::-webkit-scrollbar {
		    display: none;
		}

		.venue_inputs {
			position: relative;
		}
		img.upload_icon {
			position: absolute;
		    width: 30px;
		    top: 35px;
		    right: 20px;
		    cursor: pointer;
		}


		.menu-lisitng ul {
		    height: 474px;
		    overflow-x: auto;
		    margin-bottom: 0;
		    
		}

		.menu-lisitng ul::-webkit-scrollbar {
		    display: none;
		}

		.box_icon {
		    display: flex;
		    justify-content: space-between;
		    height: unset!important;
		    width: 100%;
		    margin-left: unset!important;
		    background: #E3DFDF!important;
		}



		#validationModel .modal-title{
		    text-align: center;
		    width: 100%;
		    font-size: 20px;
		    font-weight: 600;
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

		div#loaderImg2 {
		    position: absolute;
		    left: 0;
		    right: 0;
		    text-align: center;
		    margin-top: 250px;
		}

		p.no_tier_found {
		    font-size: 16px;
		    font-weight: 800;
		    margin-right: 130px;
		    text-align: center;
		    margin-top: 24px;
		}

		p.no_venue_find {
		    margin-top: 100px;
		    font-size: 16px;
		    font-weight: 800;
		    text-align: center;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>   Loyalty Cash Back Settings</a>
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
	<section class="mt-2 mb-5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<div class="app_notification_bg" style="background-color: transparent;">
						<h4>Base Cash Back Percentage</h4>
						<div class="scroll-text">
							@if(!empty($tier) && isset($tier->tierConditions) && count($tier->tierConditions) > 0)
							@foreach($tier->tierConditions as $condition)
							<div class="d-flex align-items-center">
								<div class="venue_inputs mr-4">
									<label style="width: 135px;" data-id = "{{$condition->id}}" tier_name = "{{$condition->tier_name}}" class="tier_heading">
										{{$condition->tier_name}}
									</label>
								</div>
								<div class="venue_inputs mr-4">
									<div class="d-flex">
										<input type="text" class="form-control form-control-user double tier_percentage" placeholder="" value="0.0" data-id="{{$condition->id}}" style="font-size: 14px !important; border-radius: 0px; width: 50px"/>
										<input type="text" class="form-control form-control-user" placeholder="Percentage" data-id="{{$condition->id}}" value="%" style="font-size: 14px !important; border-radius: 0px; width: 42px" disabled/>
									</div>
								</div>
								<div>
									<a href="javascript:void(0);" data-id="{{$condition->id}}" class="btn btn-primary btn-user btn-block common_btn tier_save_btn" style="padding: 0px; font-size: 20px; width: 110px;">
		                      			SAVE
		                    		</a>
								</div>
							</div>	
							@endforeach()

							@else
							<p class="no_tier_found">No Tier Found.</p>
							@endif()
							
							
						</div>
					</div>
				</div>

				@if(!empty($wallet_cashback))
				<div class="col-md-6">
					<div class="app_notification_bg" style="background-color: transparent;">
						<h4>More Wallet Cash Backs</h4>
						<div class="d-flex align-items-center">
							<div class="venue_inputs mr-4">
								<label style="width: 99px;" type="bonus">
									Bonus
								</label>
							</div>
							<div class="venue_inputs mr-4">
								<div class="d-flex">
									<input type="text" class="form-control form-control-user integer bonus" placeholder="" value="{{$wallet_cashback->bonus}}" style="font-size: 14px !important; border-radius: 0px; width: 106px" data-id="{{$wallet_cashback->id}}"/>
									<input type="text" class="form-control form-control-user bonus_text"  maxlength="3" value="{{$wallet_cashback->bonus_text}}" placeholder="AED" style="font-size: 14px !important; border-radius: 0px; width: 60px" data-id="{{$wallet_cashback->id}}"/>
								</div>
								
							</div>
							<div>
								<a href="javascript:void(0);" data-id="{{$wallet_cashback->id}}" class="btn btn-primary btn-user btn-block common_btn more_wallet_save" style="    padding: 0px; font-size: 20px; width: 110px;">
	                      			SAVE
	                    		</a>
							</div>
						</div>	
						<div class="d-flex align-items-center mt-2">
							<div class="venue_inputs mr-4">
								<label style="width: 99px;" type="refere_friend">
									Refer A Friend
								</label>
							</div>
							<div class="venue_inputs mr-4">
								<div class="d-flex">
									<input type="text" class="form-control form-control-user integer refere_friend" placeholder="" value="{{$wallet_cashback->refer_friend}}" style="font-size: 14px !important; border-radius: 0px; width: 106px" data-id="{{$wallet_cashback->id}}"/>
									<input type="text" class="form-control form-control-user refer_friend_text" placeholder="AED" maxlength="3" value="{{$wallet_cashback->refer_friend_text}}" style="font-size: 14px !important; border-radius: 0px; width: 60px" data-id="{{$wallet_cashback->id}}"/>
								</div>
							</div>
							<div>
								<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn more_wallet_save" style="padding: 0px; font-size: 20px; width: 110px;" data-id="{{$wallet_cashback->id}}">
	                      			SAVE
	                    		</a>
							</div>
						</div>
					</div>
				</div>


				@else

				<div class="col-md-6">
					<div class="app_notification_bg" style="background-color: transparent;">
						<h4>More Wallet Cash Backs</h4>
						<div class="d-flex align-items-center">
							<div class="venue_inputs mr-4">
								<label style="width: 99px;" type="bonus">
									Bonus
								</label>
							</div>
							<div class="venue_inputs mr-4">
								<div class="d-flex">
									<input type="text" class="form-control form-control-user integer bonus" placeholder="" value="0" style="font-size: 14px !important; border-radius: 0px; width: 106px" data-id=""/>
									<input type="text" class="form-control form-control-user bonus_text" placeholder="AED"  maxlength="3" value="" style="font-size: 14px !important; border-radius: 0px; width: 60px" data-id=""/>
								</div>
								
							</div>
							<div>
								<a href="javascript:void(0);" data-id="" class="btn btn-primary btn-user btn-block common_btn more_wallet_save" style="    padding: 0px; font-size: 20px; width: 110px;">
	                      			SAVE
	                    		</a>
							</div>
						</div>	
						<div class="d-flex align-items-center mt-2">
							<div class="venue_inputs mr-4">
								<label style="width: 99px;" type="refere_friend">
									Refer A Friend
								</label>
							</div>
							<div class="venue_inputs mr-4">
								<div class="d-flex">
									<input type="text" class="form-control form-control-user integer refere_friend" placeholder="" value="0" style="font-size: 14px !important; border-radius: 0px; width: 106px" data-id=""/>
									<input type="text" class="form-control form-control-user refer_friend_text" placeholder="AED" maxlength="3" value="" style="font-size: 14px !important; border-radius: 0px; width: 60px" data-id=""/>
								</div>
							</div>
							<div>
								<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn more_wallet_save" style="padding: 0px; font-size: 20px; width: 110px;" data-id="">
	                      			SAVE
	                    		</a>
							</div>
						</div>
					</div>
				</div>

				@endif()

			</div>
		</div>
	</section>

	@if(count($venues) > 0)
	<section class="events_venue_details" style="background-color: transparent;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2  pr-0 ">
					<div class="pt-5 pb-3 pl-3 menu-lisitng">
						<ul style="margin-left: 0px !important;background-color: #E3DFDF; height: 521px;">
							<?php
								$v = 0;
						 	?>
							@foreach($venues as $venue)
								@if($v == 0)
								<li class="active">
									<a href="javascript:void(0);">{{$venue->venue_name}}</a>
								</li>
								@else
								<li class="">
									<a href="javascript:void(0);">{{$venue->venue_name}}</a>
								</li>
								@endif()
							<?php $v++; ?>
							@endforeach()
							<div class="d-flex justify-content-between" style="visibility: hidden;">
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

				<input type="hidden" id="cashback_last_id" value="{{$last_id}}">
				<div class="col-md-3">
					<div class="pt-5 pb-3 pl-3 menu-lisitng">
						<ul style="margin-left: 0px !important;background-color: #E3DFDF;">
							<li class="active">
								<a href="javascript:void(0);">Feb Promotion Hours</a>
							</li>
							<li>
								<a href="javascript:void(0);">Eid Cash Back %</a>
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
							
						</ul>

						<div class="d-flex justify-content-between">
								<ul class="box_icon">
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);">
										<img id="plus_icon" src="{{url('public/admin/assets/img/icon.png')}}" alt="icon"/>
									</a>
								</li>
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);">
										<img id="minus_icon" src="{{url('public/admin/assets/img/icon1.png')}}" alt="icon1"/>
									</a>
								</li>
								</ul>
							</div>
					</div>
				</div>
				<div class="col-md-7 padding-top">
					<div class="row pr-3 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Promotion Cash Back Name
							</label>
							<input type="email" class="form-control form-control-user" placeholder="Promotion Cash Back Name" value="Feb Promotion hours" />
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Image
							</label>
							<input type="text" class="form-control form-control-user" title="LadiesNight.jpgsssssssssssdadadasdasdsadss" placeholder="Image" value="LadiesNight.jpgssssssssss...." disabled="true" />
							<img src="{{url('public/upload_icon.png')}}" title="Click to upload image" alt="" class="upload_icon" />
						</div>
					</div>
					<div class="row pr-3 pl-3 mt-3">
						<div class="col-md-12 venue_inputs">
							<label>
								When
							</label>
							<div class="checkboxesbg">
								<div class="d-flex flex-wrap">
									<div class="mr-2">
										<label class="tick_box"><span class="date">Monday</span>
											<input type="checkbox" checked="checked">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Tuesday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Wednesday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Thursday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Friday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Saturday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div>
										<label class="tick_box"><span class="date">Sunday</span>
											<input type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
								</div>
							</div>
						</div>	
					</div>
					<label class="applicable-date mt-3">
						Applicable Dates
					</label>
					<div class="row pr-3 pl-3 mt-0">
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
							<div class="">
								<label>
									Created 
								</label>
								<input type="text" class="form-control form-control-user" placeholder="To Date" value="Nadeer on 20/05/2021 08:00 AM" disabled style="    background-color: #8D8A8A !important;" />
							</div>
						</div>
					</div>
					<div class="row pr-3 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Time
							</label>
							<input type="text" class="form-control form-control-user" placeholder="To Date" value="7:00 AM"  id="timepicker3" />
						</div>
						<div class="col-md-6 venue_inputs">
								<div>
								<label>
									Last Updated 
								</label>

								<input type="text" class="form-control form-control-user" placeholder="Last Updated " value="Melvin on 20/05/2021 09:00 PM" disabled style="    background-color: #8D8A8A !important;" />
							</div> 
						</div>
					</div>
					<div class="row pr-3 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Cash Back Percentage
							</label>
							<div class="d-flex">
									<input type="text" class="form-control form-control-user" placeholder="" value="0" style="border-radius: 0px; width: 90px; background-color: #F64141 !important; color: #fff !important;     padding: 0px 28px !important;"/>
									<input type="text" class="form-control form-control-user" placeholder="" value="%" style=" border-radius: 0px; width: 48px"/>
							</div>
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
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="width: 100% !important;">
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
	@else
	<p class="no_venue_find">No Venue Found.</p>
	@endif()


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
        <p id="alert_text">Info Text</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">Ok</button>
       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="successModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Information</h5>
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


<div id="loaderModel" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <div class="loaderImg2" id="loaderImg2">
               <img src = "{{url('public/loader.gif')}}">
            </div>

  </div>
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
<!-- 	<script src="{{url('public/admin/assets/js/demo.js')}}"></script> -->
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


    <script type="text/javascript">
	$(document).ready(function(){
		$(document).on("keypress",".double",function (event) {
	        return isNumber(event, this)
		});

		// THE SCRIPT THAT CHECKS IF THE KEY PRESSED IS A NUMERIC OR DECIMAL VALUE.
		function isNumber(evt, element) {
		    var charCode = (evt.which) ? evt.which : event.keyCode
				if($(element).val().indexOf('.') != -1){
					$(".double").attr("maxlength","4");	
				}else{
					$(".double").attr("maxlength","3");
				}

				console.log($(element).val())

				
		    if (            
		        (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
		        (charCode < 48 || charCode > 57)){

		        return false;
			}else{

			        return true;
			}

		}


		$(document).on('keydown keyup change',".double", function(e){
		    if ($(this).val() > 100 
		        && e.keyCode !== 46 // keycode for delete
		        && e.keyCode !== 8 // keycode for backspace
		       ) {
		       e.preventDefault();
		       $(this).val(100);
		    }
		});



		$('.integer').keypress(function (event) {
	        return isInteger(event, this)
		});

		// THE SCRIPT THAT CHECKS IF THE KEY PRESSED IS A NUMERIC OR DECIMAL VALUE.
		function isInteger(evt, element) {
		    var charCode = (evt.which) ? evt.which : event.keyCode
			$(".integer").attr("maxlength","11");	

			console.log($(element).val())

				
		    if (            
		        (charCode != 46 || $(element).val().indexOf('.') == -1) &&      // “.” CHECK DOT, AND ONLY ONE.
		        (charCode < 48 || charCode > 57)){

		        return false;
			}else{

			        return true;
			}

		}


		$(document).on("click",".tier_save_btn",function(){
			let data_id = $(this).data("id");
			let check_tier_percentage_val = $(".tier_percentage[data-id='"+data_id+"']").val();
			let tier_name = $(".tier_heading[data-id='"+data_id+"']").attr("tier_name");
			if(check_tier_percentage_val == "" || check_tier_percentage_val == 0 || check_tier_percentage_val == "0"){
				$("#alert_text").text("Please enter valid percentage for "+tier_name+".");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}


			var data = {
	        	'_token': "{{csrf_token()}}",
	        	"update_type": "tier_percentage",
	        	"tier_condition_id" : data_id,
	        	"percentage_value" : check_tier_percentage_val,
	        	"tier_name" : tier_name
        	};

        	ajaxCalling(data)
		});


		$(document).on("click",".more_wallet_save",function(){
			let data_id = $(this).data("id");
			let check_name = $(this).parent().parent().find('label').first().attr("type");

			let data;
			if(check_name == "bonus"){

				let check_bonus_value = $(this).parent().parent().find(".bonus").val();
				let check_bonus_text_value = $(this).parent().parent().find(".bonus_text").val();

				if(check_bonus_value == 0 || check_bonus_value == "0" || check_bonus_value == ""){
					$("#alert_text").text("Please enter valid value for bonus");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}

				if(check_bonus_text_value == ""){
					$("#alert_text").text("Please enter text for bonus.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
				

				data = {
		        	'_token': "{{csrf_token()}}",
		        	"update_type": "more_wallet_cashback",
		        	"wallet_cashback_id" : data_id,
		        	"bonus" : check_bonus_value,
		        	"bonus_text" : check_bonus_text_value,
		        	"wallet_type" : "bonus"
	        	};

			}else if(check_name == "refere_friend"){
				let check_refere_friend_value = $(this).parent().parent().find(".refere_friend").val();
				let check_refere_friend_text_value = $(this).parent().parent().find(".refer_friend_text").val();
				
				if(check_refere_friend_value == 0 || check_refere_friend_value == "0" || check_refere_friend_value == ""){
					$("#alert_text").text("Please enter valid value for refer a friend.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}

				if(check_refere_friend_text_value == ""){
					$("#alert_text").text("Please enter text for refer a friend.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}

				data = {
		        	'_token': "{{csrf_token()}}",
		        	"update_type": "more_wallet_cashback",
		        	"wallet_cashback_id" : data_id,
		        	"refer_friend" : check_refere_friend_value,
		        	"refer_friend_text" : check_refere_friend_text_value,
		        	"wallet_type" : "Refere a friend"
	        	};

			}

			ajaxCalling(data);
		})

		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
		});

	});



	function ajaxCalling(data){

	  	$.ajax({
	          url:"{{route('admin.cashBack')}}",
	          type:'POST',
	          data:data,
	          beforeSend:function(){
	          	$("#loaderModel").modal("show");
				$("#loaderModel").unbind("click");
	          },
	          success: function(res){
	          	console.log(res)
	          	setTimeout(function(){
	          		if(res.update_type == "tier_percentage"){

		          		$("#loaderModel").modal("hide");
		          		$("#success_alert_text").text(res.tier_name+" percentage has been updated successfully.");
		          		$("#successModel").modal("show");
	          		}else if(res.update_type == "more_wallet_cashback"){
	          			$("#loaderModel").modal("hide");
		          		$("#success_alert_text").text(res.wallet_type+" has been updated successfully.");
		          		$("#successModel").modal("show");
	          		}

	          	},500);
	          },
	          error: function(data, textStatus, xhr) {
	            if(data.status == 422){
	              var result = data.responseJSON;
	              alert('Something went worng.');
	              window.location.href = "";
	              return false;
	            } 
	      	}
	    });
	}
</script>
	
</body>