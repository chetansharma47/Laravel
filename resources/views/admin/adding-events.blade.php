<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Add Event</title>
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
		.menu-lisitng ul {
		    height: 450px;
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

		.form_data{
			display: none;
		}
		.form_data.active{
			display: block;
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

		.event_desc::-webkit-scrollbar{
			width: 0px;
			scrollbar-width: 0px;
		}
		.google_map::-webkit-scrollbar{
			width: 0px;
			scrollbar-width: 0px;
		}
		@media (max-width: 4000px) {
			.google-map {
				margin-top: -25px !important;
			}
			.book-now {
				margin-top: 0 !important
			}
		}
		@media (max-width: 2080px) {
			.google-map {
				margin-top: -44px !important;
			}
		}
		@media (max-width: 1242px) { 
			.google-map {
			 	margin-top: -75px !important;
			}
			.book-now {
    			margin-top: -38px !important;
			}
		}
		@media (max-width: 1400px) {
			.google-map {
			 	margin-top: -56px !important;
			}
			.book-now {
    			margin-top: -28px !important;
			}
		}
	</style>
	<style>
		body {
			background: #fff !important;
		}
	</style>
</head>
<body>
<!-- <div id="uniq_id_db"><span id="unique" uniq-id="1"></span></div> -->
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span> Add Restaurants, Events, Offers</a>
									</li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-12 text-center">
								<ul class="" style="padding-left: 25px;">
										<a class="nav-link" href="{{route('admin.adminTabs')}}">
											<img src="{{url('public/admin/assets/img/logo-approved.png')}}" style="width: 100px;" alt="logo-approved">
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
						<ul class="listitem" style="margin-left: 0; background-color:#E3DFDF;">
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
				<div class="col-md-9 padding-top formdata">
				</div>
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
        <p id="success_alert_text">Are you sure, you want to delete this event?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">No</button> 
        <button type="button" class="btn btn-secondary confirm_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;" onclick="removeEvents();"  data-dismiss="modal">Yes</button>
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
	<!-- <script src="{{url('public/admin/assets/js/demo.js')}}"></script> -->
      
    	<script>


    		function eventRecords(){
					$.ajax({
						url:'{{ route("admin.eventsalldata") }}',
						type:'GET',
						dataType:'JSON',
						beforeSend:function(){
				      $("#loaderModel").modal("show");
							$("#loaderModel").unbind("click");
						},
						success:function(data){
							// console.log(data);
							// return false;
							setTimeout(function(){
								$("#loaderModel").modal("hide");
					  	},500);

					  	let list = data.list;
					  	let last_event = data.last_event;
					  	
					  	
					  	if(last_event != "" && last_event != undefined && last_event != null){

					  		$('#uniq_id_db').html(`<span id="unique" uniq-id="${last_event.unique_id}"></span>`);
					  	}

					  	for(var i=0; i<list.length; i++){

					  		var imagename = list[i].name_of_file_show;
					  		var name_len = imagename.length;

					  		if(name_len > 24){
					  			var slice_name =  imagename.slice(0,24)+'...';
					  		}else{
					  			var slice_name = imagename;
					  		}
								
								//console.log(list[i]);
								if(list[i].deleted_at==null && list[i].venu.deleted_at==null){

									$('.menu-lisitng ul.listitem').append(`<li class="event_list" uniq-id="${list[i].unique_id}" data-id="${list[i].id}" data-tab="uniq-${list[i].unique_id}"><input type="text" class="input_tier_name" maxlength="30" uniq-id="${list[i].unique_id}" value="${list[i].event_name}"></li>`);
									$('.formdata').append(eventform(list[i].unique_id,list[i].event_name,list[i].event_description,list[i].from_date,list[i].to_date,list[i].when_day,list[i].event_time,list[i].to_time,list[i].status,list[i].image,list[i].venu_id,list[i].venu,list[i].venue_all,slice_name));

										for(var j=0; j<list[i].venue_all.length; j++){
											var venu_data_id = list[i].venue_all[j].id;
											var venu_data_name = list[i].venue_all[j].venue_name;
											var option = `<option value="${venu_data_id}" ${list[i].venu_id == venu_data_id ? 'selected' : ''}>${venu_data_name}</option>`;
											$('.venue_name[uniq-id='+list[i].unique_id+']').append(option);
										}
								}

					  }

					  	$('.menu-lisitng ul.listitem li').first().addClass('active');
							var first_id = $('.menu-lisitng ul.listitem li').first().attr('uniq-id');
							$('.form_data[uniq-id='+first_id+']').addClass('active');

							
						}
					});
		}

		eventRecords();

		function eventform(id,eventname,desc,fromdate,todate,whenday,event_time,to_time,status,image,venuid,venuEvelist,venu_other_list,slice_name){
			// for checkboxes seleted days 
			if(whenday){
				var split = whenday.split(',');
			for(var j=0; j<split.length; j++){
				if(split[j] == 'Tuesday'){
					var tue = split[j];
				}
				if(split[j] == 'Wednesday'){
					var wed = split[j];
				}
				if(split[j] == 'Thursday'){
					var thu = split[j];
				}
				if(split[j] == 'Friday'){
					var fri = split[j];
				}
				if(split[j] == 'Saturday'){
					var sat = split[j];
				}
				if(split[j] == 'Sunday'){
					var sun = split[j];
				}
				if(split[j] == 'Monday'){
					var mon = split[j];
				}
				
				}
			}

			if(image){
				var imageurl = `<input name="event_img" readonly type="text" class="form-control event_img form-control-user" src="${image}" value="${(image)?slice_name:''}" uniq-id="${id}" style="cursor:pointer;" />`
			}else{
				var imageurl = `<input name="event_img" readonly type="text" class="form-control event_img form-control-user" src="" value="" style="cursor:pointer;" uniq-id="${id}"/>`
			}

			//for not selecting past date
			var date = new Date();
    	var fulldate = date.toISOString().slice(0,10);

    	//for convert 24 hour time to 12 hours
    	if(event_time){
	    	let hr = event_time.split(':')[0];
	    	let min = event_time.split(':')[1];
	    	let sec = event_time.split(':')[2];
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
	    	var time_input = `<input type="text" class="form-control event_time form-control-user" value="${new_time_12}" readonly style="cursor:pointer;" data-time="${(event_time) ? event_time : ''}" uniq-id="${id}"/>`
	    }else{
	    	var time_input = `<input type="text" class="form-control event_time form-control-user" value="" readonly style="cursor:pointer;" uniq-id="${id}"/>`
	    }

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
	    	let to_am_pm = to_hr_12.slice(-2);
	    	let to_new_hr = to_newtime[0];
	    	let to_new_min = to_newtime[1];
	    	let to_new_time_12 = to_new_hr + ':' + to_new_min + ' ' + to_am_pm.toUpperCase();
	    	var to_time_input = `<input type="text" class="form-control to_time form-control-user" value="${to_new_time_12}" readonly style="cursor:pointer;" data-time="${(to_time) ? to_time : ''}" uniq-id="${id}"/>`
	    }else{
	    	var to_time_input = `<input type="text" class="form-control to_time form-control-user" value="" readonly style="cursor:pointer;" uniq-id="${id}"/>`
	    }

			return `<div class="form_data" id="uniq-${id}" uniq-id="${id}">
			<div class="row pr-5 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Event Name
							</label>
							<input type="text" class="form-control form-control-user event_name" name="event_name" uniq-id="${id}" maxlength="30" placeholder="Event Name" value="${(eventname) ? eventname : ''}" />
							<input hidden="" class="event_imghidden" value="${(image) ? image : '' }" uniq-id="${id}"/>
							<input hidden="" class="event_imghidden2" value="${(image) ? image : '' }" uniq-id="${id}"/>
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Image
							</label>
							${imageurl}
							<label for="img_upload" data-toggle="tooltip" data-placement="top" title="Click to upload image">
							<img uniq-id="${id}" src="{{url('public/upload_icon.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
							</label>
							<input type="file" uniq-id="${id}" src="" id="img_upload" class="img_upload" hidden accept="image/*" />
						</div>
					</div>
					<div class="row pr-5 pl-3  mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Event Description
							</label>
							<textarea class="form-control event_desc" name="event_desc" style="font-size: 14px !important; padding:6px 10px;" maxlength="1000" rows="5" placeholder="Event Description" uniq-id="${id}">${(desc)?desc:''}</textarea>
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Venue Name
							</label>
							<div class="selectdiv">
								<select class="form-control venue_name form-group select_option" uniq-id="${id}" name="venue_name" style="padding: .6rem 1rem; position: relative; cursor:pointer;">
								<option value="">Select Venue name</option>
								</select>
							</div>
							<div class="mt-3">
								<label>
									Address
								</label>
								<input type="text" class="form-control event_addr form-control-user" value="${(venuid)?venuEvelist.address:''}" uniq-id="${id}" placeholder="Address" disabled style="background-color: #8D8A8A !important" />
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
											<input type="checkbox" ${ (mon)? 'checked':'' } uniq-id="${id}" class="day" value="Monday" name="day[]">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Tuesday</span>
											<input class="day" ${ (tue)? 'checked':'' } uniq-id="${id}" name="day[]" value="Tuesday" type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Wednesday</span>
											<input class="day" ${ (wed)? 'checked':'' } uniq-id="${id}" name="day[]" value="Wednesday" type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Thursday</span>
											<input class="day"  ${ (thu)? 'checked':'' } uniq-id="${id}" name="day[]" value="Thursday" type="checkbox">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Friday</span>
											<input type="checkbox" ${ (fri)? 'checked':'' } class="day" uniq-id="${id}" value="Friday" name="day[]" >
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Saturday</span>
											<input type="checkbox" ${ (sat)? 'checked':'' } class="day" uniq-id="${id}" value="Saturday" name="day[]" >
											<span class="checkmark"></span>
										</label>
									</div>
									<div>
										<label class="tick_box" style="width: 84px;"><span class="date">Sunday</span>
											<input type="checkbox" ${ (sun)? 'checked':'' } class="day" uniq-id="${id}" value="Sunday" name="day[]" >
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
								<input type="text" class="form-control event_phon form-control-user" value="${(venuid)?venuEvelist.phone_number:''}" uniq-id="${id}" placeholder="Phone contact" disabled style="background-color: #8D8A8A !important" />
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
							<input type="date" class="form-control from-date form-control-user" placeholder="From Date" name="from_date" min="${fulldate}" value="${(fromdate)?fromdate:''}" uniq-id="${id}" />
						</div>
						<div class="col-md-3 venue_inputs">
							<label>
								To Date
							</label>
							<input type="date" class="form-control to-date form-control-user" placeholder="To Date" value="${(todate)?todate:''}" min="${fulldate}" name="to-date" uniq-id="${id}"/>
						</div>
						<div class="col-md-6 venue_inputs">
							<div class="google-map" style="margin-top: -64px;">
								<label>
									Google Map Location Link
								</label>

								<textarea class="form-control google_map" style="font-size: 14px !important; background-color: #8D8A8A !important; padding:6px 10px;" rows="3" placeholder="Google Map Location Link" uniq-id="${id}" disabled>${(venuid)?venuEvelist.google_map_location_link:''}</textarea>
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
								<div class="book-now" style="margin-top: -29px;">
								<label>
									Book Now Link
								</label>

								<textarea class="form-control book_link" uniq-id="${id}" style="font-size: 14px !important; background-color: #8D8A8A !important; padding:6px 10px;" rows="2" placeholder="Book Now Link" disabled >${(venuid)?venuEvelist.book_now_link:''}</textarea>
							</div> 
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Status
							</label>
							<div class="selectdiv">
								<select class="form-control event_status form-group select_option" uniq-id="${id}" style="padding: .6rem 1rem; position: relative; cursor:pointer;">
									<option value="">Select Status</option>
									<option ${(status=='Active')?'selected':''} value="Active">Active</option>
									<option ${(status=='Inactive')?'selected':''} value="Inactive">Inactive</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<a href="javascript:void(0);" uniq-id="${id}" class="btn btn-primary btn-user btn-block common_btn">Save</a>
						</div>	
					</div>
					</div>`;
		}

		$(document).on('click','.form_data.active',function(){
			var id = $(this).attr('uniq-id');
			$('.event_time[uniq-id='+id+']').mdtimepicker();
			$('.to_time[uniq-id='+id+']').mdtimepicker();
		});

		$(document).on('click','ul.listitem li',function(){
			var data_tab = $(this).attr('data-tab');
			var uniq_id = $(this).attr('uniq-id');

			$('.form_data').removeClass('active')
			$('ul.listitem li').removeClass('active');
			$(this).addClass('active');
			$('#'+data_tab).addClass('active');
		});


		$('#plus_icon').click(function(){
			var last_id = $('#uniq_id_db #unique').attr('uniq-id');
			var inc = 0;

			if(!last_id){
				let set_last_id = parseInt(inc)+1;
				$('#uniq_id_db').html(`<span id="unique" uniq-id="${set_last_id}"></span>`);
			}else{
				let inc_last_id = parseInt(last_id)+1;
				$('#uniq_id_db').html(`<span id="unique" uniq-id="${inc_last_id}"></span>`);
			}

			var get_inc_last_id = $('#uniq_id_db #unique').attr('uniq-id');
			$('.menu-lisitng ul.listitem li').removeClass('active');
			$('.form_data').removeClass('active');
			$('.menu-lisitng ul.listitem').append(`<li class="event_list active" data-tab="uniq-${get_inc_last_id}" uniq-id="${get_inc_last_id}" href="javascript:void(0);"><input type="text" class="input_tier_name" maxlength="30" value="" uniq-id="${get_inc_last_id}" placeholder="Enter Event Name"></li>`);

			var recent_id = $('.event_list.active').attr('uniq-id');

			$('.formdata').append(eventform(recent_id));
			$('.form_data[uniq-id='+recent_id+']').addClass('active');
			$('#uniq_id_db #unique').attr('uniq-id',get_inc_last_id);
			venuRecord();
		});


		$('#minus_icon').on('click',function(){
			if($('.event_list').length>0){
				$("#confirmationmodel").modal('show');
			}
		});


		function removeEvents(){

			let _prev_venue = $('.event_list.active').prev().attr('uniq-id');
			let _next_venue = $('.event_list.active').next().attr('uniq-id');
			let active_event_data_id = $('.event_list.active').attr('data-id'); 
			let active_event_uniq_id = $('.event_list.active').attr('uniq-id');

			if(active_event_data_id){
				$.ajax({
					url:'{{ route("admin.eventremove") }}',
					data:{uniq_id:active_event_uniq_id,"_token":"{{ csrf_token() }}"},
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
							$('.form_data.active').remove();
							$('.event_list.active').remove();
							if(_next_venue > 0){
								$('.event_list[uniq-id='+_next_venue+']').addClass('active');
								$('.form_data[uniq-id='+_next_venue+']').addClass('active');
							}else if(_prev_venue > 0){
								$('.event_list[uniq-id='+_prev_venue+']').addClass('active');
								$('.form_data[uniq-id='+_prev_venue+']').addClass('active');
							}
	        	},500);
					}
				});
			}else{

				$('.event_list.active').remove();
				$('.form_data.active').remove();
				if(_next_venue > 0){
					$('.event_list[uniq-id='+_next_venue+']').addClass('active');
					$('.form_data[uniq-id='+_next_venue+']').addClass('active');
				}else if(_prev_venue > 0){
					$('.event_list[uniq-id='+_prev_venue+']').addClass('active');
					$('.form_data[uniq-id='+_prev_venue+']').addClass('active');
				}

					$("#successModel").modal("show");
		  		$("#success_alert_text").text('Event deleted successfully.');
		    	$("#successModel").unbind("click");
			}
		}


		// Input write dependency
		$(document).on('keyup','.event_list.active input',function(){
			var value = $(this).val();
			var uniqid = $(this).attr('uniq-id');
			$(".event_name[uniq-id="+uniqid+"]").val(value);
		});

		// Input write dependency
		$(document).on('keyup','.form_data.active .event_name',function(){
			var valueinput = $(this).val();
			var uniqid = $(this).attr('uniq-id');
			$(".event_list.active input[uniq-id="+uniqid+"]").val(valueinput);
		});

	$(document).on('change','#img_upload',function(e){

	var file = event.target.files[0];
	var file_nameshow = file.name;
	var valu = file_nameshow;
	var length = valu.length;
	if(length>24){
		var slice_name = valu.slice(0,24)+'...';
	}else{
		var slice_name = valu;
	}
	var form_activeid = $(".form_data.active").attr('uniq-id');

if(file){

		if(file.type == "image/jpeg" || file.type == "image/png" || file.type == "image/jpg"){

			var size = file.size;

			if(size > 5242880){
				// event.target.value="";
				// $(".event_img[uniq-id="+form_activeid+"]").attr('src','');
				// $(".event_img[uniq-id="+form_activeid+"]").attr('value','');
				// $(".event_imghidden[uniq-id="+form_activeid+"]").val('');
				// $("#img_upload[uniq-id="+form_activeid+"]").attr('src','');
				$("#alert_text").text("Image should be less than or equal to 5 MB.");
        $("#validationModel").modal("show");
        $("#validationModel").unbind("click");
				
        return false;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$(".event_img[uniq-id="+form_activeid+"]").attr('src',e.target.result);
				$(".event_img[uniq-id="+form_activeid+"]").attr('value',slice_name);
				$(".event_imghidden[uniq-id="+form_activeid+"]").attr('value',file_nameshow);
				$("#img_upload[uniq-id="+form_activeid+"]").attr('src',e.target.result);
				$('.event_imghidden2[uniq-id='+form_activeid+']').val('');
			}
			reader.readAsDataURL(file);

		}else{
			$("#alert_text").text("Please upload .jpg, .jpeg or .png format file only.");
      $("#validationModel").modal("show");
      $("#validationModel").unbind("click");
		}
	}
});

	$(document).on('click','.event_img',function(){
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

		$(document).on('click','.common_btn',function(){

			let uniq = $(this).attr('uniq-id');
			let eventname = $('.event_name[uniq-id='+uniq+']').val();
			let eventimg = $('.event_img[uniq-id='+uniq+']').attr('src');
			let org_img_valu = $('.event_imghidden[uniq-id='+uniq+']').val();
			let event_img_exists = $('.event_imghidden2[uniq-id='+uniq+']').val();
			// let hiddeenimg = $('.img_upload[uniq-id='+uniq+']').attr('src');
			let eventdesc = $('.event_desc[uniq-id='+uniq+']').val();
			let eventvenueid = $('.venue_name[uniq-id='+uniq+']').val();
			let from_date = $('.from-date[uniq-id='+uniq+']').val();
			let to_date = $('.to-date[uniq-id='+uniq+']').val();
			let event_time = $('.event_time[uniq-id='+uniq+']').val();
			let to_time = $('.to_time[uniq-id='+uniq+']').val();
			let event_time_data = $('.event_time[uniq-id='+uniq+']').attr('data-time');
			let to_time_data = $('.to_time[uniq-id='+uniq+']').attr('data-time');
			let event_status = $('.event_status[uniq-id='+uniq+']').val();
			let days_slected = $('.day[uniq-id='+uniq+']').val();
			let curr_time = new Date();
			let time_string = curr_time.toTimeString().slice(0,8);

  		let array = [];
  		 $('.day:checked[uniq-id='+uniq+']').each(function() {
	          array.push($(this).val());
	      });

  		let get_selected_days = array.join(',');

			if(eventname==""){
				$("#alert_text").text("Please enter event name.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(eventname.match(/^\s*$/)){
				$("#alert_text").text("Please enter event name.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(eventimg==""){
				$("#alert_text").text("Please upload image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(org_img_valu==""){
				$("#alert_text").text("Please upload image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(eventdesc==""){
				$("#alert_text").text("Please enter event description.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(eventdesc.match(/^\s*$/)){
				$("#alert_text").text("Please enter valid event description.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(eventvenueid==""){
				$("#alert_text").text("Please select venue name.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(array==""){
  		 		$("#alert_text").text("Please select days.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
  		 }
			if(from_date==""){
				$("#alert_text").text("Please select from date.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(to_date==""){
				$("#alert_text").text("Please select to date.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(from_date > to_date){
				$("#alert_text").text("To date should be greater than from date.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(event_time==""){
				$("#alert_text").text("Please select from time.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			
			// if(event_time_data <= time_string){
			// 	$("#alert_text").text("From time shoud be greater than current time.");
			// 	$("#validationModel").modal("show");
			// 	$("#validationModel").unbind("click");
			// 	return false;
			// }
			if(to_time==""){
				$("#alert_text").text("Please select to time.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(event_time_data >= to_time_data){
				$("#alert_text").text("To time should be greater than from time.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			// if(event_time_data == to_time_data){
			// 	$("#alert_text").text("To time should be greater than from time.");
			// 	$("#validationModel").modal("show");
			// 	$("#validationModel").unbind("click");
			// 	return false;
			// }

			if(event_status==""){
				$("#alert_text").text("Please select status.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			

			let data = {
				eventname:eventname,
				eventimg:eventimg,
				get_selected_days:get_selected_days,
				from_date:from_date,
				eventdesc:eventdesc,
				to_date:to_date,
				eventvenueid:eventvenueid,
				event_time:event_time,
				event_time_data:event_time_data,
				to_time_data:to_time_data,
				event_status:event_status,
				uniq:uniq,
				org_img_valu:org_img_valu,
				event_img_exists:event_img_exists,
				'_token':'{{ csrf_token() }}',
			}

				$.ajax({
					url:'{{ route("admin.saveEvent") }}',
					dataType:'JSON',
					type:'POST',
					data:data,
					beforeSend:function(){
			      $("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
					},
					success:function(data){
						setTimeout(function(){
							$("#loaderModel").modal("hide");
							$("#successModel").modal("show");
				  		$("#success_alert_text").text(data.message);
				  		$("#successModel").unbind("click");
				  	},500);

					},error: function(data, textStatus, xhr) {
			            if(data.status == 422){
			              setTimeout(function(){
			              	$("#loaderModel").modal("hide");
			                  	var result = data.responseJSON;
			                 	if(result['event_name_err'] && result['event_name_err'].length > 0){
			                 		$("#alert_text").text(result['event_name_err']);
									$("#validationModel").modal("show");
									$("#validationModel").unbind("click");
			                 	}
			                  return false;
			              },500);
			            } 
			      	}
				});

		});

		$(document).ready(function(){
			$(".ok").on("click",function(){
				$("#validationModel").modal("hide");
				$("#successModel").modal("hide");
			})
		});

	// for all venu records
		function venuRecord(){
			var uniqid= $('#uniq_id_db #unique').attr('uniq-id');
			$.ajax({
				url:'{{ route("admin.allvenu") }}',
				type:'GET',
				dataType:'JSON',
				beforeSend:function(){
		      $("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
				},
				success:function(data){
					setTimeout(function(){
						$("#loaderModel").modal("hide");
			  	},500);

					var list = data.venulist;
					for(var i=0; i<list.length; i++){
						$('.venue_name[uniq-id='+uniqid+']').append(`<option value="${list[i].id}">${list[i].venue_name}</option>`);
					}
				}
			});
		}

		$(document).on('change','.venue_name',function(){
			let uniq_id = $(this).attr('uniq-id');
			let venu_val = $('.venue_name[uniq-id='+uniq_id+']').val();

			if(venu_val){
				$.ajax({
					url:'{{ route("admin.particularVenu") }}',
					data:{venu_id:venu_val,"_token":"{{ csrf_token() }}"},
					dataType:'JSON',
					type:'POST',
					success:function(data){
						let vrecord = data.venuls;
						$('.event_addr[uniq-id='+uniq_id+']').val(vrecord.address);
						$('.event_phon[uniq-id='+uniq_id+']').val(vrecord.phone_number);
						$('.google_map[uniq-id='+uniq_id+']').val(vrecord.google_map_location_link);
						$('.book_link[uniq-id='+uniq_id+']').val(vrecord.book_now_link);
					}
				});
			}else{
				$('.event_addr[uniq-id='+uniq_id+']').val('');
				$('.event_phon[uniq-id='+uniq_id+']').val('');
				$('.google_map[uniq-id='+uniq_id+']').val('');
				$('.book_link[uniq-id='+uniq_id+']').val('');
			}
		});

		// for restrict first time blank space
	
		$(document).on('keydown','.event_desc, .input_tier_name, .event_name',function(e){
			if(e.which===32 && e.target.selectionStart===0){
				return false;
			}
		});

		// $(document).on('change','.event_time',function(){
		// 	var select_time = $(this).attr('data-time');
		// 	let curr_time = new Date();
		// 	let time_string = curr_time.toTimeString().slice(0,8);

		// 	if(select_time < time_string){
		// 		$("#alert_text").text("From time shoud be greater than current time.");
		// 		$("#validationModel").modal("show");
		// 		$("#validationModel").unbind("click");
		// 	}
		// });

	</script>
</body>