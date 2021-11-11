<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Cross Verification Sales</title>
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
		img.upload_icon {
		    position: absolute;
		    width: 30px;
		    top: -47px;
		    right: 12px;
		    cursor: pointer;
		}
		.export_data a:hover{
			color: #fff!important;
		}
		.app_checkboxes .checkmark {
		    position: absolute;
		    top: -16px;
		    left: 16px;
		    height: 30px;
		    width: 30px;
		    background-color: #c3c3c3;
		    border-radius: 8px;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>Cross Verification Sales</a>
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
	<section class="mt-5">
		<div class="container-fluid menu-tabs">
			<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" href="#" style="    margin-left: 7px;">Cross Verification</a>
				</li>
			</ul>
		</div>
		<div class="events_venue_details">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-3" style="padding-left: 25px;">
						<form method="POST" id="upload_file_transactions" enctype="multipart/form-data">
							@csrf
							<div class="venue_inputs pt-3 pl-2 pb-3">
								<label>
									Upload Checks Export File  for Verification
								</label>
								<input type="text" readonly style="cursor: default; position: relative;" class="form-control file_name_input form-control-user" is_file="0">
								<label for="img_upload" style="position: relative; width: 100%;">
									<img data-toggle="tooltip" data-placement="top" title="Click to upload file" src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
								</label>
								<input type="file" src="" name="img_upload" id="img_upload" class="img_upload" hidden  autocomplete="off"/>
								<input type="reset" src="" name="img_upload_reset" id="img_upload_reset" class="img_upload" hidden/>
							<!-- <input type="text" value="" id="hidden_img2" hidden  autocomplete="off" /> -->
								<!-- c:\exportfrommicros\possaledata.xlsx -->
							</div>
						</form>

						<div class="grey_btn upload_and_verify_btn green_btn">Upload & Verify Transaction</div>
						<div class="grey_btn green_btn delete_select_txn_btn">Delete the Selected Transaction</div>
						<div class="grey_btn green_btn verify_select_txn_btn">Force verify the Selected Sales Transaction</div>
						<div class="grey_btn green_btn force_verify_sales_transactions">Force verify the all Pending Sales Transaction</div>
							<a href='{{ route("admin.export_cross_verification_sales") }}' style="color: #fff;" >
						<div class="grey_btn green_btn export_data">
							Export the data
							

							</div>
							</a>
					</div>
					<div class="col-md-9 padding-top">
						<div class="venue_inputs pl-3 pb-3">
							<label>
								Unverified Sales Transaction
							</label>
						</div>
						<div class="table-responsive" style="margin-top: -56px;">
							<table id="basic-datatables" class="display table table-striped table-hover" >
								<!-- <a href="" class="btn btn-primary btn-user btn-block common_btn"  style="width: 100px;padding: 4px 0 !important;font-size: 17px; text-transform: initial !important;position: absolute;
    right: 12px;
    margin-top: 0px;
    z-index: 99;">
			                      	Search
			                    </a> -->
								<thead>
									<tr style=" background-color: #193358; color: #fff;">
										<th>Sr.No.</th>
										<th style="min-width: 128px;">Customer ID</th>
										<th style="min-width: 128px;">Customer No.</th>
										<th style="min-width: 100px;">Check No.</th>
										<th style="min-width: 128px;">Check Amount</th>
										<th style="min-width: 128px;">Check Amount POS</th>
										<th style="min-width: 128px;">Transaction Status</th>
										<th style="min-width: 128px;">Cash Back %</th>
										<th style="min-width: 128px;">Redeemed Wallet</th>
										<th style="min-width: 165px;">Redemption from Loyalty</th>
										<th style="min-width: 128px;">Restaurant Name</th>
										<th style="min-width: 128px;">Offer Products</th>
										<th style="min-width: 140px;">Date of Entry</th>
										<th style="min-width: 140px;">Updated On</th>
										<th style="min-width: 128px;">Updated By</th>
										<th style="min-width: 211px;">Restaurant Logged In User</th>
										<th class="text-center no-arrow">
											<div class="d-flex align-items-center">
												Selection 
				                                <!-- <input type="checkbox" data-id = "0" class="select_all_checkbox" key_type="checkbox" style="margin-left: 17px; margin-top: 2px;"> -->
											</div>
										</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
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
        <p id="success_alert_text" class="confirmation_alert_text"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">No</button> 
        <button type="button" class="btn btn-secondary confirm_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;" data-dismiss="modal">Yes</button>
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
		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
			$("#successModel").modal("hide");
		});
		function cross_verification_sales(){
			let table = $("#basic-datatables").DataTable({
				processing:true,
				serverSide:true,
				retrieve: true,
				paging: true,
				searching:true,
				pageLength:10,
				ajax:{
					url:"{{ route('admin.CrossVerificationSalesDashboard') }}",
					type:"POST",
					data:{'_token':'{{csrf_token()}}'},
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

			        if($(".single_checkbox").length > 0){

						if($(".single_checkbox:not(:checked)").length > 0){
							$(".select_all_checkbox").prop("checked",false);
						}else{
							$(".select_all_checkbox").prop("checked",true);
						}
			        }else{
			        	$(".select_all_checkbox").prop("checked",false);
			        }
				},
				columns:[
					{data:'DT_RowIndex',name:'DT_RowIndex'},
					{data:'customer_id', name:'customer_id'},
					{data:'mobile_number', name:'mobile_number'},
					{data:'invoice_number', name:'invoice_number'},
					{data:'total_bill_amount', name:'total_bill_amount'},
					{data:'check_amount_pos', name:'check_amount_pos'},
					{data:'txn_status', name:'txn_status', orderable: false},
					{data:'cashback_percentage', name:'cashback_percentage'},
					{data:'wallet_cash', name:'wallet_cash'},
					{data:'redeemed_amount', name:'redeemed_amount'},
					{data:'venue_name', name:'venue_name'},
					{data:'offer_name', name:'offer_name', orderable: false,  searchable: false},
					{data:'date_and_time', name:'date_and_time'},
					{data:'updated_at', name:'updated_at'},
					{data:'updated_by', name:'updated_by'},
					{data:'username', name:'username'},
					{data: 'selection', name: 'selection', orderable: false, searchable: false},
				]
			
			});
		}
			cross_verification_sales();

			$('.img_upload').on('change',function(e){
				var file = event.target.files[0];
				var file_nameshow = file.name;
				console.log(file_nameshow);
				var valu = file_nameshow;
				var length = valu.length;
				if(length > 22){
					var slice_name = valu.slice(0,22)+'...';
				}else{
					var slice_name = valu;
				}

				if(file){

					if(file.type == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" || file.type == "text/csv"){
						$('.file_name_input').attr({'value':slice_name,'is_file':1});
						// $('.file_name_input').attr('is_file',1);
						$('.upload_icon').attr('data-original-title','Click to change file');
						e.target.files = null;

					}else{
						$("#alert_text").text("Please upload .xlsx, or .csv format file only.");
				      	$("#validationModel").modal("show");
				      	$("#validationModel").unbind("click");
				      	return false;
					}

				}
			});

			$('.upload_and_verify_btn').click(function(){
				var file_name = $('.file_name_input').val();
				if(file_name == ''){
					$("#alert_text").text("Please upload file for verify transactions.");
			      	$("#validationModel").modal("show");
			      	$("#validationModel").unbind("click");
			      	return false;
				}else{
					$('#upload_file_transactions').submit();
				}
			});

			$('#upload_file_transactions').submit(function(e){
				e.preventDefault();
				var formdata = new FormData(this);
				formdata.getAll('.img_upload');
				$.ajax({
					url:'{{ route("admin.excel_verify_transaction") }}',
					type:'POST',
					processData:false,
		            contentType:false,
		            dataType:'JSON',
		            data:formdata,
		            cache:false,
		            beforeSend:function(){
			      		$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
					},
					success:function(data){

							setTimeout(function(){
						$('.file_name_input').attr({'value':'','is_file':0});
						$('.upload_icon').attr('data-original-title','Click to upload file');
						$(".img_upload")[0].value = '';

							if(data.message == 'Columns name not matched with original format.' || data.message == 'No data exists.' || data.message == 'No data found in selected file.'){
								$("#loaderModel").modal("hide");
						        $("#successModel").modal("show");
					        	$("#success_alert_text").text(data.message);
					        	return false;
							}

							if(data.ids_data.length > 0){

			          			$("#loaderModel").modal("hide");
						        $("#successModel").modal("show");
					        	$("#success_alert_text").text(data.message);
					        	$("#successModel").unbind("click");
					        	$('#basic-datatables').DataTable().ajax.reload();
					        	let hit_url = "{{url('admin/download-verify-sales-after-successfully-uploded-file')}}" + "/" + btoa(data.ids_data.toString());
					        	//alert(hit_url)
					        	window.open(hit_url);
							}else{
								$("#loaderModel").modal("hide");
						        $("#successModel").modal("show");
					        	$("#success_alert_text").text(data.message);
					        	$('#basic-datatables').DataTable().ajax.reload();
							}	
		          		},500);
					},error: function(data, textStatus, xhr) {

						setTimeout(function(){
							$(".img_upload")[0].value = '';
						$('.file_name_input').attr({'value':'','is_file':0});
						$('.upload_icon').attr('data-original-title','Click to upload file');

			                if(data.status == 422){
			                	console.log(data)
			                  var result = data.responseJSON;
			                  $("#alert_text").text(result.message);
			                  $("#loaderModel").modal("hide");
			                  $("#validationModel").modal("show");
			                  $("#validationModel").unbind("click");
			                  return false;

			                } 
						},500)
		              }
				});
				return false;
			});

			$('.delete_select_txn_btn').click(function(){
				let delete_select_transactions = $('#selected_checkboxes').val();
				if(delete_select_transactions == ''){
					$("#alert_text").text("Please select at least one check box.");
			      	$("#validationModel").modal("show");
			      	$("#validationModel").unbind("click");
			      	return false;
				}else{
					$('.confirm_ok').addClass('delete_select_txn_confirmOk');
					$(".confirmation_alert_text").text("Are you sure, you want to delete selected transactions?");
					$('#confirmationmodel').modal("show");
				}
			});

			$(document).on('click','.delete_select_txn_confirmOk',function(){
				$(this).removeClass('delete_select_txn_confirmOk');
				$('#confirmationmodel').modal("hide");
				let delete_selected_checkboxes = $('#selected_checkboxes').val();
				$.ajax({
					url:'{{ route("admin.delete_selected_transactions") }}',
					type:'POST',
					dataType:'JSON',
		            data:{delete_selected_checkboxes,'_token':'{{ csrf_token() }}'},
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
				        	$("#selected_checkboxes").val("");
				        	$(this).removeClass('delete_select_txn_confirmOk');
		              		$(".single_checkbox").prop("checked",false);
				        	$('#basic-datatables').DataTable().ajax.reload();
		          		},500);
		            },error: function(data, textStatus, xhr) {
				        if(data.status == 422){
				          setTimeout(function(){
				          	$("#loaderModel").modal("hide");
				              	var result = data.responseJSON;
				             	if(result['delete_txn_err'] && result['delete_txn_err'].length > 0){
				             		$("#alert_text").text(result['delete_txn_err']);
									$("#validationModel").modal("show");
									$("#validationModel").unbind("click");
				             	}
				              return false;
				          },500);
				        } 
				  	}

				});
			});

			$('.verify_select_txn_btn').click(function(){
				let verify_select_transactions = $('#selected_checkboxes').val();
				if(verify_select_transactions == ''){
					$("#alert_text").text("Please select at least one check box.");
			      	$("#validationModel").modal("show");
			      	$("#validationModel").unbind("click");
			      	return false;
				}else{
					$('.confirm_ok').addClass('verify_select_txn_confirmOk');
					$(".confirmation_alert_text").text("Are you sure, you want to forcefully verified selected transactions?");
					$('#confirmationmodel').modal("show");	
				}
			});


			$(document).on('click','.verify_select_txn_confirmOk',function(){
				$('#confirmationmodel').modal("hide");
				$(this).removeClass('verify_select_txn_confirmOk');

				let verify_selected_checkboxes = $('#selected_checkboxes').val();
				$.ajax({
					url:'{{ route("admin.verify_select_transactions") }}',
					type:'POST',
					dataType:'JSON',
		            data:{verify_selected_checkboxes,'_token':'{{ csrf_token() }}'},
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
				        	$("#selected_checkboxes").val("");
		              		$(".single_checkbox").prop("checked",false);
		              		$(this).removeClass('verify_select_txn_confirmOk');
				        	$('#basic-datatables').DataTable().ajax.reload();
		          		},500);
		            }

				});
			});

			$('.force_verify_sales_transactions').click(function(){
				$(".confirmation_alert_text").text("Are you sure, you want to forcefully verified all pending sales transactions?");
				$('.confirm_ok').addClass('force_verify_all_sales');
				$('#confirmationmodel').modal("show");
			});

			$(document).on('click','.force_verify_all_sales',function(){
				$(this).removeClass('force_verify_all_sales');
				$('#confirmationmodel').hide();
				$.ajax({
					url:'{{ route("admin.force_verify_all_pending_sales") }}',
					type:'POST',
					dataType:'JSON',
		            data:{'_token':'{{ csrf_token() }}'},
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
				        	$(this).removeClass('force_verify_all_sales');
				        	$('#basic-datatables').DataTable().ajax.reload();
		          		},500);
		            },error: function(data, textStatus, xhr) {
				        if(data.status == 422){
				          setTimeout(function(){
				          	$("#loaderModel").modal("hide");
				              	var result = data.responseJSON;
				             	if(result['txn_verify_err'] && result['txn_verify_err'].length > 0){
				             		$("#alert_text").text(result['txn_verify_err']);
									$("#validationModel").modal("show");
									$("#validationModel").unbind("click");
				             	}
				              return false;
				          },500);
				        } 
				  	}
				});
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

			});

			$(document).on("keyup",".form-control",function(){
		        if($.trim($(this).val()).length == 0){
		           $(this).val("");
		        }else{
		          $(this).val($(this).val().trimLeft(""));
		        }
	      });

			$(document).on('mouseenter','.upload_icon',function(e){
				// var title = $(this).attr('data-original-title');
				var file_attr = $('.file_name_input').attr('is_file');
				if( file_attr == 1){
					$(this).attr('data-original-title','Click to change file');
				}else{
					$(this).attr('data-original-title','Click to upload file');
				}
			});


	</script>
</body>
</html>