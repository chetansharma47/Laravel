<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>New Login Request</title>
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
		.app_checkboxes .checkmark {
			top: -12px !important;
    		left: 16px !important;
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
		/*.dataTables_filter label {
			margin-right: 116px;
		}*/
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
		.no-arrow::before,
		.no-arrow::after {
			display: none !important;
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

		.modal-footer {
		    padding: 0.3rem;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>New Login Request</a>
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
	<section class="mb-5" style="margin-top: 80px;">
		<div class="container">
			<div class="table-responsive">
				<table id="basic-datatables"  class="display table table-striped table-hover" >
					<input type="hidden" name="selected_checkboxes" id="selected_checkboxes" value="">
				<!-- 	<a href="" class="btn btn-primary btn-user btn-block common_btn"  style="width: 100px;padding: 4px 0 !important;font-size: 17px; text-transform: initial !important;position: absolute;
    right: 137px;
    margin-top: 0px;
    z-index: 99;">
			                      	Search
			                    </a> -->
					<thead>
						<tr style="background-color: #193358;    color: #fff;">
							<th class="text-left">User</th>
							<th class="text-left">Outlet</th>
							<th>Device Model</th>
							<th>Mac Address</th>
							<th>Status</th>
							<th>Date & Time</th>
							<th class="text-center no-arrow">
								<div class="d-flex align-items-center">
									Selection 
	                                <input type="checkbox" data-id = "0" class="select_all_checkbox" key_type="checkbox" style="margin-left: 17px; margin-top: 2px;">
								</div>
							</th>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
			</div>
			<div class="d-flex mt-3" style="margin-left: 14px;">
				<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn mr-3 authorizedUnauthorized" type="authorized" style="width: 28%; text-transform: none; font-size: 20px;">
	                Authorize
	           </a>
	           <a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn mt-0 authorizedUnauthorized" type="unauthorized" style="width: 28%; text-transform: none; font-size: 20px;">
	                Unauthorize
	           </a>
			</div>
		</div>
	</section>


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
<!-- 	<script src="{{url('public/admin/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js')}}')}}"></script>
 -->

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
<!-- 	<script src="{{url('public/admin/assets/js/demo.js')}}"></script> -->
	
	<script type="text/javascript">
		$(document).ready(function(){
			$('#basic-datatables').dataTable({
             dom: "Bfrtip",
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "{{url('admin/adding-venue-table')}}",
                "type": "POST",
                "data" : {
                	'_token': "{{csrf_token()}}",
                },
                complete:function(){
		          	let selected_checkboxes = $("#selected_checkboxes").val();

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
					if($(".single_checkbox:not(:checked)").length > 0){
						$(".select_all_checkbox").prop("checked",false);
					}else{
						$(".select_all_checkbox").prop("checked",true);
					}
		        }

            },
            createdRow: function( row, data, dataIndex ) {

		        $( row ).find('td:eq(0)').attr('data-id', data['id']).attr('key_type','username').addClass('td_click');
		        $( row ).find('td:eq(1)').attr('data-id', data['id']).attr('key_type','venue_name').addClass('td_click');
		        $( row ).find('td:eq(2)').attr('data-id', data['id']).attr('key_type','device_model').addClass('td_click');
		        $( row ).find('td:eq(3)').attr('data-id', data['id']).attr('key_type','authorized_status').addClass('td_click');
		        $( row ).find('td:eq(4)').attr('data-id', data['id']).attr('key_type','date_time').addClass('td_click');
		        
		    },
            "columns": [
            // {data: 'DT_RowIndex', name: 'DT_RowIndex'},
                {data: 'username', name: 'username'},
	            {data: 'venue_name', name: 'venue_name'},
	            {data: 'device_model', name: 'device_model'},
	            {data: 'mac_address', name: 'mac_address'},
	            {data: 'authorized_status', name: 'authorized_status'},
	            {data: 'date_time', name: 'date_time'},
	            {data: 'selection', name: 'selection', orderable: false, searchable: false},
            ]
 
        });
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
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

				if($(".single_checkbox:not(:checked)").length > 0){
					$(".select_all_checkbox").prop("checked",false);
				}else{
					$(".select_all_checkbox").prop("checked",true);
				}
			});



			$(".authorizedUnauthorized").on("click",function(){
				let ids = $("#selected_checkboxes").val();
				let type = $(this).attr('type');
				if(ids == "" || ids == null || ids == "undefiend"){
					$("#alert_text").text("Please select checkbox for "+type+" users.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
				
				var data = {
	            	'_token': "{{csrf_token()}}",
	            	"ids": ids,
	            	"type" : type
	            };

	          	$.ajax({
		              url:"{{route('admin.authorizedUnauthorized')}}",
		              type:'POST',
		              data:data,
		              beforeSend:function(){
		              	$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
		              },
		              success: function(res){
		              	setTimeout(function(){
		              		$(".single_checkbox").prop("checked",false);
		              		$(".select_all_checkbox").prop("checked",false);
		              		if(res.type == "authorized"){

			              		$("#loaderModel").modal("hide");
			              		$("#success_alert_text").text("Users has authorized.");
			              		$("#successModel").modal("show");

			              		let authorized_ids = res.ids;
			              		for(k=0; authorized_ids.length > k; k++){
			              			$(".td_click[data-id='"+authorized_ids[k]+"']").text("Authorized");
			              		}
		              		}else{
		              			//unauthorized

			              		
		              			$("#loaderModel").modal("hide");
			              		$("#success_alert_text").text("Users has been unauthorized successfully.");
			              		$("#successModel").modal("show");

		              			let unauthorized_ids = res.ids;
			              		for(k=0; unauthorized_ids.length > k; k++){
			              			$(".td_click[data-id='"+unauthorized_ids[k]+"']").text("Unauthorized");
			              		}
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

			});



			$(".ok").on("click",function(){
				$("#validationModel").modal("hide");
			});



		});
	</script>
</body>