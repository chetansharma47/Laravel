<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Venue User Management</title>
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
		#basic-datatables_wrapper,
		#basic-datatables2_wrapper,
		#basic-datatables3_wrapper {
			padding: 0 !important;
		}
		.common_btn {
		    width: 129px!important;
		    font-size: 16px!important;
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
		html .mt-5, html .my-5 {
		    margin-top: 1rem!important;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span> Venue Login Users</a>
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
	<section class="mt-3">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Username
						</label>
						<input type="hidden" name="token" value="{{ csrf_token() }}" id="token">
						<input type="text" name="venue_username" id="venue_username" class="form-control form-control-user input-control" placeholder="Username" maxlength="30"/>
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Password
						</label>
						<input name="venue_user_password" id="venue_user_password" type="password" class="form-control form-control-user input-control" placeholder="Password"/>
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Venue Selection
						</label>
						<select name="venue_selection" id="venue_selection" class="form-control form-group" style="position: relative;border-radius: 10px;">
							<option readonly value="">Select Venue Selection</option>
							@if(count($venulist) > 0)
								@foreach($venulist as $valu)
									<option value="{{ $valu->id }}">{{ $valu->venue_name }}</option>
								@endforeach
							@endif
						</select>
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Status
						</label>
						<select class="form-control form-group" id="venue_user_status" style="position: relative;border-radius: 10px;" name="venue_user_status">
							<option value="" readonly="">Select Status</option>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
						</select>
					</div>
					<div class="d-flex justify-content-start mt-4 ml-3">
						<!-- <div> -->
							<a href="javascript:void(0)" name="venue_add_new" id="venue_add_new" class="btn btn-primary btn-user btn-block common_btn" style="font-size: 18px; text-transform: none">
								Add New
							</a>
						<!-- </div> -->
						<!-- <div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="font-size: 18px; text-transform: none">
								Update
							</a>
						</div> -->
					</div>
				</div>
			</div>
			<div class="row left-side">
				<div class="col-md-3">
					<div class="venue_inputs" style="margin-top: 57px; margin-left: 3px;">
						<label>
							Users List
						</label>
					</div>
				</div>
			</div>
			<div class="row left-side">
				<div class="col-md-12 mb-4" style="margin-top: -44px;">
					<div class="table-responsive">
						<table id="basic-datatables" class="venue_ls display table table-striped table-hover" style="padding: 0">
							<thead>
								<tr style="background-color: #193358; color: #fff;">
									<th>Id</th>
									<th>Username</th>
									<th>Role</th>
									<th>Status</th>
									<th>Created On</th>
									<th>Updated On</th>
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

<!-- loader modal -->

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
	<!-- <script src="https://canvasjs.com/assets/script/canvasjs.min.js')}}"></script> -->
	
	<script>
		
		// Validate venue user form & save, display record

		$('#venue_add_new').on("click",function(){
			$(".invalid_cls").remove();
			var vuser = $('#venue_username').val();
			var vuser_password = $('#venue_user_password').val();
			var vselection = $('#venue_selection').val();
			var vstatus = $('#venue_user_status').val();
			var vtoken = $('#token').val();
			
			if($('#venue_username').val()==""){
				$("#alert_text").text("Please enter username.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
			return false;

			}

			if($('#venue_user_password').val()==""){
				$("#alert_text").text("Please enter password.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
			return false;

			}

			if($("#venue_selection").val()==""){
				$("#alert_text").text("Please select venue.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
			return false;

			}

			if($("#venue_user_status").val()==""){
				$("#alert_text").text("Please select status.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
			return false;

			}

			$.ajax({
				url:'{{ route("admin.createvenue") }}',
				type:'POST',
				dataType:'JSON',
				data:{v_user:vuser,v_password:vuser_password,v_name:vselection,v_status:vstatus,'_token':vtoken},
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
					},500);
				},error: function(data, textStatus, xhr) {
          if(data.status == 422){
            setTimeout(function(){
            		$("#loaderModel").modal("hide");
                var result = data.responseJSON;
               	if(result['username_err'] && result['username_err'].length > 0){
               		$("#alert_text").text(result['username_err']);
									$("#validationModel").modal("show");
									$("#validationModel").unbind("click");
               	}
                return false;
            },500);
          } 
      	}
			});

		});

		function displayVenue(){
			let table =$("#basic-datatables").DataTable({
				processing:true,
				serverSide:true,
				retrieve: true,
				paging: true,
				searching:true,
				ajax:{
					url:"{{ route('admin.venuetable') }}",
					type:"POST",
					data:{'_token':'{{csrf_token()}}'},
				},
				columns:[
					{data:'id',name:'id'},
					{data:'username',name:'username'},
					{data:'venu.venue_name', name:'venu.venue_name'},
					{data:'status', name:'status'},
					{data:'created_at', name:'created_at'},
					{data:'updated_at', name:'updated_at'},
				]
			});
		}

		displayVenue();

		$(document).ready(function(){
			$(".ok").on("click",function(){
				$("#validationModel").modal("hide");
				$("#successModel").modal("hide");
			})
		});
		$('#basic-datatables_filter label input[type="search"]').addClass('input_control_search');
		

		$('.input-control').on('keydown',function(e){
			if(e.which===32){
				return false;
			}
		});

		$(document).on('keydown','.input_control_search',function(e){
			if(e.which===32 && e.target.selectionStart===0){
				return false;
			}
		});

	</script>
</body>
</html>