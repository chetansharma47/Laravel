<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Venue Login Users</title>
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
		select.form-control.form-group.status_select {
    height: 39px!important;
    font-size: 12px;
        width: 75px;

}
td.td_edit.white_space.venu_edit {
    min-width: 113px;
    word-break: break-all;
}
select.form-control.form-group.status_select:focus{
	    border-color: #fff;

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
		div#basic-datatables_wrapper .col-sm-12 {
    overflow: auto;
    display: inline-block;
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

		/*#basic-datatables tbody tr td {
			line-height: 55px;
		}*/

		#validationModel .modal-body {
			text-align: center;
		}

		#validationModel .modal-body p {
			margin-bottom: 0rem;
		}
		.break-all{
			word-break: break-all;
			min-width: 211px;
			width: 100%;
		}
		.col_min_width{
			min-width: 211px;
			width: 100%;
		}
		.td_edit[key_type=password] { -webkit-text-security: disc; color:#6f6f6f;    line-height: 55px;
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
	.date_white_space{
    white-space: nowrap;
}

.checkboxesbg {
    border-radius: 10px;
}

/*.checkboxesbg {
    padding: 40px 4px;
}*/
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
	<section class="mt-3">
		<input type="hidden" id="venue_selection">
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
							Venue
						</label>
						<!-- <select name="venue_selection" id="venue_selection" class="form-control form-group select_option" style="position: relative;border-radius: 10px; cursor: pointer;">
							<option readonly value="">Select Venue</option>
							@if(count($venulist) > 0)
								@foreach($venulist as $valu)
									<option value="{{ $valu->id }}">{{ $valu->venue_name }}</option>
								@endforeach
							@endif
						</select> -->


						<div class="checkboxesbg">
								<div class="d-flex flex-wrap" style="height: 200px; overflow: auto;">
									@if(count($venulist) > 0)
										@foreach($venulist as $valu)
											<div class="mr-2" style="width: 100%;">
												<label class="tick_box"><span class="date">{{$valu->venue_name}}</span>
													<input type="checkbox" class="venue_select" data-id="{{$valu->id}}">
													<span class="checkmark"></span>
												</label>
											</div>
										@endforeach()
									@endif
								
								</div>
							</div>
					</div>


					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Status
						</label>
						<select class="form-control form-group select_option" id="venue_user_status" style="position: relative;border-radius: 10px; cursor: pointer;" name="venue_user_status">
							<option value="" readonly="">Select Status</option>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
						</select>
					</div>
					<div class="d-flex justify-content-between px-3">
						<div>
							<a href="javascript:void(0)" name="venue_add_new" id="venue_add_new" class="btn btn-primary btn-user btn-block common_btn" style="font-size: 18px; text-transform: none">
								Add New
							</a>
						</div>
						<div>
							<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block update_btn common_btn" style="font-size: 18px; text-transform: none">
								Update
							</a>
						</div>
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
									<th>Sr.No.</th>
									<th>Username</th>
									<th>Password</th>
									<th>Venue</th>
									<th>Status</th>
									<th>Created On</th>
									<th>Created By</th>
									<th>Updated On</th>
									<th>Updated By</th>
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
		$("#venue_selection").val("");
		$(".venue_select").prop("checked",false);
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

			if($('#venue_username').val().length < 2){
				$("#alert_text").text("Username should be at least 2 characters long.");
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

			if($('#venue_user_password').val().length < 6 ){
				$("#alert_text").text("Password must be at least 6 characters long.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;

			}

			if($('#venue_user_password').val().length > 200 ){
				$("#alert_text").text("Password may not be greater than 200 characters.");
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
			        	$('#venue_username').val('');
						$('#venue_user_password').val('');
						$("#venue_selection").val('');
						$("#venue_user_status").val('');
						$('#basic-datatables').DataTable().ajax.reload();
						$(".venue_select").prop("checked",false);
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
				createdRow: function( row, data, dataIndex ) {

				
		        $( row ).find('td:eq(1)').attr('data-id', data['id']).attr('key_type','username').addClass('td_edit').addClass('white_space').addClass('break-all');
		        $( row ).find('td:eq(2)').attr('data-id', data['id']).attr({key_type:'password',type:'password'}).addClass('td_edit').addClass('white_space').addClass('break-all').html('<span>'+data.password+'</span>');
		        $( row ).find('td:eq(3)').attr('data-id', data['id']).attr('key_type','venue_name').addClass('td_edit').addClass('white_space').addClass('venu_edit').addClass('col_min_width');
		        $( row ).find('td:eq(4)').attr('data-id', data['id']).attr('key_type','status').html(`<select class="form-control form-group status_select" style="cursor:pointer; width:max-content;">
													<option value="Active" ${(data.status == "Active") ? 'selected' : ''}>Active</option>
													<option value="Inactive" ${(data.status == "Inactive") ? 'selected' : ''}>Inactive</option>
												</select>`);
		        $( row ).find('td:eq(5)').attr('data-id', data['id']).attr('key_type','created_at').addClass('td_edit').addClass('white_space').addClass('date_white_space').addClass('col_min_width');
		        $( row ).find('td:eq(6)').attr('data-id', data['id']).attr('key_type','created_by').addClass('td_edit').addClass('white_space');
		        $( row ).find('td:eq(7)').attr('data-id', data['id']).attr('key_type','updated_at').addClass('td_edit').addClass('white_space').addClass('date_white_space').addClass('col_min_width');
		        $( row ).find('td:eq(8)').attr('data-id', data['id']).attr('key_type','updated_by').addClass('td_edit').addClass('white_space');
		    },
				columns:[
					{data: 'DT_RowIndex', name: 'DT_RowIndex'},
					{data:'username',name:'username'},
					{data:'password',name:'password'},
					{data:'venue_name', name:'venue_name', orderable: false},
					{data:'status', name:'status'},
					{data:'created_at', name:'created_at'},
					{data:'created_by', name:'created_by'},
					{data:'updated_at', name:'updated_at'},
					{data:'updated_by', name:'updated_by'},
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


		$(document).on('dblclick','.td_edit',function(){

			var dataId = $(this).attr('data-id');
			var keyType = $(this).attr('key_type');
			var content = $(this).text();

			if(keyType == 'username'){
				$(this).attr('contenteditable',true);
				$(this).attr("onkeypress", "return (this.innerText.length <= 29)");
			}

			if(keyType == 'password'){
				$(this).attr('contenteditable',true);
				$(this).attr("onkeypress", "return (this.innerText.length <= 199)");
			}

			if(keyType == 'status' ){
				$(this).attr('contenteditable',true);
				$(this).attr("onkeypress", "return (this.innerText.length <= 49)");
			}

			if(keyType=='password'){
				$(this).text('');
				$(this).attr('contenteditable',true);
				$(this).attr("onkeypress", "return (this.innerText.length <= 50)");
			}

			if(keyType == 'username' || keyType == 'password' ){
				
				$(this).on('keydown',function(e){
					if(e.which==32){
						return false;
					}
				});

			}

			// if(keyType == 'username'){

			// }

		});

		$(document).on("change",".status_select",function(){
			$(this).parent().addClass("td_edit").attr("contenteditable","true");
		});


		$('.update_btn').click(function(){

		if($('.td_edit[contenteditable=true]').length <= 0){
			$("#alert_text").text("Please edit at least one value.");
			$("#validationModel").modal("show");
			$("#validationModel").unbind("click");
			return false;
		}

		var	arr = [];
		let empty_val = "false";
		$('.td_edit[contenteditable=true]').each(function(){
			let data_id = $(this).attr('data-id');
			let keyType = $(this).attr('key_type');
			let text;

			if(keyType == "status"){
				text = $(this).children(".status_select").val();
			}else{
				text = $(this).text();
			}
			if(keyType == 'username'){

				if(text == ""){
					$("#alert_text").text("Please enter username.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					empty_val = "true";
				}else if(text.length < 2){
					$("#alert_text").text("Username should be at least 2 characters long.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					empty_val = "true";
				}

			}else if(keyType == 'password'){
				if(text == ""){
					$("#alert_text").text("Please enter password.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					empty_val = "true";
				}else if(text.length < 6){
					$("#alert_text").text("Password must be at least 6 characters long.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					empty_val = "true";
				}
			}

			var objectData = {}

			objectData.data_id = data_id;
			objectData.key_type = keyType;
			objectData.text = text;
			arr.push(objectData);
		});


		if(empty_val == "true"){
			$("#loaderModel").modal("hide");
			return false;
		}

			var objectData = {
				'_token':'{{ csrf_token() }}',
				'arr':arr,
			}

			$.ajax({
				url:'{{ route("admin.editvenuetable") }}',
				dataType:'JSON',
				type:'POST',
				data:objectData,
				beforeSend:function(){
	          		$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
					},
				success:function(data){
					setTimeout(function(){
					$("#loaderModel").modal("hide");
				  	$("#successModel").modal("show");
		        	$("#success_alert_text").text(data.msg);
		        	$("#successModel").unbind("click");
		        	$('#basic-datatables').DataTable().ajax.reload();
					},500);
				},error: function(data, textStatus, xhr) {
	                if(data.status == 422){
	                  setTimeout(function(){
	                  	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
		                  	if(result['venue_username_err'] && result['venue_username_err'].length > 0){
			                  	$("#alert_text").text(result['venue_username_err']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		                 	}
		                  return false;
	                  },500);
	                } 
	              }
			});

		});

	</script>

	<script type="text/javascript">
		$(".venue_select").on("click",function(){
			let venue_id = $(this).data("id").toString();
			let venue_selection = $("#venue_selection").val();
			let __split_venue_selection = venue_selection.split(",");

			__split_venue_selection = __split_venue_selection.filter(function (el) {
		   		if(el == ""){
		   			return el != "";
		   		}else{
		   			return el != null;
		   		}
			});
			if($(this).prop("checked") == true){

				if(__split_venue_selection.indexOf(venue_id) == -1){
			   		if(__split_venue_selection.length > 0){
			   			$("#venue_selection").val(venue_selection + "," + venue_id);
			   		}else{
			   			$("#venue_selection").val(venue_id);
			   		}
			   	}

			}else{
				
				//remove id

				if(__split_venue_selection.indexOf(venue_id) != -1){
			   		__split_venue_selection.splice(__split_venue_selection.indexOf(venue_id),1);

			   		if(__split_venue_selection.length > 0){
			   			__split_venue_selection = __split_venue_selection.toString();
			   			$("#venue_selection").val(__split_venue_selection);
			   		}else{
			   			$("#venue_selection").val("");
			   		}
			   	}
			}
		})
	</script>
</body>
</html>