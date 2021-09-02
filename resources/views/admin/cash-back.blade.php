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
		    max-height:505px;
		}

		/*.scroll-text::-webkit-scrollbar {
		    display: none;
		}
		*/

		.tier_heading{
			word-break: break-all;
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

		/*.menu-lisitng ul::-webkit-scrollbar {
		    display: none;
		}*/

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

		input.cashback_name_input {
		    border: 0!important;
		    background-color: #EBEBEB;
		    color: #4B4B4B!important;
		    font-family: 'Signika', sans-serif;
		    font-weight: 700;
		    width: 100%;
		}

		.modal-footer {
		    padding: 0.3rem;
		}

		.d-flex {
		    margin-bottom: 5px;
		}

		#confirmationModel .modal-title{
		    text-align: center;
		    width: 100%;
		    font-size: 20px;
		    font-weight: 600;
		}
		#confirmationModel .modal-header {
		    background-color: #5f5f5f;
		    color: #fff;
		    justify-content: center;
		}

		#confirmationModel .modal-body {
			text-align: center;
		}

		#confirmationModel .modal-body p {
			margin-bottom: 0rem;
		}

		.venue_name a{
			word-break: break-all;
		}

	</style>
</head>
<body>

	<?php 
		$current_date = Carbon\Carbon::now()->toDateString();
	?>
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
	<section class="mt-2 mb-5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<div class="app_notification_bg" style="background-color: #E5E5E5;">
						<h4>Base Cash Back Percentage</h4>
						<div class="scroll-text">
							@if(!empty($tier) && isset($tier->tierConditions) && count($tier->tierConditions) > 0)
							@foreach($tier->tierConditions as $condition)
							<div class="d-flex">
								<div class="venue_inputs mr-4">
									<label style="width: 135px;" data-id = "{{$condition->id}}" tier_name = "{{$condition->tier_name}}" class="tier_heading">
										{{$condition->tier_name}}
									</label>
								</div>
								<div class="venue_inputs mr-4">
									<div class="d-flex">
										<input type="text" class="form-control form-control-user double tier_percentage" placeholder="" value="{{$condition->percentage}}" data-id="{{$condition->id}}" style="font-size: 14px !important; border-radius: 0px; width: 50px"/>
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
					<div class="app_notification_bg" style="background-color: #E5E5E5;">
						<h4>More Wallet Cash Backs</h4>
						<div class="d-flex">
							<div class="venue_inputs mr-4">
								<label style="width: 99px;" type="bonus">
									Bonus
								</label>
							</div>
							<div class="venue_inputs mr-4">
								<div class="d-flex">
									<input type="text" class="form-control form-control-user double1 bonus" placeholder="" value="{{$wallet_cashback->bonus}}" style="font-size: 14px !important; border-radius: 0px; width: 106px" data-id="{{$wallet_cashback->id}}"/>
									<input type="text" class="form-control form-control-user bonus_text"  maxlength="3" value="{{$wallet_cashback->bonus_text}}" placeholder="AED" style="font-size: 14px !important; border-radius: 0px; width: 60px" data-id="{{$wallet_cashback->id}}" disabled="true" />
								</div>
								
							</div>
							<div>
								<a href="javascript:void(0);" data-id="{{$wallet_cashback->id}}" class="btn btn-primary btn-user btn-block common_btn more_wallet_save" style="    padding: 0px; font-size: 20px; width: 110px;">
	                      			SAVE
	                    		</a>
							</div>
						</div>	
						<div class="d-flex mt-2">
							<div class="venue_inputs mr-4">
								<label style="width: 99px;" type="refere_friend">
									Refer A Friend
								</label>
							</div>
							<div class="venue_inputs mr-4">
								<div class="d-flex">
									<input type="text" class="form-control form-control-user double1 refere_friend" placeholder="" value="{{$wallet_cashback->refer_friend}}" style="font-size: 14px !important; border-radius: 0px; width: 106px" data-id="{{$wallet_cashback->id}}"/>
									<input type="text" class="form-control form-control-user refer_friend_text" placeholder="AED" maxlength="3" value="{{$wallet_cashback->refer_friend_text}}" style="font-size: 14px !important; border-radius: 0px; width: 60px" data-id="{{$wallet_cashback->id}}" disabled="true" />
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
					<div class="app_notification_bg" style="background-color: #E5E5E5;">
						<h4>More Wallet Cash Backs</h4>
						<div class="d-flex">
							<div class="venue_inputs mr-4">
								<label style="width: 99px;" type="bonus">
									Bonus
								</label>
							</div>
							<div class="venue_inputs mr-4">
								<div class="d-flex">
									<input type="text" class="form-control form-control-user integer bonus" placeholder="" value="0" style="font-size: 14px !important; border-radius: 0px; width: 106px" data-id=""/>
									<input type="text" class="form-control form-control-user bonus_text" placeholder="AED"  maxlength="3" value="AED" style="font-size: 14px !important; border-radius: 0px; width: 60px" data-id="" disabled="true" />
								</div>
								
							</div>
							<div>
								<a href="javascript:void(0);" data-id="" class="btn btn-primary btn-user btn-block common_btn more_wallet_save" style="    padding: 0px; font-size: 20px; width: 110px;">
	                      			SAVE
	                    		</a>
							</div>
						</div>	
						<div class="d-flex mt-2">
							<div class="venue_inputs mr-4">
								<label style="width: 99px;" type="refere_friend">
									Refer A Friend
								</label>
							</div>
							<div class="venue_inputs mr-4">
								<div class="d-flex">
									<input type="text" class="form-control form-control-user integer refere_friend" placeholder="" value="0" style="font-size: 14px !important; border-radius: 0px; width: 106px" data-id=""/>
									<input type="text" class="form-control form-control-user refer_friend_text" placeholder="AED" maxlength="3" value="AED" style="font-size: 14px !important; border-radius: 0px; width: 60px" data-id="" disabled="true" />
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
								<li class="active venue_name" data-id="{{$venue->id}}">
									<a href="javascript:void(0);">{{$venue->venue_name}}</a>
								</li>
								@else
								<li class="venue_name" data-id="{{$venue->id}}">
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
						<ul style="margin-left: 0px !important;background-color: #E3DFDF;" class="cashback_name_list">
							<!-- <li class="active">
								<a href="javascript:void(0);">Feb Promotion Hours</a>
							</li>
							<li>
								<a href="javascript:void(0);">Eid Cash Back %</a>
							</li> -->
							
							
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
				<div class="col-md-7 padding-top append_data">

				<!-- <div class="form_data_show">
					<div class="row pr-3 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Promotion Cash Back Name
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Promotion Cash Back Name" value="Feb Promotion hours" />
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
				</div> -->


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

<div class="modal fade" id="confirmationModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Alert</h5>
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> -->
      </div>
      <div class="modal-body">
        <p id="confirmation_alert_text">Info Text</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary confirm_ok" onclick="return removePromotionCashback();" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">Yes</button>
        <button type="button" class="btn btn-secondary confirm_no" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">No</button>
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
	


    <script type="text/javascript">
	$(document).ready(function(){
		$(document).on("keypress",".double",function (event) {
	        return isNumber(event, this)
		});

		$(document).on("keypress",".double1",function (event) {
	        return isNumber1(event, this)
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

		function isNumber1(evt, element) {
		    var charCode = (evt.which) ? evt.which : event.keyCode
				if($(element).val().indexOf('.') != -1){
					$(".double1").attr("maxlength","11");	
				}else{
					$(".double1").attr("maxlength","10");
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

			if(check_tier_percentage_val == ""){
				$("#alert_text").text("Please enter base cashback percentage.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(check_tier_percentage_val == 0 || check_tier_percentage_val == "0"){
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

				if(check_bonus_value == ""){
					$("#alert_text").text("Please enter bonus.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}

				if(check_bonus_value == 0 || check_bonus_value == "0"){
					$("#alert_text").text("Please enter valid value for bonus.");
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
		        	"wallet_type" : "Bonus details"
	        	};

			}else if(check_name == "refere_friend"){
				let check_refere_friend_value = $(this).parent().parent().find(".refere_friend").val();
				let check_refere_friend_text_value = $(this).parent().parent().find(".refer_friend_text").val();

				if(check_refere_friend_value == ""){
					$("#alert_text").text("Please enter value for Refer A Friend.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
				
				if(check_refere_friend_value == 0 || check_refere_friend_value == "0"){
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
		        	"wallet_type" : "Refer a friend cashback details"
	        	};

			}

			ajaxCalling(data);
		})

		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
			$("#successModel").modal("hide");
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
		          		$("#success_alert_text").text(res.tier_name+" cashback percentage details has been updated successfully.");
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
	              $("#loaderModel").modal("hide");
	              return false;
	            } 
	      	}
	    });
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#plus_icon").on("click",function(){
			let last_cashback_unique_id = $("#cashback_last_id").val();
			let unique_id = parseInt(last_cashback_unique_id) + 1;
			$("#cashback_last_id").val(unique_id);
			let venu_id = $(".venue_name.active").data("id");
			let remove_pre_active = $(".cashback_name_show.active").removeClass("active").children(".cashback_name_input").css({"background-color" : "#E3DFDF","cursor":"pointer"});

			$(".cashback_name_list").append(`<li class="cashback_name_show active" venu_id = "`+venu_id+`" unique_id = "`+unique_id+`">
								<input type="text" class="cashback_name_input" maxlength="30" value="" venu_id="`+venu_id+`" unique_id="`+unique_id+`" placeholder="Enter Promotion Cash Back Name">
							</li>`);

			$(".form_data_show").removeClass("active").css("display","none");
			$(".append_data").append(`<div class="form_data_show active" unique_id="`+unique_id+`">
					<div class="row pr-3 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Promotion Cash Back Name
							</label>
							<input type="text" class="form-control form-control-user cashback_input2" maxlength="30" placeholder="Enter Promotion Cash Back Name" value="" unique_id="`+unique_id+`" />
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Image
							</label>
							<div class="open_new_tab">
								<input type="text" class="form-control form-control-user file_name_show" title="" placeholder="" value="" disabled="true" unique_id="`+unique_id+`" />
							</div>
							<img src="{{url('public/upload_icon.png')}}" title="Click to upload image" alt="" class="upload_icon" unique_id="`+unique_id+`" />
							<input type="file" class="file_name" unique_id="`+unique_id+`" style="display:none" img="false" accept = image/*>
						</div>
					</div>
					<div class="row pr-3 pl-3 mt-3">
						<div class="col-md-12 venue_inputs">
							<label>
								When
							</label>
							<input type="hidden" class="days" unique_id="`+unique_id+`" value="">
							<div class="checkboxesbg">
								<div class="d-flex flex-wrap">
									<div class="mr-2">
										<label class="tick_box"><span class="date">Monday</span>
											<input type="checkbox" unique_id="`+unique_id+`" data-id="Monday" class="checkbox_click">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Tuesday</span>
											<input type="checkbox" unique_id="`+unique_id+`" data-id="Tuesday" class="checkbox_click">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Wednesday</span>
											<input type="checkbox" unique_id="`+unique_id+`" data-id="Wednesday" class="checkbox_click">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Thursday</span>
											<input type="checkbox" unique_id="`+unique_id+`" data-id="Thursday" class="checkbox_click">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Friday</span>
											<input type="checkbox" unique_id="`+unique_id+`" data-id="Friday" class="checkbox_click">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box"><span class="date">Saturday</span>
											<input type="checkbox" unique_id="`+unique_id+`" data-id="Saturday" class="checkbox_click">
											<span class="checkmark"></span>
										</label>
									</div>
									<div>
										<label class="tick_box"><span class="date">Sunday</span>
											<input type="checkbox" unique_id="`+unique_id+`" data-id="Sunday" class="checkbox_click">
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
							<input type="date" class="form-control form-control-user from_date" placeholder="From Date" value="" unique_id="`+unique_id+`" min="{{$current_date}}"/>
						</div>
						<div class="col-md-3 venue_inputs">
							<label>
								To Date
							</label>
							<input type="date" class="form-control form-control-user to_date" placeholder="To Date" value="" unique_id="`+unique_id+`" min="{{$current_date}}"/>
						</div>
						<div class="col-md-6 venue_inputs">
							<div class="">
								<label>
									Created 
								</label>
								<input type="text" class="form-control form-control-user created_date" unique_id="`+unique_id+`"  value="" disabled style="background-color: #8D8A8A !important;" />
							</div>
						</div>
					</div>
					<div class="row pr-3 pl-3 mt-3">
						<div class="col-md-3 venue_inputs">
							<label>
								From Time
							</label>
							<input type="text" style="cursor:pointer;" class="form-control form-control-user from_time" unique_id="`+unique_id+`" />
						</div>

						<div class="col-md-3 venue_inputs">
							<label>
								To Time
							</label>
							<input type="text" style="cursor:pointer;" class="form-control form-control-user to_time" unique_id="`+unique_id+`" />
						</div>

						<div class="col-md-6 venue_inputs">
								<div>
								<label>
									Last Updated 
								</label>

								<input type="text" class="form-control form-control-user last_update"  value="" unique_id="`+unique_id+`" disabled style="background-color: #8D8A8A !important;" />
							</div> 
						</div>
					</div>
					<div class="row pr-3 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Cash Back Percentage
							</label>
							<div class="d-flex">
									<input type="text" class="form-control form-control-user cashback_perentage double" unique_id="`+unique_id+`" placeholder="" value="0.0" style="border-radius: 0px; width: 108px; background-color: #F64141 !important; color: #fff !important; padding: 0px 28px !important;"/>
									<input type="text" class="form-control form-control-user" placeholder="" value="%" style=" border-radius: 0px; width: 48px" disabled/>
							</div>
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Status
							</label>
							<div class="selectdiv">
								<select class="form-control form-group cashback_status" unique_id="`+unique_id+`" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
									<option value="">Select Status</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>

								</select>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block common_btn submit_btn" unique_id="`+unique_id+`" style="width: 100% !important;">
	                      		Save
	                    	</a>
                    	</div>	
					</div>
				</div>`);

			 $(".from_time[unique_id='"+unique_id+"']").mdtimepicker(); 
			 $(".to_time[unique_id='"+unique_id+"']").mdtimepicker(); 
		});


		$(document).on("click",'.upload_icon',function(){
			let unique_id = $(this).attr('unique_id');
			$(".file_name[unique_id='"+unique_id+"']").click();
			$(".file_name[unique_id='"+unique_id+"']").change(function(event){
				
				var file = event.target.files[0];
				let file_name = file.name;
				let slice_file_name;
				if(file_name.length > 24){

					slice_file_name = file_name.slice(0,24) + "...";
				}else{
					slice_file_name = file_name;
				}
        
              	if (file) {

	               	if(file.type == "image/jpeg" || file.type == "image/jpg" || file.type == "image/png"){

	                var size = event.target.files[0].size;

	                if(size > 5242880){
	                    //attr remove
	                    $(".file_name[unique_id='"+unique_id+"']").attr("img","false");
	                    $(".file_name[unique_id='"+unique_id+"']").attr("show_name",null);
	                    $("#alert_text").text("Image should be less than or equal to 5 MB.");
	                    $("#validationModel").modal("show");
	                    $("#validationModel").unbind("click");
	                    $(".file_name_show[unique_id='"+unique_id+"']").val("");
	                    $(".file_name_show[unique_id='"+unique_id+"']").attr("src","");
	                    return false;
	                }

	                var reader = new FileReader();
	                
	                reader.onload = function(e) {
	                  $(".file_name[unique_id='"+unique_id+"']").attr('src', e.target.result);
	                  $(".file_name[unique_id='"+unique_id+"']").attr('show_name', file_name);
	                  $(".file_name_show[unique_id='"+unique_id+"']").val(slice_file_name);
	                  $(".file_name_show[unique_id='"+unique_id+"']").attr("src",e.target.result);
	                  //attr set
	                  $(".file_name[unique_id='"+unique_id+"']").attr("img","true");
	                }
	        
	               	reader.readAsDataURL(file);
	               
	              	}else {
		                $(".file_name[unique_id='"+unique_id+"']").attr("img","false");
		                $(".file_name[unique_id='"+unique_id+"']").attr("show_name",null);
		                $("#alert_text").text("Please upload .jpg, .jpeg or .png format file only.");
		                $("#validationModel").modal("show");
		                $("#validationModel").unbind("click");
		                $(".file_name_show[unique_id='"+unique_id+"']").val("");
		                $(".file_name_show[unique_id='"+unique_id+"']").attr("src","");
		                return false;
	             	}
            	}

			});

		});




		$(document).on("click",".checkbox_click",function(){
			if($(this).prop("checked") == true){
				let unique_id = $(this).attr("unique_id");
				let day_select = $(this).data("id").toString();
			   	let selected_days = $(".days[unique_id='"+unique_id+"']").val();
			   	let split_selected_days = selected_days.split(",");
			   	split_selected_days = split_selected_days.filter(function (el) {
			   		if(el == ""){
			   			return el != "";
			   		}else{
			   			return el != null;
			   		}
				});
			   	
			   	if(split_selected_days.indexOf(day_select) == -1){
			   		if(split_selected_days.length > 0){
			   			$(".days[unique_id='"+unique_id+"']").val($(".days[unique_id='"+unique_id+"']").val() + "," + day_select);
			   		}else{
			   			$(".days[unique_id='"+unique_id+"']").val(day_select);
			   		}
			   	}

			}else{
				let unique_id = $(this).attr("unique_id");
				let day_select = $(this).data("id").toString();
			   	let selected_days = $(".days[unique_id='"+unique_id+"']").val();
			   	let split_selected_days = selected_days.split(",");
			   	split_selected_days = split_selected_days.filter(function (el) {
			   		if(el == ""){
			   			return el != "";
			   		}else{
			   			return el != null;
			   		}
				});

			   	
			   	if(split_selected_days.indexOf(day_select) != -1){
			   		split_selected_days.splice(split_selected_days.indexOf(day_select),1);

			   		if(split_selected_days.length > 0){
			   			split_selected_days = split_selected_days.toString();
			   			$(".days[unique_id='"+unique_id+"']").val(split_selected_days);
			   		}else{
			   			$(".days[unique_id='"+unique_id+"']").val("");
			   		}
		   		}

			}
		});

		$(document).on("click",".cashback_name_show",function(){
			let remove_pre_active = $(".cashback_name_show.active").removeClass("active").children(".cashback_name_input").css({"background-color" : "#E3DFDF","cursor":"pointer"});
			//active current unique_id
			let unique_id_active = $(this).attr("unique_id");

			$(this).addClass("active").children(".cashback_name_input").css({"background-color":"#EBEBEB","cursor":"unset"}).removeAttr("disabled");
			//remove prev active form
			let pre_active_form = $(".form_data_show").removeClass("active").css("display","none");

			//active current form
			$(".form_data_show[unique_id='"+unique_id_active+"']").addClass("active").css({"display" : "block"});
		});

		$(document).on("keyup keydown",".cashback_input2",function(){
			let unique_id = $(this).attr("unique_id");
			$(".cashback_name_show[unique_id='"+unique_id+"']").children(".cashback_name_input").val($(this).val())
		});

		$(document).on("keyup keydown",".cashback_name_input",function(){
			let unique_id = $(this).attr("unique_id");
			$(".cashback_input2[unique_id='"+unique_id+"']").val($(this).val())
		});


		$(document).on("click",".open_new_tab",function(){
	        let base_64 = $(this).children(".file_name_show").attr("src");
	        if(base_64 == "undefined" || base_64 == undefined || base_64 == ""){
	        	return false;
	        }
         	fetch(base_64)
         	.then(e => e.blob())
         	.then(e => {
	            console.log("-- ",e)
	            let obj = URL.createObjectURL(e);
	            console.log("-- ",obj)
	            window.open(obj);
         	})
         	.catch(e => {
 		   		console.log(e)
         	})
     	});

		$(document).on("click",".submit_btn",function(){
			let __action = $(this);
			let date = new Date().getDate();
			let year = new Date().getFullYear();
			let month = new Date().getMonth() + 1;
			if(month <= 10){
				month = "0"+month;
			}

			if(date <= 10){
				date = "0"+date;
			}
			let after_date_format = year+"-"+month+"-"+date;

			let unique_id = $(this).attr("unique_id");
			let check_name = $(".cashback_input2[unique_id='"+unique_id+"']").val();
			let file_data = $(".file_name[unique_id='"+unique_id+"']").attr("img");
			let days = $(".days[unique_id='"+unique_id+"']").val();
			let from_date = $(".from_date[unique_id='"+unique_id+"']").val();
			let to_date = $(".to_date[unique_id='"+unique_id+"']").val();
			let from_time = $(".from_time[unique_id='"+unique_id+"']").val();
			let to_time = $(".to_time[unique_id='"+unique_id+"']").val();
			let cashback_perentage = $(".cashback_perentage[unique_id='"+unique_id+"']").val();
			let cashback_status = $(".cashback_status[unique_id='"+unique_id+"']").val();
			let image = $(".file_name[unique_id='"+unique_id+"']").attr("src");
			let show_name = $(".file_name[unique_id='"+unique_id+"']").attr("show_name");
			let venu_id = $(".venue_name.active").data("id");
		
			if(check_name == ""){
				$("#alert_text").text("Please enter promotion cashback name.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(check_name != "" && check_name.length < 2){
				$("#alert_text").text("Promotion cashback name should be at least 2 characters.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(file_data == "false"){
				$("#alert_text").text("Please upload image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(days == ""){
				$("#alert_text").text("Please select days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(from_date == ""){
				$("#alert_text").text("Please select from date.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(to_date == ""){
				$("#alert_text").text("Please select to date.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(from_time == ""){
				$("#alert_text").text("Please select from time.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(to_time == ""){
				$("#alert_text").text("Please select to time.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(cashback_perentage == ""){
				$("#alert_text").text("Please enter cash back percentage.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}else if(cashback_perentage == "0" || cashback_perentage == 0){
				$("#alert_text").text("Please enter valid cash back percentage.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(cashback_status == ""){
				$("#alert_text").text("Please select status.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(from_date < after_date_format){
				$("#alert_text").text("From date should be greater than or equal to today.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(from_date > to_date){
				$("#alert_text").text("To date should be greater than or equal to from date.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			// if(from_date == to_date){
			// 	$("#alert_text").text("To date should be greater than from date.");
			// 	$("#validationModel").modal("show");
			// 	$("#validationModel").unbind("click");
			// 	return false;
			// }

			var data = {
	        	'_token': "{{csrf_token()}}",
	        	"unique_id_cashback": unique_id,
	        	"promotion_cashback_name": check_name,
	        	"image": image,
	        	"day_on": days,
	        	"from_date": from_date,
	        	"to_date": to_date,
	        	"from_time": from_time,
	        	"to_time": to_time,
	        	"cashback_percentage": cashback_perentage,
	        	"status": cashback_status,
	        	"venu_id" : venu_id,
	        	"name_of_file_show" : show_name
	    	};


			$.ajax({
		          url:"{{route('admin.cashbackSave')}}",
		          type:'POST',
		          data:data,
		          beforeSend:function(){
		          	$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
		          },
		          success: function(res){
		          	console.log(res)
		          	setTimeout(function(){
		          		$("#loaderModel").modal("hide");
		          		$(".created_date[unique_id='"+res.data.unique_id_cashback+"']").val(res.data.created_at);
		          		$(".last_update[unique_id='"+res.data.unique_id_cashback+"']").val(res.data.updated_at);

		          		if(res.update == "true"){

		          			$("#success_alert_text").text("Promotion cashback details updated successfully.");
		          		}else{
		          			$("#success_alert_text").text("Promotion cashback details saved successfully.");

		          		}
		          		$("#successModel").modal("show");
		          		$("#successModel").unbind("click");
		          		__action.text("Update");

		          	},500);
		          },
		          error: function(data, textStatus, xhr) {
		            if(data.status == 422){
		              var result = data.responseJSON;
		              alert('Something went worng.');
		              window.location.href = "";
		              $("#loaderModel").modal("hide");
		              return false;
		            } 
		      	}
		    });

		});
	});
</script>

<script type="text/javascript">
	$(document).ready(function(){
		let active_venue_id = $(".venue_name.active").data("id");
		var data = {
        	'_token': "{{csrf_token()}}",
        	"venue_id": active_venue_id
    	};

    	ajaxForCashbackData(data)

    	$(".venue_name").on("click",function(){
    		//remove_prev_active
    		$(".venue_name.active").removeClass("active");
    		let venue_id = $(this).data("id");
    		$(this).addClass("active");
    		var data = {
	        	'_token': "{{csrf_token()}}",
	        	"venue_id": venue_id
	    	};

	    	ajaxForCashbackData(data)

    	});
	});

	function ajaxForCashbackData(data){
		$.ajax({
	          url:"{{route('admin.cashBackAccordingToVenue')}}",
	          type:'POST',
	          data:data,
	          beforeSend:function(){
	          	$("#loaderModel").modal("show");
				$("#loaderModel").unbind("click");
	          },
	          success: function(res){
	          	console.log(res)
	          	setTimeout(function(){
	          		$("#loaderModel").modal("hide");

	          		let cashbacks = res.cashbacks;
	          		//blank if not save cashbacks data
	          		$(".cashback_name_list").html("");
	          		$(".append_data").html("");
	          		//
	          		for(let i=0; cashbacks.length > i; i++){
          				let last_cashback_unique_id = $("#cashback_last_id").val();
						let unique_id = parseInt(cashbacks[i]['unique_id_cashback']);


						let file_name = cashbacks[i]['name_of_file_show'];
						let slice_file_name;
						let have_img = "false";
						if(file_name != "" && file_name != null && file_name != "null" && file_name != "NULL"){

							if(file_name.length > 24){

								slice_file_name = file_name.slice(0,24) + "...";
							}else{
								slice_file_name = file_name;
							}
						}else{
							slice_file_name = "";
						}

						if(cashbacks[i]['image'].length > 0){
							have_img = "true";
						}
						

						let day_on = cashbacks[i]['day_on'];
						let split_day_on = day_on.split(",");
					   	split_day_on = split_day_on.filter(function (el) {
					   		if(el == ""){
					   			return el != "";
					   		}else{
					   			return el != null;
					   		}
						});

						let mo_select;
						let tu_select;
						let we_select;
						let th_select;
						let fr_select;
						let sa_select;
						let su_select;
						let select_active = '';
						let select_inactive = '';


						if(split_day_on.indexOf("Monday") != -1){
							mo_select = "checked";
						}

						if(split_day_on.indexOf("Tuesday") != -1){
							tu_select = "checked";
						}

						if(split_day_on.indexOf("Wednesday") != -1){
							we_select = "checked";
						}

						if(split_day_on.indexOf("Thursday") != -1){
							th_select = "checked";
						}

						if(split_day_on.indexOf("Friday") != -1){
							fr_select = "checked";
						}

						if(split_day_on.indexOf("Saturday") != -1){
							sa_select = "checked";
						}

						if(split_day_on.indexOf("Sunday") != -1){
							su_select = "checked";
						}

						if(cashbacks[i]['status'] == "Active"){
							select_active = "selected";
						}else if(cashbacks[i]['status'] == "Inactive"){
							select_inactive = "selected";
						}

	          			if(i == 0){


	          			$(".cashback_name_list").append(`<li class="cashback_name_show active" venu_id = "`+cashbacks[i]['venu_id']+`" unique_id = "`+unique_id+`">
								<input type="text" class="cashback_name_input" maxlength="30" value="`+cashbacks[i]['promotion_cashback_name']+`" venu_id="`+cashbacks[i]['venu_id']+`" unique_id="`+unique_id+`" placeholder="Enter Promotion Cash Back Name">
							</li>`);



							$(".append_data").append(`<div class="form_data_show active" unique_id="`+unique_id+`">
									<div class="row pr-3 pl-3">
										<div class="col-md-6 venue_inputs">
											<label>
												Promotion Cash Back Name
											</label>
											<input type="text" class="form-control form-control-user cashback_input2" maxlength="30" placeholder="Enter Promotion Cash Back Name" value="`+cashbacks[i]['promotion_cashback_name']+`" unique_id="`+unique_id+`" />
										</div>
										<div class="col-md-6 venue_inputs">
											<label>
												Image
											</label>
											<div class="open_new_tab">
												<input type="text" class="form-control form-control-user file_name_show" title="" placeholder="" value="`+slice_file_name+`" disabled="true" unique_id="`+unique_id+`" src="`+cashbacks[i]['image']+`" style="cursor:pointer;" />
											</div>
											<img src="{{url('public/upload_icon.png')}}" title="Click to upload image" alt="" class="upload_icon" unique_id="`+unique_id+`" />
											<input type="file" class="file_name" unique_id="`+unique_id+`" style="display:none" img="`+have_img+`" accept = image/*>
										</div>
									</div>
									<div class="row pr-3 pl-3 mt-3">
										<div class="col-md-12 venue_inputs">
											<label>
												When
											</label>
											<input type="hidden" class="days" unique_id="`+unique_id+`" value="`+cashbacks[i]['day_on']+`">
											<div class="checkboxesbg">
												<div class="d-flex flex-wrap">
													<div class="mr-2">
														<label class="tick_box"><span class="date">Monday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+mo_select+`  data-id="Monday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Tuesday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+tu_select+` data-id="Tuesday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Wednesday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+we_select+` data-id="Wednesday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Thursday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+th_select+` data-id="Thursday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Friday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+fr_select+` data-id="Friday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Saturday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+sa_select+` data-id="Saturday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div>
														<label class="tick_box"><span class="date">Sunday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+su_select+` data-id="Sunday" class="checkbox_click">
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
											<input type="date" class="form-control form-control-user from_date" placeholder="From Date" value="`+cashbacks[i]['from_date']+`" unique_id="`+unique_id+`" min="{{$current_date}}" />
										</div>
										<div class="col-md-3 venue_inputs">
											<label>
												To Date
											</label>
											<input type="date" class="form-control form-control-user to_date" placeholder="To Date" value="`+cashbacks[i]['to_date']+`" unique_id="`+unique_id+`" min="{{$current_date}}"/>
										</div>
										<div class="col-md-6 venue_inputs">
											<div class="">
												<label>
													Created 
												</label>
												<input type="text" class="form-control form-control-user created_date" unique_id="`+unique_id+`"  value="`+cashbacks[i]['created_at']+`" disabled style="background-color: #8D8A8A !important;" />
											</div>
										</div>
									</div>
									<div class="row pr-3 pl-3 mt-3">
										<div class="col-md-3 venue_inputs">
											<label>
												From Time
											</label>
											<input type="text" style="cursor:pointer;" class="form-control form-control-user from_time" unique_id="`+unique_id+`" value="`+cashbacks[i]['from_time']+`" />
										</div>

										<div class="col-md-3 venue_inputs">
											<label>
												To Time
											</label>
											<input type="text" style="cursor:pointer;" class="form-control form-control-user to_time" unique_id="`+unique_id+`" value="`+cashbacks[i]['to_time']+`" />
										</div>

										<div class="col-md-6 venue_inputs">
												<div>
												<label>
													Last Updated 
												</label>

												<input type="text" class="form-control form-control-user last_update"  value="`+cashbacks[i]['updated_at']+`" unique_id="`+unique_id+`" disabled style="background-color: #8D8A8A !important;" />
											</div> 
										</div>
									</div>
									<div class="row pr-3 pl-3 mt-3">
										<div class="col-md-6 venue_inputs">
											<label>
												Cash Back Percentage
											</label>
											<div class="d-flex">
													<input type="text" class="form-control form-control-user cashback_perentage double" unique_id="`+unique_id+`" placeholder="" value="`+cashbacks[i]['cashback_percentage']+`" style="border-radius: 0px; width: 108px; background-color: #F64141 !important; color: #fff !important; padding: 0px 28px !important;"/>
													<input type="text" class="form-control form-control-user" placeholder="" value="%" style=" border-radius: 0px; width: 48px" disabled/>
											</div>
										</div>
										<div class="col-md-6 venue_inputs">
											<label>
												Status
											</label>
											<div class="selectdiv">
												<select class="form-control form-group cashback_status" unique_id="`+unique_id+`" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
													<option value="">Select Status</option>
													<option value="Active" `+select_active+`>Active</option>
													<option value="Inactive" `+select_inactive+`>Inactive</option>

												</select>
											</div>
										</div>
									</div>
									<div class="row pr-5 pl-3 mt-3">
										<div class="col-md-6 venue_inputs">
											<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block common_btn submit_btn" unique_id="`+unique_id+`" style="width: 100% !important;">
					                      		Update
					                    	</a>
				                    	</div>	
									</div>
								</div>`);

	          			}else{

	          				$(".cashback_name_list").append(`<li class="cashback_name_show" venu_id = "`+cashbacks[i]['venu_id']+`" unique_id = "`+unique_id+`">
								<input type="text" class="cashback_name_input" maxlength="30" value="`+cashbacks[i]['promotion_cashback_name']+`" venu_id="`+cashbacks[i]['venu_id']+`" unique_id="`+unique_id+`" placeholder="Enter Promotion Cash Back Name" style="background-color:#E3DFDF; cursor:pointer">
							</li>`);



	          				$(".append_data").append(`<div class="form_data_show" style="display:none;" unique_id="`+unique_id+`">
									<div class="row pr-3 pl-3">
										<div class="col-md-6 venue_inputs">
											<label>
												Promotion Cash Back Name
											</label>
											<input type="text" class="form-control form-control-user cashback_input2" maxlength="30" placeholder="Enter Promotion Cash Back Name" value="`+cashbacks[i]['promotion_cashback_name']+`" unique_id="`+unique_id+`" />
										</div>
										<div class="col-md-6 venue_inputs">
											<label>
												Image
											</label>
											<div class="open_new_tab">
												<input type="text" class="form-control form-control-user file_name_show" title="" placeholder="" value="`+slice_file_name+`" disabled="true" unique_id="`+unique_id+`" src="`+cashbacks[i]['image']+`" style="cursor:pointer;" />
											</div>
											<img src="{{url('public/upload_icon.png')}}" title="Click to upload image" alt="" class="upload_icon" unique_id="`+unique_id+`" />
											<input type="file" class="file_name" unique_id="`+unique_id+`" style="display:none" img="`+have_img+`" accept = image/*>
										</div>
									</div>
									<div class="row pr-3 pl-3 mt-3">
										<div class="col-md-12 venue_inputs">
											<label>
												When
											</label>
											<input type="hidden" class="days" unique_id="`+unique_id+`" value="`+cashbacks[i]['day_on']+`">
											<div class="checkboxesbg">
												<div class="d-flex flex-wrap">
													<div class="mr-2">
														<label class="tick_box"><span class="date">Monday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+mo_select+` data-id="Monday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Tuesday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+tu_select+` data-id="Tuesday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Wednesday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+we_select+` data-id="Wednesday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Thursday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+th_select+` data-id="Thursday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Friday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+fr_select+` data-id="Friday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div class="mr-2">
														<label class="tick_box"><span class="date">Saturday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+sa_select+` data-id="Saturday" class="checkbox_click">
															<span class="checkmark"></span>
														</label>
													</div>
													<div>
														<label class="tick_box"><span class="date">Sunday</span>
															<input type="checkbox" unique_id="`+unique_id+`" `+su_select+` data-id="Sunday" class="checkbox_click">
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
											<input type="date" class="form-control form-control-user from_date" placeholder="From Date" value="`+cashbacks[i]['from_date']+`" unique_id="`+unique_id+`" min="{{$current_date}}" />
										</div>
										<div class="col-md-3 venue_inputs">
											<label>
												To Date
											</label>
											<input type="date" class="form-control form-control-user to_date" placeholder="To Date" value="`+cashbacks[i]['to_date']+`" unique_id="`+unique_id+`" min="{{$current_date}}"/>
										</div>
										<div class="col-md-6 venue_inputs">
											<div class="">
												<label>
													Created 
												</label>
												<input type="text" class="form-control form-control-user created_date" unique_id="`+unique_id+`"  value="`+cashbacks[i]['created_at']+`" disabled style="background-color: #8D8A8A !important;" />
											</div>
										</div>
									</div>
									<div class="row pr-3 pl-3 mt-3">
										<div class="col-md-3 venue_inputs">
											<label>
												From Time
											</label>
											<input type="text" style="cursor:pointer;" class="form-control form-control-user from_time" unique_id="`+unique_id+`" value="`+cashbacks[i]['from_time']+`" />
										</div>

										<div class="col-md-3 venue_inputs">
											<label>
												To Time
											</label>
											<input type="text" style="cursor:pointer;" class="form-control form-control-user to_time" unique_id="`+unique_id+`" value="`+cashbacks[i]['to_time']+`" />
										</div>

										<div class="col-md-6 venue_inputs">
												<div>
												<label>
													Last Updated 
												</label>

												<input type="text" class="form-control form-control-user last_update"  value="`+cashbacks[i]['updated_at']+`" unique_id="`+unique_id+`" disabled style="background-color: #8D8A8A !important;" />
											</div> 
										</div>
									</div>
									<div class="row pr-3 pl-3 mt-3">
										<div class="col-md-6 venue_inputs">
											<label>
												Cash Back Percentage
											</label>
											<div class="d-flex">
													<input type="text" class="form-control form-control-user cashback_perentage double" unique_id="`+unique_id+`" placeholder="" value="`+cashbacks[i]['cashback_percentage']+`" style="border-radius: 0px; width: 108px; background-color: #F64141 !important; color: #fff !important; padding: 0px 28px !important;"/>
													<input type="text" class="form-control form-control-user" placeholder="" value="%" style=" border-radius: 0px; width: 48px" disabled/>
											</div>
										</div>
										<div class="col-md-6 venue_inputs">
											<label>
												Status
											</label>
											<div class="selectdiv">
												<select class="form-control form-group cashback_status" unique_id="`+unique_id+`" style="padding: .6rem 1rem; position: relative;" id="exampleFormControlSelect1">
													<option value="">Select Status</option>
													<option value="Active" `+select_active+`>Active</option>
													<option value="Inactive" `+select_inactive+`>Inactive</option>

												</select>
											</div>
										</div>
									</div>
									<div class="row pr-5 pl-3 mt-3">
										<div class="col-md-6 venue_inputs">
											<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block common_btn submit_btn" unique_id="`+unique_id+`" style="width: 100% !important;">
					                      		Update
					                    	</a>
				                    	</div>	
									</div>
								</div>`);

	          			}
						$(".from_time[unique_id='"+unique_id+"']").mdtimepicker(); 
						$(".to_time[unique_id='"+unique_id+"']").mdtimepicker();
	          		}
	          		
	          		

	          	},500);
	          },
	          error: function(data, textStatus, xhr) {
	            if(data.status == 422){
	              var result = data.responseJSON;
	              alert('Something went worng.');
	              window.location.href = "";
	              $("#loaderModel").modal("hide");
	              return false;
	            } 
	      	}
	    });
	}
</script>


<script type="text/javascript">
	$(document).ready(function(){


		$("#minus_icon").on("click",function(){
			let active_cashback_unique_id = $(".cashback_name_show.active").attr("unique_id");
			let cashback_name_d = $(".cashback_name_input[unique_id='"+active_cashback_unique_id+"']").val();
			
			if(active_cashback_unique_id == "" || active_cashback_unique_id == undefined){
				return false;
			}
			if(cashback_name_d == ""){

				$("#confirmation_alert_text").text("Are you sure, you want to delete this promotion cashback?");
			}else{
				$("#confirmation_alert_text").text("Are you sure, you want to delete this promotion cashback ("+cashback_name_d+")?");
			}

			$("#confirmationModel").modal("show");
			$("#confirmationModel").unbind("click");
		});

		$(".confirm_no").on("click",function(){
    		$("#confirmationModel").modal("hide");
    	})
	});

	function removePromotionCashback(){
		$("#confirmationModel").modal("hide");

		let active_cashback_unique_id = $(".cashback_name_show.active").attr("unique_id");
		let cashback_name_d = $(".cashback_name_input[unique_id='"+active_cashback_unique_id+"']").val();
		let __prev_cashback = $(".cashback_name_show.active").prev();
		let __next_cashback = $(".cashback_name_show.active").next();

		var data = {
        	'_token': "{{csrf_token()}}",
        	"active_cashback_unique_id": active_cashback_unique_id
    	};

		$.ajax({
	          url:"{{route('admin.deleteCashback')}}",
	          type:'POST',
	          data:data,
	          beforeSend:function(){
	          	$("#loaderModel").modal("show");
				$("#loaderModel").unbind("click");
	          },
	          success: function(res){
	          	setTimeout(function(){

	          		$(".cashback_name_show[unique_id='"+active_cashback_unique_id+"']").remove();
	                $(".form_data_show[unique_id='"+active_cashback_unique_id+"']").remove();

	                if(__next_cashback.length > 0){

						$(".cashback_name_show[unique_id='"+__next_cashback.attr("unique_id")+"']").addClass("active").children(".cashback_name_input").css({"background-color":"#EBEBEB","cursor":"unset"}).removeAttr("disabled");
						
						//active current form
						$(".form_data_show[unique_id='"+__next_cashback.attr("unique_id")+"']").addClass("active").css({"display" : "block"});
	                	
					}else if(__prev_cashback.length > 0){
						$(".cashback_name_show[unique_id='"+__prev_cashback.attr("unique_id")+"']").addClass("active").children(".cashback_name_input").css({"background-color":"#EBEBEB","cursor":"unset"}).removeAttr("disabled");
						
						//active current form
						$(".form_data_show[unique_id='"+__prev_cashback.attr("unique_id")+"']").addClass("active").css({"display" : "block"});
					}

					if(cashback_name_d == ""){
						$("#success_alert_text").text("Promotion cashback has been deleted successfully.");
					}else{

	          			$("#success_alert_text").text("Promotion cashback ("+cashback_name_d+") has been deleted successfully.");
					}
	          		
	          		$("#loaderModel").modal("hide");
	          		$("#successModel").modal("show");

	          	},500);
	          },
	          error: function(data, textStatus, xhr) {
	            if(data.status == 422){
	              var result = data.responseJSON;
	              alert('Something went worng.');
	              window.location.href = "";
	              $("#loaderModel").modal("hide");
	              return false;
	            } 
	      	}
	    });

	}
</script>

	
</body>