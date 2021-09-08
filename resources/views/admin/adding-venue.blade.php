<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Add Venue</title>
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
	<style>
		div#loaderImg2 {
		    position: absolute;
		    left: 0;
		    right: 0;
		    text-align: center;
		    margin-top: 250px;
		}
		img.upload_icon {
		    position: absolute;
		    width: 30px;
		    top: 35px;
		    right: 20px;
		    cursor: pointer;
		}
		#validationModel .modal-title{
		    text-align: center;
		    width: 100%;
		    font-size: 20px;
		    font-weight: 600;
		}
		input.input_tier_name {
	    border: 0!important;
	    background-color: #ebebeb00!important;
	    color: #4B4B4B!important;
	    font-family: 'Signika', sans-serif;
	    font-weight: 700;
	    width: 100%;
		}

		input:focus {
		    border: 0px solid transparent !important;
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

		.venu_list.tab-active{
			background-color: #eaeaea;
		}
		.formdata_show.tab-active{
			display: block;
			/*background: #eaeaea;*/
		}

		.formdata_show{
			display: none;
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

		input .input_tier_name{
			background-color: #EAEAEA!important;
		}

		option:not(:checked) {
		  background-color: #fff;
		}

		.venu_desc::-webkit-scrollbar{
			width: 0px;
			scrollbar-width: 0px;
		}
		
	</style>

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
	<div class="uniqid_db"></div>
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
	<div class="container-fluid menu-tabs">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" href="{{route('admin.addingVenue')}}">Our Venues</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{{route('admin.addingEvents')}}">Events</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{{route('admin.offerSettings')}}">Offers</a>
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
									<a href="javascript:void(0);" id="add_venue">
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
				<div class="col-md-9 padding-top venuregister_append">
					
				</div>
			</div>
			
		</div>
		<!-- <div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">cvcvbcvbcbc</div>
		</div> -->
	</div>

	<!-- loader modal -->

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
        <p id="alert_text">info</p>
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
        <p id="success_alert_text">Are you sure, you want to delete this venue?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">No</button> 
        <button type="button" class="btn btn-secondary confirm_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;" onclick="removeVenue();"  data-dismiss="modal">Yes</button>
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

	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<script src="{{url('public/admin/assets/js/setting-demo.js')}}"></script>
	<!-- <script src="{{url('public/admin/assets/js/demo.js')}}"></script> -->
	<script>
		$(document).ready(function(){
			$(".ok").on("click",function(){
				$("#validationModel").modal("hide");
				$("#successModel").modal("hide");
			})
		});

		function venueNames(){
			$.ajax({
				url:'{{ route("admin.venuels") }}',
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
					let list = data.list;
					let list_length = list.length;
					let last_venue = data.last_venue;

					if(last_venue != "" || last_venue != undefined){

						$('.uniqid_db').html('<span uniq-id="'+last_venue.unique_id+'"class="last_db_id"></span>');
					}

					for(let i=0; i<list.length; i++){

							var imgname = list[i].name_of_file_show;
							if(imgname != null && imgname != "" && imgname != undefined){

								var length = imgname.length;

								if(length>24){
									var slice = imgname.slice(0,24)+'...';
								}else{
									var slice = imgname;
								}
							}else{
								var slice = "";
							}

						

						if(list[i].deleted_at==null){
						$('.menu-lisitng ul.listitem').append(`<li class="venu_list" unique-id="${list[i].unique_id}" data-id="${list[i].id}" data-tab="uniq-${list[i].unique_id}"><input type="text" class="input_tier_name" maxlength="30" unique-id="${list[i].unique_id}" value="${list[i].venue_name}" placeholder="Enter Venue Name"></li>`);

						$('.venuregister_append').append(venuform(list[i].unique_id,list[i].venue_name,list[i].address,list[i].venue_description,list[i].phone_number,list[i].google_map_location_link,list[i].book_now_link,slice,list[i].menu_link,list[i].status,list[i].id,list[i].image));
					}
				}
				$('.menu-lisitng ul.listitem li').first().addClass('tab-active');
				var first_id = $('.menu-lisitng ul.listitem li').first().attr('unique-id');
				$('.formdata_show[unique-id='+first_id+']').addClass('tab-active');

				
			}

			});
		}
		venueNames();
		// Menu click tab active and remove
		$(document).on('click','.menu-lisitng ul.listitem li',function(){
			var uniqid = $(this).attr('data-tab');
			var id_uniq = $(this).attr('unique-id');
			$('.menu-lisitng ul li').removeClass('tab-active');
			$('.formdata_show').removeClass('tab-active');
			$(this).addClass('tab-active');
			$("#"+uniqid).addClass('tab-active');
			$('venu_list .input_tier_name').css({'background-color':'#e3dfdf'});
		});

		// Input write dependency
		$(document).on('keyup','.venu_list.tab-active input',function(){
			var value = $(this).val();
			var uniqid = $(this).attr('unique-id');
			$(".venu_name[unique-id="+uniqid+"]").val(value);
		});

		// Input write dependency
		$(document).on('keyup','.formdata_show.tab-active .venu_name',function(){
			var valueinput = $(this).val();
			var uniqid = $(this).attr('unique-id');
			$(".venu_list.tab-active input[unique-id="+uniqid+"]").val(valueinput);
		});

		//Plus icon add menu list or remove or active
		$("#plus_icon").on('click',function(){
				
				var incattr = $('.last_db_id').attr('uniq-id');
				var inc = 0;
				if(!incattr){
					let inc_id = parseInt(inc)+1;
					$('.uniqid_db').html('<span uniq-id="'+inc_id+'"class="last_db_id"></span>');
				}else{
					var inc_attr = parseInt(incattr)+1;
					$('.uniqid_db').html('<span uniq-id="'+inc_attr+'"class="last_db_id"></span>');
				}

				var inc_recent = $('.last_db_id').attr('uniq-id');
				$('.menu-lisitng ul.listitem li').removeClass('tab-active');
				$('.formdata_show').removeClass('tab-active');
				$('.menu-lisitng ul.listitem').append(`<li class="venu_list tab-active" unique-id="${inc_recent}" data-tab="uniq-${inc_recent}"><input type="text" class="input_tier_name" maxlength="30" value="" unique-id="${inc_recent}" placeholder="Enter Venue Name"></li>`);
				var recent_id = $('.venu_list.tab-active').attr('unique-id');
				$('.venuregister_append').append(venuform(recent_id));
				$(".formdata_show[unique-id='"+recent_id+"']").addClass('tab-active');

					incattr++;

		});

		//minus icon add menu list or remove or active

		$('#minus_icon').on('click',function(){
			if($('.venu_list').length>0){
				$("#confirmationmodel").modal('show');
			}
		});

		function removeVenue(){
			var last_data = $('.venu_list.tab-active').last().attr('data-id');
			var last_uniq_id = $('.venu_list.tab-active').last().attr('unique-id');
			var last_val = $('.venu_list.tab-active input').val();
			let _prev_venue = $('.venu_list.tab-active').prev().attr('unique-id');
			let _next_venue = $('.venu_list.tab-active').next().attr('unique-id');

			if(last_data){
				$.ajax({
					url:'{{ route("admin.remove_elem") }}',
					data:{elem_id:last_uniq_id,last_val:last_val,'_token':'{{ csrf_token() }}'},
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
							$('.formdata_show.tab-active').remove();
							$('.venu_list.tab-active').remove();
							if(_next_venue > 0){
								$('.venu_list[unique-id='+_next_venue+']').addClass('tab-active');
								$('.formdata_show[unique-id='+_next_venue+']').addClass('tab-active');
							}else if(_prev_venue > 0){
								$('.venu_list[unique-id='+_prev_venue+']').addClass('tab-active');
								$('.formdata_show[unique-id='+_prev_venue+']').addClass('tab-active');
							}
	        			},500);
					},error: function(data, textStatus, xhr) {
			            if(data.status == 422){
			              setTimeout(function(){
			              	$("#loaderModel").modal("hide");
			                  	var result = data.responseJSON;
			                 	if(result['remove_venue_err'] && result['remove_venue_err'].length > 0){
			                 		$("#alert_text").text(result['remove_venue_err']);
									$("#validationModel").modal("show");
									$("#validationModel").unbind("click");
			                 	}
			                  return false;
			              },500);
			            } 
			      	}
				});
			}else{

					$('.formdata_show.tab-active').remove();
					$('.venu_list.tab-active').remove();
				if(_next_venue > 0){
					$('.venu_list[unique-id='+_next_venue+']').addClass('tab-active');
					$('.formdata_show[unique-id='+_next_venue+']').addClass('tab-active');
				}else if(_prev_venue > 0){
					$('.venu_list[unique-id='+_prev_venue+']').addClass('tab-active');
					$('.formdata_show[unique-id='+_prev_venue+']').addClass('tab-active');
				}

	      	$("#successModel").modal("show");
	    		$("#success_alert_text").text('Venue deleted successfully');
        	$("#successModel").unbind("click");
			}
		}

function venuform(uniqueid,vname,vaddr,vdesc,vphone,vmap,vbook,vimage,vmenu,vstatus,dataId,imagename){
	if(imagename){
		var imageurl = `<input name="venu_img" readonly type="text" class="form-control venu_img form-control-user" src="${imagename}" value="${(vimage) ? `${vimage}`: ''	}" unique-id="${uniqueid}" style="cursor:pointer;" />`
	}else{
		var imageurl = `<input name="venu_img" readonly type="text" class="form-control venu_img form-control-user" src="" value="" style="cursor:pointer;" unique-id="${uniqueid}"/>`
	}
	return `<div class="formdata_show ${(uniqueid==1) ? 'tab-active':''}" id="uniq-${uniqueid}" unique-id="${uniqueid}">
						<div class="row pr-5 pl-3 ">
						<div class="col-md-6 venue_inputs">
							<label>
								Venue Name
							</label>
							<input id="vname" name="venu_name" type="text"  maxlength="30" class="form-control venu_name form-control-user" value="${(vname) ? `${vname}` : ''}" unique-id="${uniqueid}" placeholder="Venue Name" />
							<input type="text" hidden class="venu_imghidden" unique-id="${uniqueid}">
							<input type="text" hidden class="venue_imagehidden2" value="${(imagename)?imagename:''}" unique-id="${uniqueid}">
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Image
							</label>
							${imageurl}
							<label for="img_upload" data-toggle="tooltip" data-placement="top" title="Click to upload image"><img unique-id="${uniqueid}"  src="{{url('public/upload_icon.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;"></label>
							<input type="file" unique-id="${uniqueid}" src="" id="img_upload" class="img_upload" hidden />
						</div>
					</div>
					<div class="row pr-5 pl-3  mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Address
							</label>
							<input type="text" name="venu_addr" class="form-control venu_addr form-control-user" maxlength="80" value="${(vaddr) ? `${vaddr}` : ''}" placeholder="Address" unique-id="${uniqueid}" />
						</div>
						<div class="col-md-6 venue_inputs">
							<label>
								Menu Link
							</label>
							<input type="url" class="form-control venu_menu" name="venu_menu" unique-id="${uniqueid}" maxlength="2000" placeholder="Menu Link" value="${(vmenu) ? `${vmenu}` : ''}"/>
						</div>
					</div>
					<div class="row pr-5 pl-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Venue Description
							</label>
							<textarea maxlength="1000" name="venu_desc" class="form-control venu_desc" style="font-size: 14px !important; padding:6px 10px;" rows="5" placeholder="Venue Description" unique-id="${uniqueid}" >${(vdesc) ? `${vdesc}` : ''}</textarea>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Phone Contact
							</label>
							<input type="tel" name="venu_phone" value="${(vphone) ? `${vphone}` : ''}" class="form-control venu_phone form-control-user" minlength="1" maxlength="30" placeholder="Phone Contact" unique-id="${uniqueid}" />
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Google Map Location Link
							</label>
							<input type="url" class="form-control venu_map" name="venu_map" unique-id="${uniqueid}" maxlength="2000" placeholder="Google map location link" unique-id="${uniqueid}" value="${(vmap) ? `${vmap}` : ''}">
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<label>
								Book Now Link
							</label>
							<input type="url" class="form-control venu_tab_book" unique-id="${uniqueid}" maxlength="2000" placeholder="Book Now Link" value="${(vbook) ? `${vbook}` : ''}">
						</div>
						<div class="col-md-6 venue_inputs" name="venu_tab_book">
							<label>
								Status
							</label>
							<div class="selectdiv">
								<select class="form-control venu_status form-group" name="venu_status" unique-id="${uniqueid}"  style="padding: .6rem 1rem; position: relative; cursor:pointer;">
									<option value="">Select Status</option>
									<option ${(vstatus=='Active')?'selected':''} value="Active">Active</option>
									<option ${(vstatus=='Inactive')?'selected':''} value="Inactive">Inactive</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row pr-5 pl-3 mt-3">
						<div class="col-md-6 venue_inputs">
							<a href="javascript:void(0);" data-id="${(dataId) ? dataId : ''}" unique-id="`+uniqueid+`" class="btn btn-primary venuSave btn-user btn-block common_btn">
	                      		Save
	                    	</a>
                    	</div>	
							</div>
						</div>`;

}


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

	var form_activeid = $(".formdata_show.tab-active").attr('unique-id');

	if(file){

		if(file.type == "image/jpeg" || file.type == "image/png" || file.type == "image/jpg"){

			var size = file.size;
			if(size > 5242880){
				// event.target.value="";
				// $(".venu_img[unique-id="+form_activeid+"]").attr('src','');
				// $(".venu_img[unique-id="+form_activeid+"]").attr('value','');
				// $(".venu_imghidden[unique-id="+form_activeid+"]").val('');
				// $("#img_upload[unique-id="+form_activeid+"]").attr('src','');
				$("#alert_text").text("Image should be less than or equal to 5 MB.");
		        $("#validationModel").modal("show");
		        $("#validationModel").unbind("click");
        
				return false;
			}else{
					var reader = new FileReader();
			reader.onload = function(e){
				$(".venu_img[unique-id="+form_activeid+"]").attr('src',e.target.result);
				$(".venu_img[unique-id="+form_activeid+"]").attr('value',slice_name);
				$(".venu_imghidden[unique-id="+form_activeid+"]").attr('value',file_nameshow);
				$(".venue_imagehidden2[unique-id="+form_activeid+"]").val('');
				$("#img_upload[unique-id="+form_activeid+"]").attr('src',e.target.result);
			}
			}
		

			reader.readAsDataURL(file);

		}else{
			$("#alert_text").text("Please upload .jpg, .jpeg or .png format file only.");
      $("#validationModel").modal("show");
      $("#validationModel").unbind("click");
		}
	}
});

$(document).on('click','.venu_img',function(){
	// let uniqid = $('.formdata_show.tab-active').attr('unique-id');
	var get_base64 = $(this).attr('src');
	if(get_base64){
	fetch(get_base64)
   	.then(e => e.blob())
   	.then(e => {
        // console.log("-- ",e)
        let obj = URL.createObjectURL(e);
        // console.log("-- ",obj)
        window.open(obj);
   	})
   	.catch(e => {
   		console.log(e)
   	});
   }
});

$(document).on('input','.venu_phone',function(event){
	return process(this);
});

function process(input){
  let value = input.value;
  let numbers = value.replace(/[^0-9]/g, "");
  input.value = numbers;
}

$(document).on('click','.venuSave',function(){

	let uniq = $(this).attr('unique-id');
	let dataId = $(this).attr('data-id');
	let vname = $(".venu_name[unique-id='"+uniq+"']").val();
	let vimg = $('.venu_img[unique-id='+uniq+']').attr('src');
	let vimg_value = $('.venu_img[unique-id='+uniq+']').val();
	let vimg_val = $('.venu_imghidden[unique-id='+uniq+']').val();
	let hidevimg = $('#img_upload[unique-id='+uniq+']').attr('src');
	let vaddr = $('.venu_addr[unique-id='+uniq+']').val();
	let vmenu = $('.venu_menu[unique-id='+uniq+']').val();
	let vdesc = $('.venu_desc[unique-id='+uniq+']').val();
	let vphone = $('.venu_phone[unique-id='+uniq+']').val();
	let vmap = $('.venu_map[unique-id='+uniq+']').val();
	let vbook = $('.venu_tab_book[unique-id='+uniq+']').val();
	let vstatus = $('.venu_status[unique-id='+uniq+']').val();
	let hidden_img2 =  $(".venue_imagehidden2[unique-id="+uniq+"]").val();

	if(vname == ""){
		$("#alert_text").text("Please enter venue name.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	if(vname.match(/^\s*$/)){
		$("#alert_text").text("Please enter valid venue name.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	if(vimg == ""){
		$("#alert_text").text("Please upload image.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	// hidden image validation value
	if(vimg_value ==""){
		$("#alert_text").text("Please upload image.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vaddr == ""){
		$("#alert_text").text("Please enter address.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	if(vaddr.match(/^\s*$/)){
		$("#alert_text").text("Please enter valid address.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vmenu == ""){
		$("#alert_text").text("Please enter menu link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(!vmenu.match(/(^http:\/\/)|(^https:\/\/)/)){
		$("#alert_text").text("Please enter valid menu link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	if(vmenu.indexOf(" ") >=0){
		$("#alert_text").text("Please enter valid menu link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vdesc == ""){
		$("#alert_text").text("Please enter venue description.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	if(vdesc.match(/^\s*$/)){
		$("#alert_text").text("Please enter valid venue description.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	
	if(vphone == ""){
		$("#alert_text").text("Please enter phone contact.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vphone.length < 1){
		$("#alert_text").text("Phone number should be between 1 to 30 digits.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vmap == ""){
		$("#alert_text").text("Please enter google map location link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(!vmap.match(/(^http:\/\/)|(^https:\/\/)/)){
		$("#alert_text").text("Please enter valid google map location link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vmap.indexOf(" ") >=0){
		$("#alert_text").text("Please enter valid google map location link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vbook == ""){
		$("#alert_text").text("Please enter book now link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(!vbook.match(/(^http:\/\/)|(^https:\/\/)/) ){
		$("#alert_text").text("Please enter valid book now link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vbook.indexOf(" ") >=0){
		$("#alert_text").text("Please enter valid book now link.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}
	if(vstatus == ""){
		$("#alert_text").text("Please select venue status.");
		$("#validationModel").modal("show");
		$("#validationModel").unbind("click");
		return false;
	}

	$.ajax({
		url:'{{ route("admin.venusave") }}',
		dataType:'JSON',
		data:{uniq:uniq,vname:vname,vimg:vimg,vaddr:vaddr,vimg_val:vimg_val,vmenu:vmenu,vdesc:vdesc,vphone:vphone,vmap:vmap,vbook:vbook,vstatus:vstatus,dataId:dataId,hidden_img2:hidden_img2,'_token':'{{ csrf_token() }}'},
		type:'POST',
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
	  		$(".formdata_show.tab-active .common_btn").attr('src',data.data['id']);
	  	},500);
		},error: function(data, textStatus, xhr) {
            if(data.status == 422){
              setTimeout(function(){
              	$("#loaderModel").modal("hide");
                  	var result = data.responseJSON;
                 	if(result['venue_name_err'] && result['venue_name_err'].length > 0){
                 		$("#alert_text").text(result['venue_name_err']);
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
                 	}
                  return false;
              },500);
            } 
      	}
	});

});

	// for restrict first time blank space
	
		$(document).on('keydown','.venu_name, .venu_desc, .venu_addr, .venu_phone, .venu_menu, .venu_map, .venu_tab_book, .input_tier_name',function(e){
			if(e.which===32 && e.target.selectionStart===0){
				return false;
			}
		});

</script>
		
</body>