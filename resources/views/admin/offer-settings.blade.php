<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Add Offers</title>
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

		input.input_tier_name {
	    border: 0 !important;
	    background-color: #ebebeb00 !important;
	    color: #4B4B4B !important;
	    font-family: 'Signika', sans-serif;
	    font-weight: 700;
	    width: 100%;
	}
		img.upload_icon {
		    position: absolute;
		    width: 30px;
		    top: 35px;
		    right: 20px;
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
		.menu-lisitng ul li{
			list-style: none;
		}
		.menu-lisitng ul.listitem {
		    height: 450px;
		    overflow-x: auto;
		    margin-bottom: 0;
		    
		}
		.menu-lisitng ul.venu-list {
		    height: 496px;
		    overflow-x: auto;
		    margin-bottom: 0;
		    
		}
 
		.menu-lisitng ul::-webkit-scrollbar {
		    display: none;
		}
		.offers_list.in-active{
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
		.offer_form_data{
			display: none;
		}
		.offer_form_data.active{
			display: block;
		}
	</style>
</head>
<body>
	<div id="uniq_id_db"></div>
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
						<ul class="venu-list" style="margin-left: 0px !important; background-color: #E3DFDF;">
							@if(count($venu)>0)
								@foreach($venu as $valu)
								<li class="venu-tab-list" venu-tab="venu-{{$valu->id}}" venu-id="{{ $valu->id }}">
									<a href="javascript:void(0);">{{ $valu->venue_name }}</a>
								</li>
								@endforeach							
							@endif
						</ul>
					</div>
				</div>
				<div id="offer_new" class="col-md-3">
					<div class="pt-5 pb-3 pl-3 menu-lisitng">
						<ul class="listitem" style="margin-left: 0px !important; background-color:#E3DFDF;">
						</ul>
						<div class="d-flex justify-content-between">
							<ul class="box_icon">
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);" id="plus_icon">
										<img src="{{url('public/admin/assets/img/icon.png')}}" alt="icon"/>
									</a>
								</li>
								<li style="background-color: #ECECEC;">
									<a href="javascript:void(0);" id="minus_icon">
										<img src="{{url('public/admin/assets/img/icon1.png')}}" alt="icon1"/>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-7 padding-top formdata"></div>
			</div>
		</div>
		<!-- <div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">cvcvbcvbcbc</div>
		</div> -->
	</div>

	<!-- loader model -->

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
        <p id="alert_text">Info Text</p>
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
        <p id="success_alert_text">Are you sure, you want to delete this offer?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">No</button> 
        <button type="button" class="btn btn-secondary confirm_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;" onclick="removeoffers();"  data-dismiss="modal">Yes</button>
       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
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
	<script>

		if($('.menu-lisitng .venu-list li.venu-tab-list').length > 0){
			$('.menu-lisitng .listitem').css('display','block');
		}else{
			$('#offer_new').css('display','none');
		}
		
		// offer form 
		function offerform(uniqid,venuid,offer_name,offer_desc,imagename,from_date,to_date,offer_setting,status,time,to_time,slice_name,dataid,venudata,offer_id,datacity,offertype,gender){

			if(imagename){
				var imageurl = `<input type="text" readonly class="form-control form-control-user offer_image" style="cursor:pointer;" value="${(imagename)?slice_name:''}" src="${imagename}" venu-id="${venuid}" uniq-id="${uniqid}">`
			}else{
				var imageurl = `<input type="text" readonly class="form-control form-control-user offer_image" style="cursor:pointer;" value="${(imagename)?slice_name:''}" venu-id="${venuid}" uniq-id="${uniqid}">`
			}

			//for not selecting past date
			var date = new Date();
    	var min_date = date.toISOString().slice(0,10);
    	//for convert 24 hour time to 12 hours
    	if(to_time){
	    	let to_hr = to_time.split(':')[0];
	    	let to_min = to_time.split(':')[1];
	    	let to_sec = to_time.split(':')[2];
	    	let to_get_date  = new Date();
	    	to_get_date.setHours(to_hr);
	    	to_get_date.setMinutes(to_min);
	    	to_get_date.setSeconds(to_sec);
	    	let to_hr_12 = to_get_date.toLocaleTimeString();
	    	let to_newtime = to_hr_12.split(':');
	    	let am_pm = to_hr_12.slice(-2);
	    	let to_new_hr = to_newtime[0];
	    	let to_new_min = to_newtime[1];
	    	let to_new_time_12 = to_new_hr + ':' + to_new_min + ' ' + am_pm.toUpperCase();
	    	var to_time_input = `<input type="text" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-control-user offer_to_time" style="cursor:pointer;" readonly data-time="${(to_time)?to_time:''}" value="${to_new_time_12}" venu-id="${venuid}" uniq-id="${uniqid}">`
	    }else{
	    	var to_time_input = `<input type="text" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-control-user offer_to_time" style="cursor:pointer;" readonly data-time="" value="" venu-id="${venuid}" uniq-id="${uniqid}">`
	    }


    	if(time){
	    	let hr = time.split(':')[0];
	    	let min = time.split(':')[1];
	    	let sec = time.split(':')[2];
	    	let get_date  = new Date();
	    	get_date.setHours(hr);
	    	get_date.setMinutes(min);
	    	get_date.setSeconds(sec);
	    	let hr_12 = get_date.toLocaleTimeString();
	    	let newtime = hr_12.split(':');
	    	let am_pm = hr_12.slice(-2);
	    	let new_hr = newtime[0];
	    	let new_min = newtime[1];
	    	let new_time_12 = new_hr + ':' + new_min + ' ' + am_pm.toUpperCase();
	    	var time_input = `<input type="text" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-control-user offer_time" style="cursor:pointer;" readonly data-time="${(time)?time:''}" value="${new_time_12}" venu-id="${venuid}" uniq-id="${uniqid}">`

	    }else{
	    	var time_input = `<input type="text" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-control-user offer_time" style="cursor:pointer;" readonly data-time="${(time)?time:''}" value="" venu-id="${venuid}" uniq-id="${uniqid}">`
	    }

			return `<div class="offer_form_data" id="uniq-${uniqid}" venu-id="${venuid}" uniq-id="${uniqid}"><div class="criteria_section">
						<div class="col-md-12 venue_inputs">
							<label>
								Criteria
							</label>
						</div>
						<div class="col-md-12">
							<div class="gre_bg">
								<div class="row">

									<div class="col-md-3 venue_inputs birthday_dob" uniq-id="${uniqid}" ${(offertype=='Normal')? 'style="display:none"':''}>
										<label>
											DOB
										</label>
										<input type="text" class="form-control form-control-user criteria_dob" venu-id="${venuid}" uniq-id="${uniqid}" value="Today" readonly style="font-size: 14px !important; padding:.6rem 1rem; border-radius: 10px;">
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Gender
										</label>
										<select offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-group criteria_gender" style="padding: .6rem 1rem; position: relative; font-size: 14px !important; border-radius: 10px;    background-size: 12px!important; background-position: 91% 50%!important; cursor:pointer;" venu-id="${venuid}" uniq-id="${uniqid}">
											<option value="">Select Gender</option>
											<option value="Male" ${(gender == 'Male')  ? 'selected' : ''}>Male</option>
											<option value="Female" ${(gender == 'Female')  ? 'selected' : ''}>Female</option>
											<option value="Other" ${(gender == 'Other')  ? 'selected' : ''}>Other</option>
										</select>
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Transaction Start Period
										</label>
										<input type="date" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''}  min="${min_date}" class="form-control form-control-user criteria_txn_start" value="${(offer_id) ? offer_setting.txn_start_period : ''}" style="font-size: 14px !important; border-radius: 10px;" venu-id="${venuid}" uniq-id="${uniqid}">
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Transaction End Period
										</label>
										<input type="date" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} min="${min_date}" class="form-control form-control-user criteria_txn_end" value="${(offer_id) ? offer_setting.txn_end_period : ''}" style="font-size: 14px !important; border-radius: 10px;"  venu-id="${venuid}" uniq-id="${uniqid}">
									</div>
								</div>
								<div class="row mt-1">
									<div class="col-md-3 venue_inputs">
										<label>
											Date
										</label>
										<input type="date" min="${min_date}" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-control-user criteria_date" style="font-size: 14px !important; padding: .6rem 1rem; border-radius: 10px; background-size: 12px!important; background-position: 91% 50%!important;" value="${(offer_id) ? offer_setting.date : ''}" venu-id="${venuid}" uniq-id="${uniqid}">
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											City of residence
										</label>
										<select offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-group criteria_city" style="padding: .6rem 1rem; position: relative; font-size: 14px !important; border-radius: 10px;background-size: 12px!important; background-position: 91% 50%!important; cursor:pointer;" venu-id="${venuid}" uniq-id="${uniqid}">
										<option value="${(datacity)?datacity.id:''}" >${(datacity)?datacity.city_name:'Select City'}</option>
										</select>
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Transaction Amount Condition
										</label>
										<select offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-group criteria_txn_condition" style="padding: .6rem 1rem; position: relative; font-size: 14px !important; border-radius: 10px;background-size: 12px!important; background-position: 91% 50%!important; cursor:pointer;" venu-id="${venuid}" uniq-id="${uniqid}">
											<option value="${(offer_id) ? offer_setting.txn_amount_condition : ''}">${(offer_id) ? offer_setting.txn_amount_condition : 'Select Amount'}</option>
											<option value="Between">Between</option>
											<option value="Greater Than">Greater Than</option>
										</select>
									</div>
									<div class="col-md-3 venue_inputs">
										<label>
											Transaction Amount
										</label>
										<div class="d-flex">
											<input type="text" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-control-user criteria_from_price" placeholder="From Price" style="font-size: 14px !important; border-radius: 10px; margin-right: 12px;"  venu-id="${venuid}" value="${(offer_id) ? offer_setting.from_price : ''}" uniq-id="${uniqid}" maxlength="10">
											<input type="text" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control form-control-user criteria_to_price" placeholder="To Price" style="font-size: 14px !important; border-radius: 10px;" value="${(offer_id) ? offer_setting.to_price : ''}" maxlength="10" venu-id="${venuid}" uniq-id="${uniqid}">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				<div class="offer_form_section">
					<div class="row pr-5 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Offer Name
							</label>
							<input type="text" offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''}  class="form-control form-control-user offer_name" placeholder="Offer Name" value="${(offer_name)?offer_name:''}" maxlength="30" venu-id="${venuid}" uniq-id="${uniqid}">
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Venue Name
							</label>

							<input type="text" class="form-control form-control-user offer_venu_list" value="${(venudata)?venudata.venue_name:""}" venu-id="${venuid}" uniq-id="${uniqid}" style="cursor:pointer;" readonly>
							
						</div>
					</div>
					<div class="row pr-5 pl-3  mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Offer Description
							</label>
							<textarea offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} class="form-control offer_desc" style="font-size: 14px !important; padding:6px 10px;" rows="2" placeholder="Offer Description" maxlength="1000" venu-id="${venuid}" uniq-id="${uniqid}">${(offer_desc)?offer_desc:''}</textarea>
						</div>
						<div class="col-md-6 venue_inputs">
							<div class="">
								<label>
									Address (Should Be Auto Filled)
								</label>

								<input type="text" class="form-control form-control-user offer_venu_address" placeholder="Venu Address" value="${(venudata)?venudata.address:''}" style="background-color: #8D8A8A !important" readonly venu-id="${venuid}" uniq-id="${uniqid}">
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Image
							</label>
							${imageurl}
							<label for="img_upload">
							<img venu-id="${venuid}" uniq-id="${uniqid}" src="{{url('public/upload_icon.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
							<input type="file" id="img_upload" class="img_upload" src="" venu-id="${venuid}" uniq-id="${uniqid}" hidden value="">
							<input type="text" class="offer_imagehidden" venu-id="${venuid}" uniq-id="${uniqid}" hidden value="${(imagename)?imagename:''}">
							<input type="text" class="offer_imagehidden2" venu-id="${venuid}" uniq-id="${uniqid}" hidden value="${(imagename)?imagename:''}">
							</label>
						</div>
						<div class="col-md-6 venue_inputs">
							<div style="margin-top: -13px;">
								<label>
									Phone Contact (Should Be Auto Filled)
								</label>

								<input type="text" class="form-control form-control-user offer_venu_phone" placeholder="Venu Contact" value="${(venudata)?venudata.phone_number:''}" readonly venu-id="${venuid}" uniq-id="${uniqid}" style="background-color: #8D8A8A !important">
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
							<input offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} type="date" class="form-control form-control-user offer_from_date" venu-id="${venuid}" uniq-id="${uniqid}" placeholder="From Date" min="${min_date}" value="${(from_date)?from_date:''}">
						</div>
						<div class="col-md-3 venue_inputs">
							<label>
								To Date
							</label>
							<input offertype="${(offertype=='BirthdayOffer')?offertype:'Normal'}" ${(offertype=='BirthdayOffer')?'disabled':''} type="date" class="form-control form-control-user offer_to_date" venu-id="${venuid}" uniq-id="${uniqid}" placeholder="To Date" min="${min_date}" value="${(to_date)?to_date:''}">
						</div>
						<div class="col-md-6 venue_inputs">
							<div class="" style="margin-top: -38px;">
								<label>
									Google Map Location Link (Should Be Auto Filled)
								</label>
								<textarea class="form-control offer_venu_googlemap" style="font-size: 14px !important; background-color: #8D8A8A !important; overflow-y: hidden;" rows="3" readonly placeholder="Book Now Link" disabled="" venu-id="${venuid}" uniq-id="${uniqid}">${(venudata)?venudata.google_map_location_link:''}</textarea>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-3 venue_inputs">
							<label>
								From Time
							</label>
							${time_input}
						</div>
						<div class="col-md-3 venue_inputs">
							<label>
								To Time
							</label>
							${to_time_input}
						</div>
						<div class="col-md-6 venue_inputs">
								<div style="margin-top: -7px;">
								<label>
									Book Now Link (Should Be Auto Filled)
								</label>
								<textarea class="form-control offer_venu_booknow" style="font-size: 14px !important; background-color: #8D8A8A !important" rows="2" placeholder="Book Now Link" disabled="" venu-id="${venuid}" uniq-id="${uniqid}">${(venudata)?venudata.book_now_link:''}</textarea>
							</div> 
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Status
							</label>
							<div class="selectdiv">
								<select class="form-control form-group offer_status" style="padding: .6rem 1rem; position: relative; cursor:pointer;" venu-id="${venuid}" uniq-id="${uniqid}">
									<option value="${(status)?status:''}">${(status)?status:'Select Status'}</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>

								</select>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn" venu-id="${venuid}" data-id="" uniq-id="${uniqid}">
	                      		Save
	                    	</a>
                    	</div>	
					</div>
				</div></div>`;
		}

		$(document).on('click','.offer_form_data.active',function(){
			var id = $(this).attr('uniq-id');
			$('.offer_time[uniq-id='+id+']').mdtimepicker();
			$('.offer_to_time[uniq-id='+id+']').mdtimepicker();
		});

		$('.menu-lisitng .venu-list li').first().addClass('active');
		var last_active_venuid = $('.menu-lisitng .venu-list li.active').attr('venu-id');
		$('#uniq_id_db').html('<span id="uniqid" uniq-id="" venu-id='+last_active_venuid+'></span>');


		// venu list active on click

		$('.menu-lisitng .venu-list li').click(function(){
			$('.menu-lisitng .venu-list li').removeClass('active');
			$(this).addClass('active');
			let selected_venu_id = $(this).attr('venu-id');
			$('#uniq_id_db #uniqid').attr('venu-id',selected_venu_id);
		});

// create new empty field for create offers

		$('#plus_icon').click(function(){
			var last_id = $('#uniq_id_db #uniqid').attr('uniq-id');
			var last_venu_id = $('#uniq_id_db #uniqid').attr('venu-id');
			var inc = 0;

			if(!last_id){
				let set_last_id = parseInt(inc)+1;
				$('#uniq_id_db #uniqid').attr('uniq-id',set_last_id);
			}else{
				let inc_last_id = parseInt(last_id)+1;
				$('#uniq_id_db #uniqid').attr('uniq-id',inc_last_id);

			}
			var get_inc_last_id = $('#uniq_id_db #uniqid').attr('uniq-id');
			$('.menu-lisitng ul.listitem li').removeClass('active');
			$('.offer_form_data').removeClass('active');
			$('.menu-lisitng ul.listitem').append(`<li class="offers_list active" id="venu-${last_venu_id}" data-tab="uniq-${get_inc_last_id}" uniq-id="${get_inc_last_id}" venu-id="${last_venu_id}" href="javascript:void(0);"><input type="text" class="input_tier_name" maxlength="30" offertype="Normal" value="" uniq-id="${get_inc_last_id}" venu-id="${last_venu_id}" placeholder="Enter Offer Name"/></li>`);
			var recent_id_uniq = $('.offers_list.active').attr('uniq-id');
			var recent_id_venu = $('.offers_list.active').attr('venu-id');
			$('.formdata').append(offerform(recent_id_uniq,recent_id_venu));
			$('.offer_form_data[uniq-id='+recent_id_uniq+']').addClass('active');
			$('#uniq_id_db #unique').attr('uniq-id',get_inc_last_id);
			
			$(".birthday_dob[uniq-id='"+recent_id_uniq+"']").remove();
			venuRecords();
		});

		// on click offers list active with form

		$(document).on('click','ul.listitem li',function(){
			var data_tab = $(this).attr('data-tab');
			var uniq_id = $(this).attr('uniq-id');
			$('.offer_form_data').removeClass('active');
			$('ul.listitem li').removeClass('active');
			$(this).addClass('active');
			$('#'+data_tab).addClass('active');
		});

		// on click venu list offers active with form

		$(document).on('click','ul.venu-list li',function(){
			var venu_tab = $(this).attr('venu-tab');
			var venu_id = $(this).attr('venu-id');
			$('.offer_form_data').removeClass('active');
			$('ul.listitem li').removeClass('active');
			$('ul.listitem li').addClass('in-active');
			$('ul.venu-list li').removeClass('active');
			$('.offers_list[venu-id='+venu_id+']').removeClass('in-active');
			$(this).addClass('active');
			$('#'+venu_tab).addClass('active');
			$('#'+venu_tab).addClass('active');
			$('.offer_form_data[venu-id='+venu_id+']').first().addClass('active');
		});


		// remove offers

		$('#minus_icon').on('click',function(){
			if($('.offers_list').length>0){
				$("#confirmationmodel").modal('show');
			}
		});


function removeoffers(){
let venu_tab_id = $('.venu-tab-list.active').attr('venu-id');
			let _prev_offer = $('.offers_list.active[venu-id='+venu_tab_id+']').closest('.offers_list.active').prevUntil().find("input:first[venu-id="+venu_tab_id+"]").attr('uniq-id');
			let _next_offer = $('.offers_list.active[venu-id='+venu_tab_id+']').closest('.offers_list.active').nextUntil().find("input:first[venu-id="+venu_tab_id+"]").attr('uniq-id');

			let active_offer_data_id = $('.offers_list.active').attr('data-id'); 
			let active_offer_type = $('.offers_list.active input').attr('offertype'); 
			let active_offer_uniq_id = $('.offers_list.active').attr('uniq-id');

			if(active_offer_type=='Normal'){
				if(active_offer_data_id){
				$.ajax({
					url:'{{ route("admin.offerremove") }}',
					data:{uniq_id:active_offer_uniq_id,"_token":"{{ csrf_token() }}"},
					type:'POST',
					dataType:'JSON',
					beforeSend:function(){
			      $("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
					},
					success:function(data){
						setTimeout(function(){
	         		$("#loaderModel").modal("hide");
	        		$("#successModel").modal("show");
	        		$("#success_alert_text").text(data);
	        		$("#successModel").unbind("click");
							$('.offers_list.active').remove();
							$('.offer_form_data.active').remove();
							if(_next_offer > 0){
								$('.offers_list[uniq-id='+_next_offer+']').addClass('active');
								$('.offer_form_data[uniq-id='+_next_offer+']').addClass('active');
							}else if(_prev_offer > 0){
								$('.offers_list[uniq-id='+_prev_offer+']').addClass('active');
								$('.offer_form_data[uniq-id='+_prev_offer+']').addClass('active');
							}
	        	},500);
					}
				});
			}else{
				$('.offers_list.active').remove();
				$('.offer_form_data.active').remove();
				if(_next_offer > 0){
					$('.offers_list[uniq-id='+_next_offer+']').addClass('active');
					$('.offer_form_data[uniq-id='+_next_offer+']').addClass('active');
				}else if(_prev_offer > 0){
					$('.offers_list[uniq-id='+_prev_offer+']').addClass('active');
					$('.offer_form_data[uniq-id='+_prev_offer+']').addClass('active');
				}

				$("#successModel").modal("show");
	  		$("#success_alert_text").text('Offer deleted successfully');
	    	$("#successModel").unbind("click");
			}
			}else{
				$("#successModel").modal("show");
	  		$("#success_alert_text").text('Offer can not be deleted');
	    	$("#successModel").unbind("click");
			}
			
}


		// image on change generate url

		$(document).on('change','.img_upload',function(e){

			var file = event.target.files[0];
			var file_nameshow = file.name;
			var valu = file_nameshow;
			var length = valu.length;
			if(length>24){
				var slice_name = valu.slice(0,24)+'...';
			}else{
				var slice_name = valu;
			}
			var form_activeid = $('.offer_form_data.active').attr('uniq-id');

		if(file){

				if(file.type == "image/jpeg" || file.type == "image/png" || file.type == "image/jpg"){

					var size = file.size;

					if(size > 5242880){
						$("#alert_text").text("Image should be less than or equal to 5 MB.");
		        $("#validationModel").modal("show");
		        $("#validationModel").unbind("click");
					}
					var reader = new FileReader();
					reader.onload = function(e){
						$(".offer_image[uniq-id="+form_activeid+"]").attr('src',e.target.result);
						$(".offer_image[uniq-id="+form_activeid+"]").val(slice_name);
						$(".offer_imagehidden[uniq-id="+form_activeid+"]").val(file_nameshow);
						$(".img_upload[uniq-id="+form_activeid+"]").attr('src',e.target.result);
						$('.offer_imagehidden2[uniq-id='+form_activeid+']').val('');
					}
					reader.readAsDataURL(file);

				}else{
					$("#alert_text").text("Image must be in jpeg, jpg and png format");
		      $("#validationModel").modal("show");
		      $("#validationModel").unbind("click");
				}
			}
		});

// create image url

$(document).on('click','.offer_image',function(){
	var get_base64 = $(this).attr('src');
	if(get_base64){
	fetch(get_base64)
   	.then(e => e.blob())
   	.then(e => {
        let obj = URL.createObjectURL(e);
        window.open(obj);
   	})
   	.catch(e => {
   		// console.log(e)
   	});
   }
});

// for input from and to price restriction

$(document).on('input','.criteria_from_price',function(event){
	return process(this);
});

$(document).on('input','.criteria_to_price',function(event){
	return process(this);
});

function process(input){
  let value = input.value;
  let numbers = value.replace(/[^0-9]/g, "");
  input.value = numbers;
}

// for model hide manadatory

$(document).ready(function(){
		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
			$("#successModel").modal("hide");
	})
});

//offers save and validate

$(document).on('click','.common_btn',function(){

	let uniq_id = $(this).attr('uniq-id');
	let venu_id = $(this).attr('venu-id');
	let dob_condition = $('.criteria_dob[uniq-id='+uniq_id+']').val();
	let gender_condition = $('.criteria_gender[uniq-id='+uniq_id+']').val();
	let txn_start_condition = $('.criteria_txn_start[uniq-id='+uniq_id+']').val();
	let txn_end_condition = $('.criteria_txn_end[uniq-id='+uniq_id+']').val();
	let date_condition = $('.criteria_date[uniq-id='+uniq_id+']').val();
	let city_condition = $('.criteria_city[uniq-id='+uniq_id+']').val();
	let txn_condition = $('.criteria_txn_condition[uniq-id='+uniq_id+']').val();
	let txn_condition_attr = $('.criteria_txn_condition[uniq-id='+uniq_id+']').attr('offertype');
	let from_price_condition = $('.criteria_from_price[uniq-id='+uniq_id+']').val();
	let to_price_condition = $('.criteria_to_price[uniq-id='+uniq_id+']').val();
	let offer_name = $('.offer_name[uniq-id='+uniq_id+']').val();
	let offer_desc = $('.offer_desc[uniq-id='+uniq_id+']').val();
	let offer_img_src = $('.offer_image[uniq-id='+uniq_id+']').attr('src');
	let offer_img_value = $('.offer_image[uniq-id='+uniq_id+']').val();
	let offer_img_hidden_value = $('.offer_imagehidden[uniq-id='+uniq_id+']').val();
	let offer_img_hidden_attr = $('.img_upload[uniq-id='+uniq_id+']').attr('src');
	let offer_img_hidden2 = $('.offer_imagehidden2[uniq-id='+uniq_id+']').val();
	let offer_from_date = $('.offer_from_date[uniq-id='+uniq_id+']').val();
	let offer_to_date = $('.offer_to_date[uniq-id='+uniq_id+']').val();
	let offer_time = $('.offer_time[uniq-id='+uniq_id+']').val();
	let offer_to_time = $('.offer_to_time[uniq-id='+uniq_id+']').val();
	let offer_time_data = $('.offer_time[uniq-id='+uniq_id+']').attr('data-time');
	let offer_to_time_data = $('.offer_to_time[uniq-id='+uniq_id+']').attr('data-time');
	let offer_status = $('.offer_status[uniq-id='+uniq_id+']').val();
	let offer_venu_name = $('.offer_venu_list[uniq-id='+uniq_id+']').val();


if(dob_condition=="" && txn_condition_attr == "BirthdayOffer"){
	$("#alert_text").text("Please enter D.O.B");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(gender_condition=="" && txn_condition_attr == "Normal"){
		$("#alert_text").text("Please select Gender");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
if(txn_start_condition=="" && txn_condition_attr == "Normal"){
		$("#alert_text").text("Please enter Transaction Start Date");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
if(txn_end_condition=="" && txn_condition_attr == "Normal"){
		$("#alert_text").text("Please enter Transaction End Date");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(txn_start_condition > txn_end_condition && txn_condition_attr == "Normal"){
		$("#alert_text").text("Transaction End Date must be Greater than Start Date");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(txn_start_condition == txn_end_condition && txn_condition_attr == "Normal"){
		$("#alert_text").text("Transaction Start Date and End Date must not be equal");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
if(date_condition=="" && txn_condition_attr == "Normal"){
		$("#alert_text").text("Please enter Date");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	if(date_condition!==txn_start_condition && txn_condition_attr == "Normal"){
		$("#alert_text").text("Date must be same as Transaction Start Date");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
if(city_condition=="" && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please select Residence City");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(txn_condition=="" && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please select Transaction Amount Condition");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(from_price_condition=="" && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please enter Transaction From Price");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}

if(txn_condition_attr == 'Between'){
	if(to_price_condition==""){
		$("#alert_text").text("Please enter Transaction To Price");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	if(from_price_condition == to_price_condition && txn_condition_attr == "Normal"){
		$("#alert_text").text("Transaction From and To Price must not be equal");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(from_price_condition > to_price_condition && txn_condition_attr == "Normal"){
		$("#alert_text").text("Transaction To Price must be greater than From Price");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
}

if(offer_name=="" && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please enter Offer name");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_name.match(/^\s*$/) && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please enter valid Offer name");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_venu_name==""){
	$("#alert_text").text("Please select venu name");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_desc=="" && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please enter offer description");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}

if(offer_desc.match(/^\s*$/) && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please enter valid offer description");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_img_src==""){
	$("#alert_text").text("Please upload image");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_img_value==""){
	$("#alert_text").text("Please upload image");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_from_date=="" && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please enter From Date");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_to_date=="" && txn_condition_attr == "Normal"){
		$("#alert_text").text("Please enter To Date");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
}
if(offer_from_date > offer_to_date && txn_condition_attr == "Normal"){
	$("#alert_text").text("Offer End Date must be Greater than Start Date");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_from_date == offer_to_date && txn_condition_attr == "Normal"){
	$("#alert_text").text("Offers Start Date and End Date must not be equal");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_time=="" && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please enter Time");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_to_time=="" && txn_condition_attr == "Normal"){
	$("#alert_text").text("Please enter To Time");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}
if(offer_status==""){
	$("#alert_text").text("Please select Status");
	$("#validationModel").modal("show");
	$("#validationModel").unbind("click");
	return false;
}


let offersdata = {
	dob_condition:dob_condition,
	gender_condition:gender_condition,
	txn_start_condition:txn_start_condition,
	txn_end_condition:txn_end_condition,
	date_condition:date_condition,
	city_condition:city_condition,
	txn_condition:txn_condition,
	from_price_condition:from_price_condition,
	to_price_condition:to_price_condition,
	offer_name:offer_name,
	offer_desc:offer_desc,
	offer_from_date:offer_from_date,
	offer_to_date:offer_to_date,
	offer_time_data:offer_time_data,
	offer_to_time_data:offer_to_time_data,
	offer_status:offer_status,
	// offer_venu_name:offer_venu_name,
	offer_img_hidden_value:offer_img_hidden_value,
	offer_img_hidden_attr:offer_img_hidden_attr,
	uniq_id:uniq_id,
	venu_id:venu_id,
	offer_img_hidden2,offer_img_hidden2,
	"_token":"{{ csrf_token() }}",
}

$.ajax({
	url:'{{ route("admin.saveoffers") }}',
	dataType:'JSON',
	type:'POST',
	data:offersdata,
	beforeSend:function(){
		$('#loaderModel').modal('show');
		$("#loaderModel").unbind("click");
	},
	success:function(data){
		setTimeout(function(){
			$("#loaderModel").modal("hide");
			$("#successModel").modal("show");
  		$("#success_alert_text").text(data.message);
  		$("#successModel").unbind("click");
  	},500);
  	$(this).attr('data-id',data.data.id);
  	$('.offers_list[uniq-id='+uniq_id+']').attr('data-id',data.data.id);

	},error: function(data, textStatus, xhr) {
        if(data.status == 422){
          setTimeout(function(){
          	$("#loaderModel").modal("hide");
              	var result = data.responseJSON;
             	if(result['offer_name_err'] && result['offer_name_err'].length > 0){
             		$("#alert_text").text(result['offer_name_err']);
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
             	}
              return false;
          },500);
        } 
  	}
});
});

// get all venu list record

function venuRecords(){
	var uniqid = $('.offer_form_data.active').attr('uniq-id');
	var venuid = $('.offer_form_data.active').attr('venu-id');
	$.ajax({
		url:'{{ route("admin.venu_select") }}',
		dataType:'JSON',
		type:'POST',
		data:{venuid:venuid,"_token":"{{ csrf_token() }}"},
		beforeSend:function(){
			$('#loaderModel').modal('show');
			$("#loaderModel").unbind("click");
		},
		success:function(data){
			setTimeout(function(){
				$("#loaderModel").modal("hide");
	  	},500);
			var datacity = data.cityall;
			for(var j=0; j<datacity.length; j++){
				$('.criteria_city[uniq-id='+uniqid+']').append(`<option value="${datacity[j].id}">${datacity[j].city_name}</option>`);
			}
	  	var venulist = data.venuOffers;
	  	$('.offer_venu_list[uniq-id='+uniqid+']').val(venulist.venue_name);
	  	$('.offer_venu_address[uniq-id='+uniqid+']').val(venulist.address);
	  	$('.offer_venu_phone[uniq-id='+uniqid+']').val(venulist.phone_number);
	  	$('.offer_venu_googlemap[uniq-id='+uniqid+']').val(venulist.google_map_location_link);
	  	$('.offer_venu_booknow[uniq-id='+uniqid+']').val(venulist.book_now_link);
		}
	});
}

// Input write dependency
$(document).on('keyup','.offers_list.active input',function(){
	var value = $(this).val();
	var uniqid = $(this).attr('uniq-id');
	$(".offer_name[uniq-id="+uniqid+"]").val(value);
});

// Input write dependency
$(document).on('keyup','.offer_form_data.active .offer_name',function(){
	var valueinput = $(this).val();
	var uniqid = $(this).attr('uniq-id');
	$(".offers_list.active input[uniq-id="+uniqid+"]").val(valueinput);
});

//for all offers
function alloffers(){
	var venuid = $('.venu-tab-list').attr('venu-id');
	$.ajax({
		url:'{{ route("admin.alloffers") }}',
		type:'GET',
		dataType:'JSON',
		beforeSend:function(){
			$('#loaderModel').modal('show');
			$("#loaderModel").unbind("click");
		},
		success:function(data){
			setTimeout(function(){
				$("#loaderModel").modal("hide");
	  	},500);

	  	var dataoffer = data.offer;
	  	var datacity = data.cityall;
	  	
	  	for(var i=0; i < dataoffer.length; i++){

	  		var imagename = dataoffer[i].name_of_file_show;
	  		var name_len = imagename.length;
	  		if(name_len > 24){
	  			var slice_name =  imagename.slice(0,24)+'...';
	  		}else{
	  			var slice_name = imagename;
	  		}

	  		$('#uniqid').attr('uniq-id',dataoffer[i].unique_id);

	  		if(dataoffer[i].deleted_at==null){
	  			$('.menu-lisitng ul.listitem').append(`<li id="venu-${dataoffer[i].venu_id}" class="offers_list" uniq-id="${dataoffer[i].unique_id}" venu-id="${dataoffer[i].venu_id}" data-id="${dataoffer[i].id}" data-tab="uniq-${dataoffer[i].unique_id}"><input type="text" offertype="${(dataoffer[i].offer_type=='BirthdayOffer')?dataoffer[i].offer_type:'Normal'}" ${(dataoffer[i].offer_type=='BirthdayOffer')?'readonly':''} class="input_tier_name" maxlength="30" uniq-id="${dataoffer[i].unique_id}" venu-id="${dataoffer[i].venu_id}" value="${dataoffer[i].offer_name}"></li>`);

	  			$('.formdata').append(offerform(dataoffer[i].unique_id,dataoffer[i].venu_id,dataoffer[i].offer_name,dataoffer[i].offer_desc,dataoffer[i].image,dataoffer[i].from_date,dataoffer[i].to_date,dataoffer[i].offer_setting,dataoffer[i].status,dataoffer[i].time,dataoffer[i].to_time,slice_name,dataoffer[i].id,dataoffer[i].venu,dataoffer[i].offer_setting.id,dataoffer[i].offer_setting.city,dataoffer[i].offer_type,dataoffer[i].offer_setting.gender));

	  			for(var j=0; j<datacity.length; j++){
						$('.criteria_city[uniq-id='+dataoffer[i].unique_id+']').append(`<option value="${datacity[j].id}">${datacity[j].city_name}</option>`);
					}
					if(dataoffer[i].offer_setting.txn_amount_condition === 'Greater Than'){
						$('.criteria_to_price[uniq-id='+dataoffer[i].unique_id+']').css('display','none');
					}else{
						$('.criteria_to_price[uniq-id='+dataoffer[i].unique_id+']').css('display','block');
					}
	  		}

	  		
	  	}
	  	
	  	var id_venu = $('.venu-tab-list.active').attr('venu-id');
	  	var venu_link = $('.offers_list[venu-id='+id_venu+']').attr('venu-id');
	  	var len = $('.offers_list').length;
	  	for(var i=0; i<len; i++){
	  		var offer_venu_id = $('.menu-lisitng .listitem .offers_list').eq(i).attr('venu-id');
	  		if(id_venu == offer_venu_id){
	  			$('.offers_list[venu-id='+offer_venu_id+']').first().addClass('active');
	  			$('.offer_form_data[venu-id='+offer_venu_id+']').first().addClass('active');
	  		}else{
	  			$('.offers_list[venu-id='+offer_venu_id+']').addClass('in-active');
	  		}
	  	}
		}
	});
}

alloffers();


$(document).on('input','.criteria_txn_condition',function(){
	var value = $(this).val();
	var uniq_id = $(this).attr('uniq-id');
	if(value == 'Greater Than'){
		$('.criteria_to_price[uniq-id='+uniq_id+']').css('display','none');
	}else{
		$('.criteria_to_price[uniq-id='+uniq_id+']').css('display','block');
	}
});
	</script>
</body>