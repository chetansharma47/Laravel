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

		input.input_tier_name {
		    border: 0!important;
		    background-color: #EBEBEB;
		    color: #4B4B4B!important;
		    font-family: 'Signika', sans-serif;
		    font-weight: 700;
		    width: 100%;
		}

		.menu-lisitng ul {
		    height: 364px;
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

		div#loaderImg2 {
		    position: absolute;
		    left: 0;
		    right: 0;
		    text-align: center;
		    margin-top: 250px;
		}

		/*.modal-footer {
		    padding: 0.3rem;
		}*/

		.cmn {
			background-color: #3ABD6F !important;
		    border: 1px solid #3ABD6F !important;
		    /* background: linear-gradient( 
		167deg
		 , rgb(237 31 36) 0%, rgb(90 0 3) 100%) !important; */
		    font-size: 18px;
		    border-radius: 50px;
		    font-weight: 700 !important;
		    text-transform: uppercase;
		}

		.cmn:hover{
			color: #fff!important;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>   Customer Tier Settings</a>
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

	<input type="hidden" id="last_tier_cond_id" value="{{$last_tier_cond_unique_id}}">
	<input type="hidden" id="tier_setting_id">
	<section class="mt-3 mb-3" style="padding-left: 40px;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4">
					<div class="venue_inputs mr-4 mb-4">
						<label>
							Customer Total Transaction Amount Check for
						</label>
						<?php 
							if(!empty($tier_settings)){
								$transaction_amount_check_last_days = "Last ".$tier_settings->transaction_amount_check_last_days." Days";
								$customer_tier_validity_check = $tier_settings->customer_tier_validity_check." Days from status change";
							}else{
								$transaction_amount_check_last_days = "Last 30 Days";
								$customer_tier_validity_check = "30 Days from status change";
							}
						?>
						<div class="d-flex align-items-center">
							<input type="text" class="form-control form-control-user" placeholder="Enter Number Of Days" id="transaction_amount_check_last_days" value="{{$transaction_amount_check_last_days}}" autocomplete="off" style="border-radius: 0px;"/>

							<div>
								<a href="javascript:void(0);" id="total_transaction" class="btn btn-primary btn-user btn-block cmn" style="padding: 0px; font-size: 20px; width: 110px;    margin-left: 11px;">
	                      			SAVE
	                    		</a>
							</div>
							
						</div>

					</div>
					<div class="col-md-12" style="padding-left: 0; padding-right: 0">
						<div class="venue_inputs mr-4 mb-4">
							<label>
								Customer Tier Validity Check (Badge Change)
							</label>

							<div class="d-flex align-items-center">
								<input type="text" class="form-control form-control-user" placeholder="Enter Number Of Days" id="customer_tier_validity_check" value="{{$customer_tier_validity_check}}" autocomplete="off" style="border-radius: 0px;"/>

								<div>
									<a href="javascript:void(0);" id="validate_check" class="btn btn-primary btn-user btn-block cmn" style="padding: 0px; font-size: 20px; width: 110px;    margin-left: 11px;">
		                      			SAVE
		                    		</a>
								</div>
							</div>

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
					<div class="pb-1 pl-2 pr-0 menu-lisitng">
						<ul style="margin-left: 0; background-color:#E3DFDF;" id="tier_name_append">
							<!-- <li class="active">
								<input type="text" class="input_tier_name" placeholder="Enter Tier Name">
							</li>

							<li class="">
								<input type="text" class="input_tier_name" style="background-color: #E3DFDF" placeholder="Enter Tier Name" disabled>
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
				<div class="col-md-9 padding-top" id="append_condition" style="padding-top: 20px">
					<!-- <div class="app_notification_bg" style="background-color: transparent; padding-bottom: 0; padding-top: 0;">
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
					</div> -->
				</div>
			</div>
			
		</div>
		<!-- <div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">cvcvbcvbcbc</div>
		</div> -->
	</section>



<div class="modal fade" id="validationModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" >Alert</h5>
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
        <h5 class="modal-title" >Success</h5>
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
        <button type="button" class="btn btn-secondary confirm_ok" onclick="return removeTier();" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">Yes</button>
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
		localStorage.clear();
		setInterval(function(){

			if(localStorage.getItem("customerTierSettingsAjaxHit") == "true"){

				$(".basic").spectrum({
				    preferredFormat: "hex6",
				    showInput: true
				});

				$(".sp-choose").click(function(){
					let active_data_id = $(".tier_name_c.active").data("id");
					let color_code = $(this).parent().parent().find(".sp-input-container .sp-input").val();
					$(".ccc[data-id='"+active_data_id+"']").children().val(color_code)
				});

				saveClick();
				localStorage.setItem("customerTierSettingsAjaxHit","false");
			}

		},100);


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


		$(document).unbind().on("click",".tier_name_c",function(){
			if($(this).hasClass("active") == false){
				$(".condition_tier.active_tier").removeClass("active_tier").css("display","none");
				$(this).children().removeAttr("disabled");
				$(this).children().css({"background-color" : "unset","cursor":"unset"});

				$(".tier_name_c.active").children().css({"background-color" : "#E3DFDF","cursor":"pointer"}).attr("disabled","true");

				$(".tier_name_c.active").removeClass('active').css("background-color","unset");
				let data_id = $(this).data("id");
				$(this).css({"background-color" : "#EBEBEB"});
				$(this).addClass("active");
				$(".condition_tier[data-id='"+data_id+"']").addClass("active_tier").css("display","block");
			}
		});
	</script>


	<script type="text/javascript">
		$(document).ready(function(){

			
			localStorage.setItem("customerTierSettingsAjaxHit","false");
			//default ajax

			var data = {
            	'_token': "{{csrf_token()}}",
            };

          	$.ajax({
	              url:"{{route('admin.customerTierSettingsAjax')}}",
	              type:'POST',
	              data:data,
	              success: function(res){
	              	$("#tier_setting_id").val(res.id);
	              	localStorage.setItem("customerTierSettingsAjaxHit","true");
	               	
	               	if(res.length <= 0){
	               		$("#loaderModel").modal("hide");
	               		return false;
	               	}

	               	let tier_conditions = res.tier_conditions;
	               	let append_condition;

	               	for(let i=0; i < tier_conditions.length; i++){

	               		let __disabled = "";
	               		let first_tier_unique_id = "{{$first_tier_unique_id}}";

	               		if(parseInt(tier_conditions[i]['unique_id_by_tier']) == parseInt(first_tier_unique_id)){
	               			__disabled = "disabled";
	               		}
	               		if(i == 0){
		               		$("#tier_name_append").append(`<li class="active tier_name_c" data-id="`+tier_conditions[i]['unique_id_by_tier']+`">
									<input type="text" class="input_tier_name" title="Click to enter name" maxlength="30" value="`+tier_conditions[i]['tier_name']+`" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" placeholder="Enter Tier Name">`);


	               		append_condition = `<div class="condition_tier active_tier" data-id="`+tier_conditions[i]['unique_id_by_tier']+`">
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
										From Amount($)
									</label>
									<input type="text" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" class="form-control form-control-user from_amount" maxlength="11" placeholder="From Amount" value="`+tier_conditions[i]['from_amount']+`" `+__disabled+`/>

									<label class="error from_amount_err" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="display: none;">Please enter valid color code.</label>
								</div>
								<div class="col-md-3 venue_inputs">
									<label>
										To Amount($)
									</label>
									<input type="text" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" class="form-control form-control-user to_amount" maxlength="11" placeholder="To Amount" value="`+tier_conditions[i]['to_amount']+`" />

									<label class="error to_amount_err" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="display: none;">Please enter valid color code.</label>
								</div>
							</div>
							<div class="row pr-5 pl-3 mt-5">
								<div class="col-md-3 venue_inputs">
										<label>
											Color Code for Customer Tier 
										</label>
									<div class="d-flex align-items-center ccc" data-id="`+tier_conditions[i]['unique_id_by_tier']+`">
										<input type="text" class="form-control form-control-user" placeholder="#ff0000" name="color_code" maxlength="7" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" value="`+tier_conditions[i]['color_code']+`" />
										<input type="color" class="basic" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" value="`+tier_conditions[i]['color_code']+`">
									</div>
										<label class="error color_code_err" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="display: none;">Please enter valid color code.</label>
								</div>
							</div>
							<div class="row pr-5 pl-3 mt-3">
								<div class="col-md-6 venue_inputs">
									<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="    margin-top: 66px;
		    margin-bottom: 14px;">
			                      		Update
			                    	</a>
		                    	</div>	
							</div>
							</div>`;

	               		}else{

	               			$("#tier_name_append").append(`<li class="tier_name_c" data-id="`+tier_conditions[i]['unique_id_by_tier']+`">
									<input type="text" class="input_tier_name" title="Click to enter name" maxlength="30" value="`+tier_conditions[i]['tier_name']+`" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" placeholder="Enter Tier Name" style="background-color:#E3DFDF; cursor:pointer" disabled>`);



	               			append_condition = `<div class="condition_tier" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="display:none;">
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
										From Amount($)
									</label>
									<input type="text" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" class="form-control form-control-user from_amount" maxlength="11" placeholder="From Amount" value="`+tier_conditions[i]['from_amount']+`" `+__disabled+`/>

									<label class="error from_amount_err" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="display: none;">Please enter valid color code.</label>
								</div>
								<div class="col-md-3 venue_inputs">
									<label>
										To Amount($)
									</label>
									<input type="text" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" class="form-control form-control-user to_amount" maxlength="11" placeholder="To Amount" value="`+tier_conditions[i]['to_amount']+`" />

									<label class="error to_amount_err" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="display: none;">Please enter valid color code.</label>
								</div>
							</div>
							<div class="row pr-5 pl-3 mt-5">
								<div class="col-md-3 venue_inputs">
										<label>
											Color Code for Customer Tier 
										</label>
									<div class="d-flex align-items-center ccc" data-id="`+tier_conditions[i]['unique_id_by_tier']+`">
										<input type="text" class="form-control form-control-user" placeholder="#ff0000" name="color_code" maxlength="7" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" value="`+tier_conditions[i]['color_code']+`" />
										<input type="color" class="basic" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" value="`+tier_conditions[i]['color_code']+`">
									</div>
										<label class="error color_code_err" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="display: none;">Please enter valid color code.</label>
								</div>
							</div>
							<div class="row pr-5 pl-3 mt-3">
								<div class="col-md-6 venue_inputs">
									<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn" data-id="`+tier_conditions[i]['unique_id_by_tier']+`" style="    margin-top: 66px;
		    margin-bottom: 14px;">
			                      		Update
			                    	</a>
		                    	</div>	
							</div>
							</div>`;

	               		}

	               		// if(i == tier_conditions.length - 1){
	               		// 	$("#last_tier_cond_id").val(i + 1);
	               		// }

	               		$("#append_condition").append(append_condition);
	               		
	               	}
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

			$("#plus_icon").on("click",function(){

				let data_id = parseInt($("#last_tier_cond_id").val()) + 1;
				$("#last_tier_cond_id").val(data_id);

				let active_data_id_prev = $(".tier_name_c.active").data("id");
				$(".input_tier_name[data-id='"+active_data_id_prev+"']").css({"background-color":"#E3DFDF","cursor":"pointer"}).attr("disabled","true");
				$(".tier_name_c.active").removeClass('active').css("background-color","unset");

				$("#tier_name_append").append(`<li class="active tier_name_c" data-id="`+data_id+`">
					<input type="text" class="input_tier_name" title="Click to enter name" maxlength="30" value="" data-id="`+data_id+`" placeholder="Enter Tier Name">`);

				$(".condition_tier.active_tier").removeClass('active_tier').css("display","none");

				let append_condition = `<div class="condition_tier active_tier" data-id="`+data_id+`">
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
										From Amount($)
									</label>
									<input type="text" data-id="`+data_id+`" class="form-control form-control-user from_amount" maxlength="11" placeholder="From Amount" value="0" />

									<label class="error from_amount_err" data-id="`+data_id+`" style="display: none;">Please enter valid color code.</label>
								</div>
								<div class="col-md-3 venue_inputs">
									<label>
										To Amount($)
									</label>
									<input type="text" data-id="`+data_id+`" class="form-control form-control-user to_amount" maxlength="11" placeholder="To Amount" value="0" />

									<label class="error to_amount_err" data-id="`+data_id+`" style="display: none;">Please enter valid color code.</label>
								</div>
							</div>
							<div class="row pr-5 pl-3 mt-5">
								<div class="col-md-3 venue_inputs">
										<label>
											Color Code for Customer Tier 
										</label>
									<div class="d-flex align-items-center ccc" data-id="`+data_id+`">
										<input type="text" class="form-control form-control-user" placeholder="#ff0000" name="color_code" maxlength="7" data-id="`+data_id+`" value="#ff0000" />
										<input type="color" class="spectrum_`+data_id+`" data-id="`+data_id+`" value="#ff0000">
									</div>
										<label class="error color_code_err" data-id="`+data_id+`" style="display: none;">Please enter valid color code.</label>
								</div>
							</div>
							<div class="row pr-5 pl-3 mt-3">
								<div class="col-md-6 venue_inputs">
									<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn" data-id="`+data_id+`" style="    margin-top: 66px;
		    margin-bottom: 14px;">
			                      		Save
			                    	</a>
		                    	</div>	
							</div>
							</div>`;

				spectrum(".spectrum_"+data_id);
				$("#append_condition").append(append_condition);
				setTimeout(function(){

					$(".sp-choose").click(function(){
						let active_data_id = $(".tier_name_c.active").data("id");
						let color_code = $(this).parent().parent().find(".sp-input-container .sp-input").val();
						$(".ccc[data-id='"+active_data_id+"']").children().val(color_code)
					});

					saveClick();

				},100)

			});
		});
	</script>
	<script type="text/javascript">
		function spectrum(className){
			setTimeout(function(){

				$(className).spectrum({
					    preferredFormat: "hex6",
					    showInput: true
					});
			},100)

		}
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			$("#minus_icon").on("click",function(){
				let tier_setting_id = $("#tier_setting_id").val();
				let active_id = $(".tier_name_c.active").data("id");
				let tier_name = $(".input_tier_name[data-id='"+active_id+"']").val();


				if(active_id == "" || active_id == undefined){
					return false;
				}

				
				let first_tier_unique_id = "{{$first_tier_unique_id}}";
				
				if(tier_name == ""){

					if(first_tier_unique_id != ""){
						if(parseInt(active_id) == parseInt(first_tier_unique_id)){
							$("#alert_text").text("You can not delete this tier.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							return false;
						}
					}

					$("#confirmation_alert_text").text("Are you sure you, want to delete this tier?");
				}else{

					if(first_tier_unique_id != ""){
						if(parseInt(active_id) == parseInt(first_tier_unique_id)){
							$("#alert_text").text("You can not delete this tier ("+tier_name+").");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							return false;
						}
					}

					$("#confirmation_alert_text").text("Are you sure you, want to delete this tier ("+tier_name+")?");
				}

				$("#confirmationModel").modal("show");
				$("#confirmationModel").unbind("click");

        	});

        	$(".confirm_no").on("click",function(){
        		$("#confirmationModel").modal("hide");
        	})
		});

		function removeTier(){
				$("#confirmationModel").modal("hide");
				let tier_setting_id = $("#tier_setting_id").val();
				let active_id = $(".tier_name_c.active").data("id");
				let tier_name = $(".input_tier_name[data-id='"+active_id+"']").val();

				let __prev_tier = $(".tier_name_c.active").prev();
				let __next_tier = $(".tier_name_c.active").next();

				var data = {
		            '_token': "{{csrf_token()}}",
		            'unique_id_by_tier' : active_id
	            };

	            $("#loaderModel").modal("show");
	            $("#loaderModel").unbind("click");

	          	$.ajax({
	              url:"{{route('admin.customerTierNameRemove')}}",
	              type:'POST',
	              data:data,
	              success: function(res){
	              	console.log(res)
	              	setTimeout(function(){


		                $(".tier_name_c[data-id='"+active_id+"']").remove();
		                $(".condition_tier[data-id='"+active_id+"']").remove();

		                if(__next_tier.length > 0){
		                	$(".tier_name_c[data-id='"+__next_tier.data("id")+"']").addClass("active").css("background-color","#EBEBEB");

		                	$(".tier_name_c[data-id='"+__next_tier.data("id")+"']").children().removeAttr("disabled").css({"background-color":"#EBEBEB","cursor":"unset"});

		                	$(".condition_tier[data-id='"+__next_tier.data("id")+"']").addClass("active_tier").css("display","block");

						}else if(__prev_tier.length > 0){
							$(".tier_name_c[data-id='"+__prev_tier.data("id")+"']").addClass("active").css("background-color","#EBEBEB");

		                	$(".tier_name_c[data-id='"+__prev_tier.data("id")+"']").children().removeAttr("disabled").css({"background-color":"#EBEBEB","cursor":"unset"});

		                	$(".condition_tier[data-id='"+__prev_tier.data("id")+"']").addClass("active_tier").css("display","block");
						}

						if(tier_name == ""){
							tier_name = "Tier";
						}

	              		$("#loaderModel").modal("hide");
		          		$("#success_alert_text").text("Tier ("+tier_name+") has been deleted successfully.");
		          		$("#successModel").modal("show");
	              	},500)
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




<script type="text/javascript">
	$(document).ready(function(){
		$('#transaction_amount_check_last_days').keypress(function (event) {
	        return isNumber(event, this)
		});

	 	$('#transaction_amount_check_last_days').on('paste', function (event) {
		  if (event.originalEvent.clipboardData.getData('Text').match(/[^\d]/)) {
		    event.preventDefault();
		  }
		});

		$('#customer_tier_validity_check').on('paste', function (event) {
		  if (event.originalEvent.clipboardData.getData('Text').match(/[^\d]/)) {
		    event.preventDefault();
		  }
		});

		$('#customer_tier_validity_check').keypress(function (event) {
	        return isNumber1(event, this)
		});


		$("#transaction_amount_check_last_days").on("click",function(){
			$(this).val("");
			localStorage.setItem('click_amount_check',"true");
		});

		$("#customer_tier_validity_check").on("click",function(){
			$(this).val("");
			localStorage.setItem('customer_tier_validity_check',"true");
		});

		$(document).click(function(event){
			if (!$(event.target).is("#transaction_amount_check_last_days") && localStorage.getItem("click_amount_check") == "true") {
				let transaction_amount_check_last_days = $("#transaction_amount_check_last_days").val();

				if(transaction_amount_check_last_days){

					$("#transaction_amount_check_last_days").val("Last "+transaction_amount_check_last_days+" Days");
				}
				localStorage.setItem("click_amount_check","false");
		    }

		    if (!$(event.target).is("#customer_tier_validity_check") && localStorage.getItem("customer_tier_validity_check") == "true") {
				let customer_tier_validity_check = $("#customer_tier_validity_check").val();

				if(customer_tier_validity_check){

					$("#customer_tier_validity_check").val(customer_tier_validity_check+" Days from status change");
				}
				localStorage.setItem("customer_tier_validity_check","false");
		    }

		});

		// THE SCRIPT THAT CHECKS IF THE KEY PRESSED IS A NUMERIC OR DECIMAL VALUE.
		function isNumber(evt, element) {
		    var charCode = (evt.which) ? evt.which : event.keyCode
		    $("#transaction_amount_check_last_days").attr("maxlength","6");
				// if($(element).val().indexOf('.') != -1){
				// 	$("#price").attr("maxlength","6");	
				// }else{
				// 	$("#price").attr("maxlength","5");
				// }
		    if (            
		             // “.” CHECK DOT, AND ONLY ONE.
		        (charCode < 48 || charCode > 57)){

		        return false;
			}else{

			        return true;
			}

		}


		function isNumber1(evt, element) {
		    var charCode = (evt.which) ? evt.which : event.keyCode
		    $("#customer_tier_validity_check").attr("maxlength","6");
				// if($(element).val().indexOf('.') != -1){
				// 	$("#price").attr("maxlength","6");	
				// }else{
				// 	$("#price").attr("maxlength","5");
				// }
		    if (            
		             // “.” CHECK DOT, AND ONLY ONE.
		        (charCode < 48 || charCode > 57)){

		        return false;
			}else{

			        return true;
			}

		}

		$(document).on("keypress",".from_amount",function(){
			return isNumber2(event, this)
		})

		$(document).on("keypress",".to_amount",function(){
			return isNumber2(event, this)
		})

		function isNumber2(evt, element) {
		    var charCode = (evt.which) ? evt.which : event.keyCode
				// if($(element).val().indexOf('.') != -1){
				// 	$("#price").attr("maxlength","6");	
				// }else{
				// 	$("#price").attr("maxlength","5");
				// }
		    if (            
		             // “.” CHECK DOT, AND ONLY ONE.
		        (charCode < 48 || charCode > 57)){

		        return false;
			}else{

			        return true;
			}

		}
	});
</script>

<script type="text/javascript">
	function saveClick(){

		$(".venue_inputs .common_btn").unbind().on("click",function(){
			let __action = $(this);
			let select_data_id = $(this).data("id");
			//alert(select_data_id)
			let check_transaction_amount_check_last_days = $("#transaction_amount_check_last_days").val();
			let amount_last_d = check_transaction_amount_check_last_days.replace("Last ","");
			amount_last_d = amount_last_d.replace(" Days","");
			

			let check_customer_tier_validity_check = $("#customer_tier_validity_check").val();
			let tier_vali_check = check_customer_tier_validity_check.replace(" Days from status change","");

			let check_tier_name = $(".tier_name_c[data-id='"+select_data_id+"']").children().val();
			let check_from_amount = $(".from_amount[data-id='"+select_data_id+"']").val();
			let check_to_amount = $(".to_amount[data-id='"+select_data_id+"']").val();
			let check_color_code = $(".ccc[data-id='"+select_data_id+"']").children().val();

			if(check_transaction_amount_check_last_days == ""){
				$("#alert_text").text("Please enter customer total transaction days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(parseInt(amount_last_d) <= 0){
				$("#alert_text").text("Please enter valid customer total transaction days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(check_customer_tier_validity_check == ""){
				$("#alert_text").text("Please enter customer tier validity check (Badge Change) days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(parseInt(tier_vali_check) <= 0){
				$("#alert_text").text("Please enter valid customer tier validity check (Badge Change) days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(check_tier_name == ""){
				$("#alert_text").text("Please enter tier name.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(check_tier_name.length < 2){
				$("#alert_text").text("Tier name should be at least 2 characters.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}


			if(check_from_amount == ""){
				$("#alert_text").text("Please enter from amount.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(parseFloat(check_from_amount) < 0){
				$("#alert_text").text("Please enter valid from amount.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(check_to_amount == ""){
				$("#alert_text").text("Please enter to amount.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(parseFloat(check_to_amount) < 0){
				$("#alert_text").text("Please enter valid to amount.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(parseFloat(check_to_amount) < parseFloat(check_from_amount)){
				$("#alert_text").text("From amount should be less than to amount.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(parseFloat(check_to_amount) == parseFloat(check_from_amount)){
				$("#alert_text").text("To amount should be greater than from amount.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(check_color_code == ""){
				$("#alert_text").text("Please enter or select color code.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}	

			if(/^#[0-9A-F]{6}$/i.test(check_color_code) == false){
				$("#alert_text").text("Please enter valid color code.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			$("#loaderModel").modal("show");
			$("#loaderModel").unbind("click");
			var data = {
	            '_token': "{{csrf_token()}}",
	            'transaction_amount_check_last_days': check_transaction_amount_check_last_days,
	            'customer_tier_validity_check': check_customer_tier_validity_check,
	            'tier_name': check_tier_name,
	            'from_amount': check_from_amount,
	            'to_amount': check_to_amount,
	            'color_code': check_color_code,
	            'unique_id_by_tier' : select_data_id
            };

          	$.ajax({
	              url:"{{route('admin.addCustomerTierAjax')}}",
	              type:'POST',
	              data:data,
	              success: function(res){
	              	console.log(res)
	              	setTimeout(function(){
	              		$("#loaderModel").modal("hide");
	              		if(res.update == "true"){

	              			$("#success_alert_text").text("Tier ("+res.tier_name+") details has been updated successfully.");
	              		}else{
	              			$("#success_alert_text").text("Tier ("+res.tier_name+") has been added successfully.");
	              		}
	              		$("#successModel").modal("show");
	              		$("#successModel").unbind("click");
	              		__action.text("Update");
	              	},500)
	              },
	              error: function(data, textStatus, xhr) {
	                if(data.status == 422){
	                  setTimeout(function(){
	                  	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
		                  	if(result['amount_err'] && result['amount_err'].length > 0){
			                  	$("#alert_text").text(result['amount_err']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		                 	}

		                 	if(result['tier_name_err'] && result['tier_name_err'].length > 0){
		                 		$("#alert_text").text(result['tier_name_err']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		                 	}
		                  return false;
	                  },500);
	                } 
	              }
        	});

		})
	}

	$(document).ready(function(){
		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
			$("#successModel").modal("hide");
		});

		$(document).on("keypress",".form-control",function(e){
	      if($(this).val() == ''){
	          if(!/[0-9a-zA-Z-~!@#$%^&*()_+{}:"<>,.;'/"]/.test(String.fromCharCode(e.which)))
	            return false;
	      }
		});

		$(document).on("keypress",".input_tier_name",function(e){
	      if($(this).val() == ''){
	          if(!/[0-9a-zA-Z-~!@#$%^&*()_+{}:"<>,.;'/"]/.test(String.fromCharCode(e.which)))
	            return false;
	      }
		});
	});
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#total_transaction").on("click",function(){

			let check_transaction_amount_check_last_days = $("#transaction_amount_check_last_days").val();
			let amount_last_d = check_transaction_amount_check_last_days.replace("Last ","");
			amount_last_d = amount_last_d.replace(" Days","");

			if(check_transaction_amount_check_last_days == ""){
				$("#alert_text").text("Please enter customer total transaction days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(parseInt(amount_last_d) <= 0){
				$("#alert_text").text("Please enter valid customer total transaction days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}


			var data = {
	            '_token': "{{csrf_token()}}",
	            'transaction_amount_check_last_days': amount_last_d
            };

          	$.ajax({
	              url:"{{route('admin.totalTransactionAmountForDays')}}",
	              type:'POST',
	              data:data,
	              success: function(res){
	              	console.log(res)
	              	setTimeout(function(){
	              		$("#loaderModel").modal("hide");
	              		$("#success_alert_text").text("Customer total transaction days has been updated successfully.");
	              		$("#successModel").modal("show");
	              		$("#successModel").unbind("click");
	              	},500)
	              },
	              error: function(data, textStatus, xhr) {
	                if(data.status == 422){
	                 
	                } 
	              }
        	});

		});

		$("#validate_check").on("click",function(){
			let check_customer_tier_validity_check = $("#customer_tier_validity_check").val();
			let tier_vali_check = check_customer_tier_validity_check.replace(" Days from status change","");


			if(check_customer_tier_validity_check == ""){
				$("#alert_text").text("Please enter customer tier validity check (Badge Change) days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(parseInt(tier_vali_check) <= 0){
				$("#alert_text").text("Please enter valid customer tier validity check (Badge Change) days.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			var data = {
	            '_token': "{{csrf_token()}}",
	            'customer_tier_validity_check': tier_vali_check
            };

          	$.ajax({
	              url:"{{route('admin.totalValidateCheckForDays')}}",
	              type:'POST',
	              data:data,
	              success: function(res){
	              	console.log(res)
	              	setTimeout(function(){
	              		$("#loaderModel").modal("hide");
	              		$("#success_alert_text").text("Customer tier validity check (Badge Change) days has been updated successfully.");
	              		$("#successModel").modal("show");
	              		$("#successModel").unbind("click");
	              	},500)
	              },
	              error: function(data, textStatus, xhr) {
	                if(data.status == 422){
	                 
	                } 
	              }
        	});


		})
	});
</script>


</body>