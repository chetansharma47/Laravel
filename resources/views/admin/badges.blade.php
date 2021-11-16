<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Badges</title>
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
	<style type="text/css">
	.badges_assign_label {
	    position: absolute;
	    top: 10px;
	}
		section.mt-5 .container-fluid {
		width: 100%;
		padding-right: 25px;
		padding-left: 25px;
		}
		.d-flex.justify-content-between.mt-4 {
		margin-left: 10px;
		margin-right: 10px;
		}
		.common_btn {
		width: 129px!important;
		font-size: 16px!important;
		}
		.row.left-side {
		margin-left: -5px;
		}
		#basic-datatables_wrapper,
		#basic-datatables2_wrapper,
		#basic-datatables3_wrapper {
		padding: 0 !important;
		}
		#basic-datatables_length {
		display: none;
		}
		.page-item.active .page-link {
		background-color: #193358;
		border-color: #193358;
		}
		.page-item.active .page-link:hover {
		color: #fff !important
		}
		div.dataTables_wrapper div.dataTables_filter input {
		font-size: 14px !important;
		border-radius: 0px !important;
		margin-bottom: 14px;
		padding: 3px 10px !important;
		border: 0 !important;
		background: #EBEBEB !important;
		font-family: 'Signika', sans-serif;
		font-weight: 700;
		font-size: 20px !important;
		color: #676767 !important;
		background-color: #EBEBEB !important;
		}
		.venue_inputs input::-webkit-input-placeholder {
		font-family: 'Signika', sans-serif !important;
		font-weight: 700 !important;
		}
		img.upload_icon {
		position: absolute;
		width: 30px;
		top: -47px;
		right: 0px;
		cursor: pointer;
		}
		.form-control:disabled, .form-control[readonly] {
		opacity: 1!important;
		}
		div#basic-datatables2_wrapper .col-sm-12,
		div#basic-datatables_wrapper .col-sm-12{
		overflow: auto;
		display: inline-block;
		width: 100%;

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

		select.form-control.form-group.status-select-table {
		height: 39px!important;
		font-size: 12px;
		width: 75px;

		}
		select.form-control.form-group.status-select-table:focus{
		border-color: #fff;
		}
		.break-all{
		word-break: break-all;
		/*min-width: 211px;*/
		width: 100%;
		}
		/*.col_min_width{
		min-width: 211px;
		width: 100%;
		}*/
		.date_white_space{
		    white-space: nowrap;
		}

		.app_checkboxes .checkmark {
		    top: -15px!important;
		}
		table#basic-datatables {
		    overflow: auto;
		    width: 100%!important;
		    display: inline-block;
		}

		.wrap_all {
		    display: flex;
		    align-items: center;
		    justify-content: space-between;
		}

		.wrap_all ul.pagination {
		    margin-bottom: 0!important;
		}

		.wrap_all div#basic-datatables_info {
			padding-top: 0;
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

		table#basic-datatables2 {
		    margin-bottom: 0px!important;
		}
	</style>

	<!-- CSS Files -->
	<link rel="stylesheet" href="{{url('public/admin/assets/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{url('public/admin/assets/css/atlantis.min.css')}}">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="{{url('public/admin/assets/css/custom.css')}}">
	<style>
		body {
			background: #fff !important;
		}
		#basic-datatables_length {
			display: none;
		}
		.page-item.active .page-link {
			background-color: #193358;
    		border-color: #193358;
		}
		.canvasjs-chart-credit {
			display: none;
		}
		.venue_inputs {
			width: 100%;
		}

		input.form-control.form-control-user.badge-image {
			background: #EBEBEB!important;
		}


		select#assign_search {
		    width: 460px;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>Badges</a>
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
		<input type="hidden" name="selected_checkboxes" id="selected_checkboxes" value="">
	</header>
	<section class="mt-3">
			
		<div class="container-fluid">
			<div class="row">
				<input type="hidden" name="badge_id" id="badge_id" value="">
				<div class="col-md-3">
					<div class="venue_inputs mb-3 px-2 pl-3" >
						<label style="font-weight: 400;">
							Badge Name
						</label>
						<input type="text" class="form-control badge-name form-control-user" maxlength="30" placeholder="Badge Name" style="border-radius: 10px;" autocomplete="off" />

					</div>
					<div class="venue_inputs mb-3 px-2 pl-3" style="margin-bottom: -5px!important;">
						<label style="font-weight: 400;">
							Badge Image
						</label>
						<input type="text" readonly="" class="form-control form-control-user badge-image" value="" style="border-radius: 10px; cursor: pointer; opacity: 1!important;" autocomplete="off" />

						<label for="img_upload" style="position: relative; width: 100%;">
							<img data-toggle="tooltip" data-placement="top" title="Click to upload badge image" src="{{url('public/upload_icon.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
						</label>

						<input type="file" src="" id="img_upload" class="img_upload" hidden  autocomplete="off" accept="image/*" />
						<input type="text" value="" id="hidden_img2" hidden  autocomplete="off" />
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3" style="margin-bottom: 0px!important;">
						<label style="font-weight: 400;">
							Status
						</label>
						<select class="form-control select-status form-group select_option" style="position: relative;border-radius: 10px; cursor: pointer;">
							<option value="">Select Status</option>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
						</select>
					</div>
					<div class="d-flex justify-content-between mt-4">
						<div class="mr-4">
							<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block add_new_btn common_btn" style="     font-size: 18px; text-transform: none;">
								Add New
							</a>
						</div>
						<div class="mr-4">
							<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block update_btn common_btn" style="     font-size: 18px; text-transform: none;">
								Update
							</a>
						</div>
						<div class="mr-4">
							<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block delete_btn common_btn" style="font-size: 18px; text-transform: none; padding-left: 0.9rem;">
								Delete Badge
							</a>
						</div>
						<div>
							<a href="{{route('admin.assignBadges')}}" class="btn btn-primary btn-user assign_btn btn-block common_btn" style="    font-size: 18px; text-transform: none;padding-left: 1.2rem;">
								Assign Users
							</a>
						</div>
						
					</div>
				</div>
			</div>
			<div class="row left-side">
				<div class="col-md-3">
					<div class="venue_inputs mb-3" style="margin-top: 57px; margin-left: 3px;">
						<label>
							Badges
						</label>
					</div>
				</div>
			</div>
			<div class="row left-side">
				<div class="col-md-12 mb-4" style="margin-top: -57px;">
					<div class="table-responsive">
						<table id="basic-datatables" class="display table table-striped table-hover" >
							<thead>
								<tr style="background-color: #193358;    color: #fff;">
									<th style="min-width: 40px;">Sr. No.</th>
									<th style="min-width: 200px;">Badge Name</th>
									<th>Status</th>
									<th style="min-width: 100px;">Created By</th>
									<th>Created On</th>
									<th style="min-width: 100px;">Updated By</th>
									<th style="min-width: 135px;">Updated On</th>
									<!-- <th style="min-width: 85px;"><div class="d-flex align-items-center">
											Selection
	                                        <input type="checkbox" data-id = "0" class="select_all_checkbox" key_type="checkbox" style="margin-left: 17px; margin-top: 2px; cursor: pointer;">
										</div></th> -->
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row left-side" style="margin-top: 60px;">
				<div class="col-md-12 mb-4" style="margin-top: -57px;">

					<div class="row" style="position: absolute;width: 80%; top: -4px; z-index: 99">
				
						<div class="col-md-3">
							
							<div class="venue_inputs mb-3 badges_assign_label" style=" margin-left: 0px;">
								<label>
									Badges Assigned for the Selected users
								</label>
							</div>
						</div>

						<div class="col-md-3">
							<div class="venue_inputs mb-3 px-2 pl-3">
							
								<select class="form-control  form-group select_option" id="assign_search" style="position: relative;border-radius: 0px; cursor: pointer;">
									<option value="">Select Badge Name</option>
									@foreach($badges as $badge)
									<option value="{{$badge->id}}" data-id="{{$badge->id}}" class="multiple_delete">{{$badge->badge_name}}</option>
									@endforeach()
								</select>
							</div>
						</div>

					</div>

					<div class="table-responsive">
						<table id="basic-datatables2" class="display table table-striped table-hover" >
							<thead>
								<tr style="background-color: #193358;    color: #fff;">
									<th style="min-width: 40px;">Sr. No.</th>
									<th style="min-width: 110px;">Customer ID</th>
									<th style="min-width: 130px;">Name</th>
									<th style="min-width: 130px;">Mobile Number</th>
									<th style="min-width: 200px;">Badge Name</th>
									<th>Status</th>
									<th style="min-width: 130px;">From Date</th>
									<th style="min-width: 130px;">To Date</th>
									<th style="min-width: 130px;">From Time</th>
									<th style="min-width: 130px;">To Time</th>
									<th style="min-width: 100px;">Created By</th>
									<th style="min-width: 135px;">Created On</th>
									<th style="min-width: 100px;">Updated By</th>
									<th style="min-width: 135px;">Updated On</th>
								</tr>
							</thead>
							
						</table>
					</div>
				</div>
			</div>
			<div style="margin-bottom: 50px;">
				<a href="javascript:void(0);" id="download" class="btn btn-primary btn-user btn-block common_btn" style="font-size: 18px; text-transform: none;">
					Download
				</a>
			</div>
		</div>
	</section>

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

<!-- loader modal -->

<div id="loaderModel" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <div class="loaderImg2" id="loaderImg2">
               <img src = "{{url('public/loader.gif')}}">
            </div>

  </div>
</div>

<!-- confirmation model -->

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
        <p id="confirmation_alert_text">Are you sure, you want to delete this badges?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary confirm_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">Yes</button>
        <button type="button" class="btn btn-secondary confirm_no" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">No</button>
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
	<!-- <script src="{{url('public/admin/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js')}}"></script> -->

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
<!-- 	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> -->
	

	<script>
		
		localStorage.clear();
		$("#badge_id").val("");

		$('.add_new_btn').click(function(){
			if($(this).text() == "Cancel"){
				$(".badge-name").val("");
			  	$(".badge-image").attr("value","").attr("src", "");
			  	$("#img_upload").attr("src", "");
			  	$(".select-status").val("");
			  	$(this).text("Add New");
			  	$("#badge_id").val("");
			  	return false;
			}
			let badge_name = $('.badge-name').val();
			let badge_image_hidden_val = $('#img_upload').val();
			let badge_image_hidden_src = $('#img_upload').attr('src');
			let badge_image_val = $('.badge-image').val();
			let badge_image_src = $('.badge-image').attr('src');
			let badge_select = $('.select-status').val();
			let hidden_img2 = $("#hidden_img2").val();
			let badge_image_hidden_imgname = $('#img_upload').attr('data-name');

			if(badge_name == '' ){
				$("#alert_text").text("Please enter badge name.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_name.length < 2 ){
				$("#alert_text").text("Badge name should be at least 2 characters long.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_image_src == ''){
				$("#alert_text").text("Please upload badge image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(badge_image_hidden_src == ''){
				$("#alert_text").text("Please upload badge image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_select == ''){
				$("#alert_text").text("Please select badge status.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			$.ajax({
				url:'{{ route("admin.addNewBadge") }}',
				type:'POST',
				dataType:'JSON',
				data:{badge_name,badge_image_val,badge_image_hidden_val,badge_image_src,badge_select,hidden_img2,badge_image_hidden_imgname,'_token':'{{ csrf_token() }}'},
				beforeSend:function(){
         			$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
				},
				success:function(data){
					console.log(data)
					setTimeout(function(){
						$("#loaderModel").modal("hide");
				        $("#successModel").modal("show");
			        	$("#success_alert_text").text(data.message);
			        	$("#successModel").unbind("click");
			        	$('#img_upload').attr('value','');
						$('#img_upload').attr('src','');
						$('.badge-image').attr('value','');
						$('.badge-image').attr('src','');
						$('.badge-name').val('');
						$('.select-status').val('');
						$("#hidden_img2").attr('value','');
			        	$('#basic-datatables').DataTable().ajax.reload();
			        	$("#selected_checkboxes").val("");
			        	$(".select_all_checkbox").prop("checked",false);
			        	$(".single_checkbox").prop("checked",false);
			        	$("#badge_id").val("");
			        	$("#add_new_btn").text("Add New");
			        	
					},500);
				},error: function(data, textStatus, xhr) {
		            if(data.status == 422){
		              setTimeout(function(){
		              	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
		                 	if(result['badge_name_error'] && result['badge_name_error'].length > 0){
		                 		$("#alert_text").text(result['badge_name_error']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		                 	}
		                  return false;
		              },500);
		            } 
		      	}
			})
		});

		$('.badge-name').on('keydown',function(e){
			if(e.which===32 && e.target.selectionStart===0){
				return false;
			}
		});

		$(document).ready(function(){
			$(".ok").on("click",function(){
				$("#validationModel").modal("hide");
				$("#successModel").modal("hide");
			})
		});

		$(document).on('change','#img_upload',function(e){
			var file = event.target.files[0];
			var file_nameshow = file.name;
			console.log(file);

			var valu = file_nameshow;
			var length = valu.length;
			if(length>20){
				var slice_name = valu.slice(0,20)+'...';
			}else{
				var slice_name = valu;
			}

			if(file){

				if(file.type == "image/jpeg" || file.type == "image/png" || file.type == "image/jpg"){
					var size = file.size;
					if(size > 5242880){
						$("#alert_text").text("Badge image size should be less than or equal to 5 MB.");
				        $("#validationModel").modal("show");
				        $("#validationModel").unbind("click");
						return false;
					}else{
						var reader = new FileReader();
						reader.onload = function(e){
							$(".badge-image").attr('src',e.target.result);
							$(".badge-image").attr('value',slice_name);
							$("#img_upload").attr('value',file_nameshow);
							$("#img_upload").attr('src',e.target.result);
							$("#hidden_img2").val('');
							$("#img_upload").attr('data-name',file_nameshow);
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

		$(document).on('click','.badge-image',function(){
			var get_base64 = $(this).attr('src');
			if(get_base64){
			fetch(get_base64)
		   	.then(e => e.blob())
		   	.then(e => {
		        let obj = URL.createObjectURL(e);
		        window.open(obj);
		   	})
		   	.catch(e => {
		   		console.log(e)
		   	});
		   }
		});

		function badgeslist(){
			let table = $("#basic-datatables").DataTable({
				processing:true,
				serverSide:true,
				retrieve: true,
				paging: true,
				searching:true,
				ajax:{
					url:"{{ route('admin.badgeslist') }}",
					type:"POST",
					data:{'_token':'{{csrf_token()}}'},

				complete:function(){
		          	/*let selected_checkboxes = $("#selected_checkboxes").val();

			        let split_selected_checkboxes = selected_checkboxes.split(",");

			        split_selected_checkboxes = split_selected_checkboxes.filter(function (el) {
				   		if(el == ""){
				   			return el != "";
				   		}else{
				   			return el != null;
				   		}
					});

			        for(let i=0; split_selected_checkboxes.length > i; i++){
			          	$(".single_checkbox[data-id='"+split_selected_checkboxes[i]+"']").prop("checked", true);

			        }

			        if($(".single_checkbox").length > 0){

						if($(".single_checkbox:not(:checked)").length > 0){
							$(".select_all_checkbox").prop("checked",false);
						}else{
							$(".select_all_checkbox").prop("checked",true);
						}
			        }else{
			        	$(".select_all_checkbox").prop("checked",false);
			        }*/

					if($("#basic-datatables_wrapper").find(".wrap_all").length <= 0){

						$('#basic-datatables_info,#basic-datatables_paginate').wrapAll('<div class="wrap_all"></div>'); 
					} 
					
		        }
				},
				createdRow: function( row, data, dataIndex ) {
				$( row ).find('td:eq(0)').attr('data-id', data['id']).attr('key_type','serial_number').addClass('td_edit');
		        $( row ).find('td:eq(1)').attr('data-id', data['id']).attr('key_type','badge_name').addClass('td_edit').addClass('white_space').addClass('break-all');
		        $( row ).find('td:eq(2)').attr('data-id', data['id']).attr('key_type','status').html(`<select class="form-control form-group status-select-table" style="cursor:pointer; width:max-content;">
						<option value="Active" ${(data.status == "Active") ? 'selected' : ''}>Active</option>
						<option value="Inactive" ${(data.status == "Inactive") ? 'selected' : ''}>Inactive</option>
					</select>`);
		        $( row ).find('td:eq(3)').attr('data-id', data['id']).attr('key_type','created_by').addClass('td_edit').addClass('white_space');
		        $( row ).find('td:eq(4)').attr('data-id', data['id']).attr('key_type','created_at').addClass('white_space').addClass('date_white_space').addClass('col_min_width');
		        $( row ).find('td:eq(5)').attr('data-id', data['id']).attr('key_type','updated_by').addClass('td_edit').addClass('white_space');
		        $( row ).find('td:eq(6)').attr('data-id', data['id']).attr('key_type','updated_at').addClass('white_space');
		        /*$( row ).find('td:eq(7)').attr('data-id', data['id']).addClass('white_space');*/
		    },
				columns:[
					{data: 'DT_RowIndex', name: 'DT_RowIndex'},
					{data:'badge_name',name:'badge_name'},
					{data:'status',name:'status'},
					{data:'created_by', name:'created_by'},
					{data:'created_at', name:'created_at'},
					{data:'updated_by', name:'updated_by'},
					{data:'updated_at', name:'updated_at'},
					/*{data: 'selection', name: 'selection', orderable: false, searchable: false},*/
				]
			
			});
				
		}

		badgeslist();

		$(document).on('dblclick','.td_edit',function(){
			let badge_id = $(this).attr('data-id');

			var objectData = {
				'_token':'{{ csrf_token() }}',
				'badge_id':badge_id,
			}

			$.ajax({
				url:'{{ route("admin.findBadgeById") }}',
				dataType:'JSON',
				type:'POST',
				data:objectData,
				beforeSend:function(){
	          		$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
					},
				success:function(data){
					console.log(data)
					setTimeout(function(){

						var fileName = data.name_of_file_show;
						let slice_name = "";
						if(fileName != "" && fileName.length > 20){
							slice_name = fileName.slice(0,20)+'...';
						}else{
							slice_name = fileName;
						}

						$("#loaderModel").modal("hide");
					  	$(".badge-name").val(data.badge_name);
					  	$(".badge-image").attr("value",slice_name).attr("src", data.image);
					  	$("#img_upload").attr("src", data.image);
					  	$(".select-status").val(data.status);
					  	$(".add_new_btn").text("Cancel");
					  	$("#badge_id").val(badge_id);
					},500);
				},error: function(data, textStatus, xhr) {
					alert("Something went wrong.");
					window.location.href = "";
	                if(data.status == 422){

	                } 
	              }
			});
			// var dataId = $(this).attr('data-id');
			// var keyType = $(this).attr('key_type');
			// var content = $(this).text();

			// if(keyType == 'badge_name'){
			// 	$(this).attr('contenteditable',true);
			// 	$(this).attr("onkeypress", "return (this.innerText.length <= 29)");

			// 	/*$(this).on('keydown',function(e){
			// 		if(e.which==32){
			// 			return false;
			// 		}
			// 	});*/
			// }

			// if(keyType == 'status' ){
			// 	$(this).attr('contenteditable',true);
			// 	$(this).attr("onkeypress", "return (this.innerText.length <= 49)");
			// }
		});

		$(document).on("change",".status-select-table",function(){
			$(this).parent().addClass("td_edit").attr("contenteditable","true");
		});

		$('.update_btn').click(function(){
			// if($('.td_edit[contenteditable=true]').length <= 0){
			// 	$("#alert_text").text("Please edit at least one value.");
			// 	$("#validationModel").modal("show");
			// 	$("#validationModel").unbind("click");
			// 	return false;
			// }
			// var	arr = [];
			// let empty_val = "false";
			// $('.td_edit[contenteditable=true]').each(function(){
			// 	let data_id = $(this).attr('data-id');
			// 	let keyType = $(this).attr('key_type');
			// 	let text;

			// 	if(keyType == "status"){
			// 		text = $(this).children(".status-select-table").val();
			// 	}else{
			// 		text = $(this).text();
			// 	}

			// 	if(keyType == 'badge_name'){
			// 		if(text == ""){
			// 			$("#alert_text").text("Please enter badge name.");
			// 			$("#validationModel").modal("show");
			// 			$("#validationModel").unbind("click");
			// 			empty_val = "true";
			// 		}else if(text.length < 2){
			// 			$("#alert_text").text("Badge name should be at least 2 characters long.");
			// 			$("#validationModel").modal("show");
			// 			$("#validationModel").unbind("click");
			// 			empty_val = "true";
			// 		}

			// 	}

			// 	var objectData = {}

			// 	objectData.data_id = data_id;
			// 	objectData.key_type = keyType;
			// 	objectData.text = text;
			// 	arr.push(objectData);
			// });

			// if(empty_val == "true"){
			// 	$("#loaderModel").modal("hide");
			// 	return false;
			// }

			let badge_id = $("#badge_id").val();
			if(badge_id == ""){
				$("#alert_text").text("Please select badge for update badge.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}


			let badge_name = $('.badge-name').val();
			let badge_image_hidden_val = $('#img_upload').val();
			let badge_image_hidden_src = $('#img_upload').attr('src');
			let badge_image_val = $('.badge-image').val();
			let badge_image_src = $('.badge-image').attr('src');
			let badge_select = $('.select-status').val();
			let hidden_img2 = $("#hidden_img2").val();
			let badge_image_hidden_imgname = $('#img_upload').attr('data-name');

			if(badge_name == '' ){
				$("#alert_text").text("Please enter badge name.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_name.length < 2 ){
				$("#alert_text").text("Badge name should be at least 2 characters long.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_image_src == ''){
				$("#alert_text").text("Please upload badge image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(badge_image_hidden_src == ''){
				$("#alert_text").text("Please upload badge image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_select == ''){
				$("#alert_text").text("Please select badge status.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			

			$.ajax({
				url:'{{ route("admin.editbadges") }}',
				dataType:'JSON',
				type:'POST',
				data:{badge_name,badge_image_val,badge_image_hidden_val,badge_image_src,badge_select,hidden_img2,badge_image_hidden_imgname,badge_id,'_token':'{{ csrf_token() }}'},
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
			        	$('#img_upload').attr('value','');
						$('#img_upload').attr('src','');
						$('.badge-image').attr('value','');
						$('.badge-image').attr('src','');
						$('.badge-name').val('');
						$('.select-status').val('');
						$("#hidden_img2").attr('value','');
			        	$('#basic-datatables').DataTable().ajax.reload();
			        	$("#selected_checkboxes").val("");
			        	$(".select_all_checkbox").prop("checked",false);
			        	$(".single_checkbox").prop("checked",false);
			        	$("#badge_id").val("");
			        	$("#add_new_btn").text("Add New");
					},500);
				},error: function(data, textStatus, xhr) {
	                if(data.status == 422){
	                  setTimeout(function(){
	                  	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
		                  	if(result['badge_name_error'] && result['badge_name_error'].length > 0){
			                  	$("#alert_text").text(result['badge_name_error']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		                 	}
		                  return false;
	                  },500);
	                } 
	              }
			});
		});

		$('.delete_btn').click(function(){


			let badge_id = $("#badge_id").val();
			if(badge_id == ""){
				$("#alert_text").text("Please select badge for delete badge.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}


			let badge_name = $('.badge-name').val();
			let badge_image_hidden_val = $('#img_upload').val();
			let badge_image_hidden_src = $('#img_upload').attr('src');
			let badge_image_val = $('.badge-image').val();
			let badge_image_src = $('.badge-image').attr('src');
			let badge_select = $('.select-status').val();
			let hidden_img2 = $("#hidden_img2").val();
			let badge_image_hidden_imgname = $('#img_upload').attr('data-name');

			if(badge_name == '' ){
				$("#alert_text").text("Please enter badge name.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_name.length < 2 ){
				$("#alert_text").text("Badge name should be at least 2 characters long.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_image_src == ''){
				$("#alert_text").text("Please upload badge image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(badge_image_hidden_src == ''){
				$("#alert_text").text("Please upload badge image.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(badge_select == ''){
				$("#alert_text").text("Please select badge status.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			$("#confirmation_alert_text").text("Are you sure, you want to delete this badge?");
			$('#confirmationModel').modal("show");
			// let ids = $("#selected_checkboxes").val();
			// if(ids == "" || ids == null || ids == "undefiend"){
			// 	$("#alert_text").text("Please select checkbox for delete badge.");
			// 	$("#validationModel").modal("show");
			// 	$("#validationModel").unbind("click");
			// 	return false;
			// }else{

			// 	let split_ids = ids.split(",");
			// 	if(split_ids.length > 1){

			// 		$("#confirmation_alert_text").text("Are you sure, you want to delete this badges?");
			// 	}else{
			// 		$("#confirmation_alert_text").text("Are you sure, you want to delete this badge?");
			// 	}
				
			// 	$('#confirmationModel').modal("show");
			// }
		});
		$(".confirm_ok").on("click",function(){
	    	$("#confirmationModel").modal("hide");
	    	let ids = $("#badge_id").val();
	    	//let __split_ids = ids.split(",");
			$.ajax({
				url:"{{route('admin.deleteBadge')}}",
				type:'POST',
				dataType:'JSON',
				data:{ids:ids,'_token':'{{ csrf_token() }}'},
				beforeSend:function(){
		          	$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
		        },
		        success: function(data){
	          	setTimeout(function(){
	          			$("#loaderModel").modal("hide");
				        $("#successModel").modal("show");
			        	$("#success_alert_text").text(data.message);
			        	$("#successModel").unbind("click");
			        	$('#img_upload').attr('value','');
						$('#img_upload').attr('src','');
						$('.badge-image').attr('value','');
						$('.badge-image').attr('src','');
						$('.badge-name').val('');
						$('.select-status').val('');
						$("#hidden_img2").attr('value','');
			        	$('#basic-datatables').DataTable().ajax.reload();
			        	$("#selected_checkboxes").val("");
			        	$(".select_all_checkbox").prop("checked",false);
			        	$(".single_checkbox").prop("checked",false);
			        	$("#badge_id").val("");
			        	$("#add_new_btn").text("Add New");

	          		// for(let p=0; __split_ids.length > p; p++){

	          		// 	$(".multiple_delete[data-id='"+__split_ids[p]+"']").remove();
	          		// }
	          		assignUserList();
	          	},500);
	          },error: function(data, textStatus, xhr) {
	                if(data.status == 422){
	                  setTimeout(function(){
	                  	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
		                  	if(result['badge_name_error'] && result['badge_name_error'].length > 0){
			                  	$("#alert_text").text(result['badge_name_error']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		                 	}
		                  return false;
	                  },500);
	                } 
	              }
			});
    	});

	$(".confirm_no").on("click",function(){
		$("#confirmationModel").modal("hide");
	});



		$(document).on("keyup keydown",".form-control[type='search'][aria-controls='basic-datatables2']",function(){
			localStorage.setItem("search_show_val","false");
		})

		function assignUserList(){
			let search_for_table2 = $(".form-control[type='search'][aria-controls='basic-datatables2']").val();
			//alert(search_for_table2)
			
			let badge_id = $("#assign_search").val();
			$("#basic-datatables2").dataTable().fnDestroy();
			let table = $("#basic-datatables2").DataTable({
				processing:true,
				serverSide:true,
				retrieve: true,
				paging: true,
				searching:true,
				ajax:{
					url:"{{ route('admin.assign_user_list') }}",
					type:"POST",
					data:{'_token':'{{csrf_token()}}','badge_id' : badge_id,'search_for_table2' : search_for_table2},
					complete:function(){
			         	
			         	$(".dataTables_length").hide();
			         	if(search_for_table2 != undefined && search_for_table2 && localStorage.getItem("search_show_val") == "true"){

							$(".form-control[type='search'][aria-controls='basic-datatables2']").val(search_for_table2);
						}

			        }
				},
				createdRow: function( row, data, dataIndex ) {
		        $( row ).find('td:eq(0)').addClass('white_space');
		        $( row ).find('td:eq(1)').addClass('white_space').addClass('break-all');
		        $( row ).find('td:eq(2)').addClass('white_space');
		        $( row ).find('td:eq(3)').addClass('white_space').addClass('break-all');
		        $( row ).find('td:eq(4)').attr('key_type','status');
		        $( row ).find('td:eq(5)').addClass('white_space').addClass('date_white_space');
		        $( row ).find('td:eq(6)').addClass('white_space').addClass('date_white_space');
		        $( row ).find('td:eq(7)').addClass('white_space');
		        $( row ).find('td:eq(8)').addClass('white_space');
		        $( row ).find('td:eq(9)').addClass('white_space');
		        $( row ).find('td:eq(10)').addClass('white_space').addClass('date_white_space').addClass('col_min_width');
		        $( row ).find('td:eq(11)').addClass('white_space');
		        $( row ).find('td:eq(12)').addClass('white_space').addClass('date_white_space').addClass('col_min_width');
		    },
				columns:[
					{data:'DT_RowIndex',name:'DT_RowIndex'},
					{data:'customer_id',name:'customer_id'},
					{data:'full_name',name:'full_name'},
					{data:'mobile_number',name:'mobile_number'},
					{data:'badge_name',name:'badge_name'},
					{data:'status',name:'status'},
					{data:'from_date',name:'from_date'},
					{data:'to_date',name:'to_date'},
					{data:'from_time',name:'from_time'},
					{data:'to_time',name:'to_time'},
					{data:'created_by', name:'created_by'},
					{data:'created_at', name:'created_at'},
					{data:'updated_by', name:'updated_by'},
					{data:'updated_at', name:'updated_at'},
				]
			});
				
		}

		setTimeout(function(){

			assignUserList();
		},500);

		

		// $(document).on('keydown','.input_control_search',function(e){
		// 	if(e.which===32 && e.target.selectionStart===0){
		// 		return false;
		// 	}
		// });

		$(document).on("keypress",".td_edit[key_type='badge_name']",function(e){
		 	if($(this).text() == ''){
		          if(!/[0-9a-zA-Z-]/.test(String.fromCharCode(e.which))){

		            return false;
		          }
	      	}

		});

		$("#assign_search").on("change",function(){

 				setTimeout(function(){
 					localStorage.setItem("search_show_val","true");
					assignUserList();
				},500);
 		});

	</script>

	<script type="text/javascript">
    $(document).ready(function(){
      $(".form-control").on("keyup",function(){
        var length = $.trim($(this).val()).length;
        console.log(length)
        if(length == 0){
           $(this).val("");
        }else{
          $(this).val($(this).val().trimLeft(""));
        }
      });


      	$(document).on("keyup",".td_edit[key_type='badge_name']",function(e){
		 	var length = $.trim($(this).text()).length;
	        console.log(length)
	        if(length == 0){
	           $(this).text("");
	        }else{
	          $(this).val($(this).text().trimLeft(""));
	        }

		});


    });

    $(document).on("click",".select_all_checkbox",function(){
				if($(this).prop("checked") == true){
					$(".single_checkbox").prop("checked",true);

					$(".single_checkbox:checked").each(function(){
					   	let data_id = $(this).data("id").toString();
					   	let selected_checkboxes = $("#selected_checkboxes").val();
					   	let split_selected_checkboxes = selected_checkboxes.split(",");
					   	split_selected_checkboxes = split_selected_checkboxes.filter(function (el) {
					   		if(el == ""){
					   			return el != "";
					   		}else{
					   			return el != null;
					   		}
						});
					   	
					   	if(split_selected_checkboxes.indexOf(data_id) == -1){
					   		if(selected_checkboxes.length > 0){
					   			$("#selected_checkboxes").val($("#selected_checkboxes").val() + "," + data_id);
					   		}else{
					   			$("#selected_checkboxes").val(data_id);
					   		}
					   	}
					});

				}else{
					$(".single_checkbox").prop("checked",false);
					$(".single_checkbox:not(:checked)").each(function(){
					    let data_id = $(this).data("id").toString();
					   	let selected_checkboxes = $("#selected_checkboxes").val();
					   	let split_selected_checkboxes = selected_checkboxes.split(",");
					   	split_selected_checkboxes = split_selected_checkboxes.filter(function (el) {
					   		if(el == ""){
					   			return el != "";
					   		}else{
					   			return el != null;
					   		}
						});

					   	
					   	if(split_selected_checkboxes.indexOf(data_id) != -1){
					   		split_selected_checkboxes.splice(split_selected_checkboxes.indexOf(data_id),1);

					   		if(split_selected_checkboxes.length > 0){
					   			split_selected_checkboxes = split_selected_checkboxes.toString();
					   			$("#selected_checkboxes").val(split_selected_checkboxes);
					   		}else{
					   			$("#selected_checkboxes").val("");
					   		}
					   	}
					});
				}
			});


    $(document).on("click",".single_checkbox",function(){
				if($(this).prop("checked") == true){

					let data_id = $(this).data("id").toString();
				   	let selected_checkboxes = $("#selected_checkboxes").val();
				   	let split_selected_checkboxes = selected_checkboxes.split(",");
				   	split_selected_checkboxes = split_selected_checkboxes.filter(function (el) {
				   		if(el == ""){
				   			return el != "";
				   		}else{
				   			return el != null;
				   		}
					});
				   	
				   	if(split_selected_checkboxes.indexOf(data_id) == -1){
				   		if(selected_checkboxes.length > 0){
				   			$("#selected_checkboxes").val($("#selected_checkboxes").val() + "," + data_id);
				   		}else{
				   			$("#selected_checkboxes").val(data_id);
				   		}
				   	}

				}else{

					let data_id = $(this).data("id").toString();
				   	let selected_checkboxes = $("#selected_checkboxes").val();
				   	let split_selected_checkboxes = selected_checkboxes.split(",");
				   	split_selected_checkboxes = split_selected_checkboxes.filter(function (el) {
				   		if(el == ""){
				   			return el != "";
				   		}else{
				   			return el != null;
				   		}
					});

				   	
				   	if(split_selected_checkboxes.indexOf(data_id) != -1){
				   		split_selected_checkboxes.splice(split_selected_checkboxes.indexOf(data_id),1);

				   		if(split_selected_checkboxes.length > 0){
				   			split_selected_checkboxes = split_selected_checkboxes.toString();
				   			$("#selected_checkboxes").val(split_selected_checkboxes);
				   		}else{
				   			$("#selected_checkboxes").val("");
				   		}
			   		}

				}
				
				if($('.single_checkbox:not(":checked")').length <= 0){
					$(".select_all_checkbox").prop("checked",true);
				}else{
					$(".select_all_checkbox").prop("checked",false);
				}

			});

    	$(document).ready(function(){
		    var replace_class = $('#basic-datatables_wrapper .row:nth-child(3)').children('.col-md-5');
		    replace_class.removeClass('col-md-5').addClass('col-md-12');
	    });
    

</script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#download").on("click",function(){
			let badge_id = $("#assign_search").val();
			let search_txt = $(".form-control[type='search'][aria-controls='basic-datatables2']").val();
			if(badge_id == "" || badge_id == undefined){
				$("#alert_text").text("Please select badge name first to download the badges assigned for the selected users file.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			let base64_encode_badge_id = btoa(badge_id);
			let url_hit = "{{url('admin/download-assign-badge-users')}}" + "/" + base64_encode_badge_id + "/" + search_txt;

			window.location.href = url_hit;
			//window.open(url_hit);
		});

		$(".badge-name").on("paste",function(e){
			e.preventDefault();
		});
		$(document).on("paste",".td_edit",function(e){
			e.preventDefault();
		});
	});
</script>

</body>
</html>