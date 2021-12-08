<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Admin User Management</title>
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
/*#basic-datatables_wrapper,
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
		}*/
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

		#basic-datatables_wrapper{
		padding: 0 !important;
		}

		div#basic-datatables_wrapper .col-sm-12{
		overflow: auto;
		display: inline-block;
		width: 100%;

		}
		.venue_inputs input::-webkit-input-placeholder {
	     font-family: 'Signika', sans-serif !important;
	    font-weight: 700 !important;
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

		.td_edit[key_type=password]{
			-webkit-text-security: disc;
			color:#6f6f6f;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span> Admin Login Users</a>
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
	<input type="hidden" class="admin_user_id">
	<section class="mt-3">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Username
						</label>
						<input type="text" class="form-control form-control-user admin_username" value="" maxlength="30" placeholder="Username" value="" style="border-radius: 10px"/>
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Password
						</label>
						<input type="password" class="form-control form-control-user admin_password" maxlength="65" placeholder="Password" value="" style="border-radius: 10px; font-family: 'Lato', sans-serif;"/>
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Select the Role
						</label>
						<select class="form-control form-group select_option select_role_option" style="position: relative;border-radius: 10px; cursor: pointer;">
							<option value="">Select Role</option>
							<option value="Super Admin">Super Admin</option>
							<option value="Admin">Admin</option>
							<option value="Marketing">Marketing</option>
							<option value="Managment">Managment</option>
							<option value="Staff">Staff</option>
						</select>
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Status
						</label>
						<select class="form-control form-group select_option select_status_option" style="position: relative;border-radius: 10px; cursor: pointer;">
							<option value="">Select Status</option>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
						</select>
					</div>
					<div class="d-flex justify-content-between mt-4">
						<div>
							<a href="javascript:void(0);" id="addNewBtn" class="btn btn-primary btn-user btn-block common_btn add_new_btn" style="     font-size: 18px; text-transform: none;">
								Add New
							</a>
						</div>
						<div>
							<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn update_btn" style="font-size: 18px; text-transform: none;">
								Update
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row left-side">
				<div class="col-md-3">
					<div class="venue_inputs mb-3" style="margin-top: 57px; margin-left: 3px;">
						<label>
							Users List
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
									<th>Sr.No.</th>
									<th style="min-width: 200px;">Username</th>
									<th>Password</th>
									<th style="min-width: 100px;">Role</th>
									<th>Status</th>
									<th style="min-width: 135px;">Created On</th>
									<th style="min-width: 100px;">Created By</th>
									<th style="min-width: 135px;">Updated On</th>
									<th style="min-width: 100px;">Updated By</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
					
				</div>
			</div>
		</div>
	</section>

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
        <button type="button" class="btn btn-secondary ok s_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;" self-update="false"  data-dismiss="modal">Ok</button>
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
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script>
		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
			$("#successModel").modal("hide");
			if($(this).attr('self-update') == "true"){
				window.location.href = "{{route('admin.lg')}}";
			}
		});

		$(document).on('keydown','.admin_username, .admin_password',function(e){
			if(e.which===32){
				return false;
			}
		});

		$('.add_new_btn').click(function(){

			let check_btn_text = $(this).text();

			if(check_btn_text == 'Cancel'){
				$('.admin_username').val('');
				$('.admin_password').val('');
				$('.select_role_option').val('');
				$('.select_status_option').val('');
				$('.admin_user_id').val('');
				$(this).text('Add New');
				return false;
			}

			let name = $('.admin_username').val();
			let password = $('.admin_password').val();
			let role_type = $('.select_role_option').val();
			let status = $('.select_status_option').val();

			if(name == ''){
				$("#alert_text").text("Please enter username.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}
			var regExp = /[a-zA-Z]/g;
			if (!regExp.test($('.admin_username').val())) {
			   	$("#alert_text").text("Please enter valid username.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			} 

			if(name.length < 2){
				$("#alert_text").text("Username should be at least 2 characters long.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(password == ''){
				$("#alert_text").text("Please enter password.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}

			if(password.length < 6 ){
				$("#alert_text").text("Password must be at least 6 characters long.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			if(role_type == ''){
				$("#alert_text").text("Please select role.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}

			if(status == ''){
				$("#alert_text").text("Please select status.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}

			$.ajax({
				url:'{{ route("admin.admin_user_save") }}',
				type:'POST',
				data_type:'JSON',
				data:{name,password,role_type,status,'_token':'{{ csrf_token() }}'},
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
				  		$('#basic-datatables').DataTable().ajax.reload();
				  		$('.admin_username').val('');
						$('.admin_password').val('');
						$('.select_role_option').val('');
						$('.select_status_option').val('');
						$('.admin_user_id').val('');
						$(this).text('Add New');


					},500);
				},error: function(data, textStatus, xhr) {
		            if(data.status == 422){
		              setTimeout(function(){
		              	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
		                 	if(result['admin_name_err'] && result['admin_name_err'].length > 0){
		                 		$("#alert_text").text(result['admin_name_err']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		                 	}
		                  return false;
		              },500);
		            } 
		      	}
			});
			
		});

		$('.update_btn').click(function(){

			let update_id = $('.admin_user_id').val();
			let name = $('.admin_username').val();
			let password = $('.admin_password').val();
			let role_type = $('.select_role_option').val();
			let status = $('.select_status_option').val();

			if(update_id == ''){
				$("#alert_text").text("Please select user for update.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}
			if(name == ''){
				$("#alert_text").text("Please enter username.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}
			var regExp = /[a-zA-Z]/g;
			if (!regExp.test($('.admin_username').val())) {
			   	$("#alert_text").text("Please enter valid username.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}
			
			if(name.length < 2){
				$("#alert_text").text("Username should be at least 2 characters long.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if(password == ''){
				$("#alert_text").text("Please enter password.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}

			if(password.length < 6 ){
				$("#alert_text").text("Password must be at least 6 characters long.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(role_type == ''){
				$("#alert_text").text("Please select role.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}

			if(status == ''){
				$("#alert_text").text("Please select status.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;	
			}

			$.ajax({
				url:'{{ route("admin.admin_user_update") }}',
				type:'POST',
				data_type:'JSON',
				data:{name,password,role_type,status,update_id,'_token':'{{ csrf_token() }}'},
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
				  		$('.admin_username').val('');
						$('.admin_password').val('');
						$('.select_role_option').val('');
						$('.select_status_option').val('');
						$('.admin_user_id').val('');
						$('#addNewBtn').text('Add New');

						if(data.self_update == "true"){
							$(".s_ok").attr('self-update','true');
							return false;
						}
				  		$('#basic-datatables').DataTable().ajax.reload();
					},500);
				},error: function(data, textStatus, xhr) {
		            if(data.status == 422){
		              setTimeout(function(){
		              	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
		                 	if(result['admin_name_err'] && result['admin_name_err'].length > 0){
		                 		$("#alert_text").text(result['admin_name_err']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		                 	}
		                  return false;
		              },500);
		            } 
		      	}
			});
			
		});

		function getAdminUsersList(){
			let table = $("#basic-datatables").DataTable({
				processing:true,
				serverSide:true,
				retrieve: true,
				paging: true,
				searching:true,
				ajax:{
					url:"{{ route('admin.get_admin_users_list') }}",
					type:"POST",
					data:{'_token':'{{csrf_token()}}'},
				},
				createdRow:function(row, data, dataIndex){
					$( row ).find('td:eq(0)').attr('data-id', data['id']).addClass('td_edit');
					$( row ).find('td:eq(1)').attr('data-id', data['id']).addClass('td_edit');
					$( row ).find('td:eq(2)').attr('data-id', data['id']).attr({key_type:'password',type:'password'}).addClass('td_edit');
					$( row ).find('td:eq(3)').attr('data-id', data['id']).addClass('td_edit');
					$( row ).find('td:eq(4)').attr('data-id', data['id']).addClass('td_edit');
					$( row ).find('td:eq(5)').attr('data-id', data['id']).addClass('td_edit');
					$( row ).find('td:eq(6)').attr('data-id', data['id']).addClass('td_edit');
					$( row ).find('td:eq(7)').attr('data-id', data['id']).addClass('td_edit');
					$( row ).find('td:eq(8)').attr('data-id', data['id']).addClass('td_edit');
				},
				columns:[
					{data: 'DT_RowIndex', name: 'DT_RowIndex'},
					{data:'name',name:'name'},
					{data:'password',name:'password', orderable: false},
					{data:'role_type',name:'role_type'},
					{data:'status',name:'status'},
					{data:'created_at', name:'created_at'},
					{data:'created_by', name:'created_by'},
					{data:'updated_at', name:'updated_at'},
					{data:'updated_by', name:'updated_by'},
				]
			
			});
				
		}

		getAdminUsersList();

		$(document).on('dblclick','.td_edit',function(){
			let data_id = $(this).attr('data-id');
			$.ajax({
				url:'{{ route("admin.get_single_admin_user") }}',
				type:'POST',
				data_type:'JSON',
				data:{data_id, '_token':'{{ csrf_token() }}'},
				beforeSend:function(){
	          		$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
				},
				success:function(data){
					setTimeout(function(){
					  	$("#loaderModel").modal("hide");
					  	$(".admin_username").val(data.name);
						$('.admin_password').val('');
						$('.select_role_option').val(data.role_type);
						$('.select_status_option').val(data.status);
						$('.admin_user_id').val(data.id);
						$('.add_new_btn').text('Cancel');
					},500);
				}
			});
		});

		$(".admin_username").on("paste",function(e){
			e.preventDefault();
		});

	</script>
</body>
</html>