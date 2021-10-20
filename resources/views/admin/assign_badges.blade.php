<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Assign Badges</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="{{url('public/admin/assets/img/logo-approved.png')}}" type="image/x-icon"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Signika:wght@300;400;500;600;700&display=swap" rel="stylesheet">

	<link href="{{url('public/admin/assets/css/mdtimepicker.css')}}" rel="stylesheet" />

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
		table#basic-datatables2 {
    overflow: auto;
    display: inline-block;
    width: 100%!important;
}
.row.left-side.right_time {
    position: absolute;
}
.row.left-side.right_time {
    position: absolute;
    top: 68px;
}
div#basic-datatables2_wrapper {
    margin-top: 62px;
}

input#from_time,#to_time, #customer_id{
	background: #EBEBEB!important;
}

select#exampleFormControlSelect1 {
    padding-right: 51px!important;
}

/*select#exampleFormControlSelect1{
	background: #EBEBEB!important;
}*/


/*.font-size-small .venue_inputs input, .font-size-small .venue_inputs select {
    
    font-size: 16px !important;
    
}*/

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

	.badges_assign_label {
	    position: absolute;
	    top: 75px;
	}
table#basic-datatables {
    width: 100%!important;
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
		div#basic-datatables2_length {
		    display: none;
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
										<a class="nav-link" href="javascript:void(0);" style="padding-left: 0;"> <span style="color: #fff;">></span>Assign Badges</a>
									</li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-12 text-center">
								<ul class="" style="padding-left: 25px;">
										<a class="nav-link" href="{{route('admin.adminTabs')}}">
											<img style="width: 100px;" src="{{url('public/admin/assets/img/logo-approved.png')}}"/ alt="logo-approved">
										</a>
								</ul>
							</div>
							<div class="col-md-5 text-right pr-0">
								<ul class="navbar-nav">
									<li class="nav-item">
										<a class="nav-link" href="javascript:void(0);">User: Nadeer</a>
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
	<section class="mt-3" style="overflow: hidden;">

		<input type="hidden" class="days" value="">

		<div class="container-fluid font-size-small">
			<div class="row">
				<div class="col-md-4">
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Customer ID:
						</label>
						<input type="text" class="form-control form-control-user" placeholder="Customer ID" value="" name="customer_id" id="customer_id" style="border-radius: 10px" readonly="true" autocomplete="off" />
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Badge Name
						</label>
						<select class="form-control form-group select_option" style="position: relative;border-radius: 10px; cursor: pointer;" id="exampleFormControlSelect1" name="badge_name">
							<option value="">Select Badge Name</option>
							@foreach($badges as $badge)
							<option value="{{$badge->id}}">{{$badge->badge_name}}</option>
							@endforeach()
						</select>
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Comment 
						</label>
						<input type="text" class="form-control form-control-user" placeholder="Comment" value="" maxlength="100" id="comment" name="comment" style="border-radius: 10px"autocomplete="off" />
					</div>
					<div class="venue_inputs mb-3 px-2 pl-3">
						<label style="font-weight: 400;">
							Status
						</label>
						<select class="form-control form-group select_option" style="position: relative;border-radius: 10px; cursor: pointer;" id="exampleFormControlSelect2" name="status">
							<option value="">Select Status</option>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
						</select>
					</div>
					<div class="d-flex justify-content-between mt-4">
						<div class="mr-4">
							<a href="javascript:void(0)"; id="add_new_badge_btn" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; text-transform: none;     width: 176px!important;">
								Assign New Badge
							</a>
						</div>
						<div class="mr-4">
							<a href="javascript:void(0)"; id="update_badge_btn" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; text-transform: none;     width: 215px!important;">
								Update Assigned Badge
							</a>
						</div>
						<div class="mr-4" style="z-index: 9">
							<a href="javascript:void(0)"; id="delete_badge_btn" class="btn btn-primary btn-user btn-block common_btn" style="    font-size: 18px; text-transform: none;width: 210px!important;">
								Delete Assigned Badge
							</a>
						</div>

						<div  style="z-index: 9;">
							<a href="{{route('admin.badges')}}"; class="btn btn-primary btn-user btn-block common_btn" style="    font-size: 18px; text-transform: none;     width: 154px!important; padding-left: 1.2rem!important">
								Add New Badge
							</a>
						</div>

					</div>
				</div>
				<div class="col-md-8">
                <div class="col-md-10 venue_inputs">
							<label>
								When
							</label>
							<div class="checkboxesbg">
								<div class="d-flex flex-wrap">
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Monday</span>
											<input type="checkbox" class="checkbox_click" data-id="Monday">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Tuesday</span>
											<input type="checkbox" class="checkbox_click" data-id="Tuesday">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Wednesday</span>
											<input type="checkbox" class="checkbox_click" data-id="Wednesday">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Thursday</span>
											<input type="checkbox" class="checkbox_click" data-id="Thursday">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Friday</span>
											<input type="checkbox" class="checkbox_click" data-id="Friday">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="mr-2">
										<label class="tick_box" style="width: 84px;"><span class="date">Saturday</span>
											<input type="checkbox" class="checkbox_click" data-id="Saturday">
											<span class="checkmark"></span>
										</label>
									</div>
									<div>
										<label class="tick_box" style="width: 84px;"><span class="date">Sunday</span>
											<input type="checkbox" class="checkbox_click" data-id="Sunday">
											<span class="checkmark"></span>
										</label>
									</div>
								</div>
							</div>
							<label class="applicable-date mt-3" style="margin-left: 0;">
						Applicable Dates
					</label>
						<div class="row">
						<div class="col-md-3 venue_inputs">
							<label>
								From Date
							</label>
							<input type="date" class="form-control form-control-user" placeholder="From Date" value="" id="from_date" min="{{$current_date}}">
						</div>
						<div class="col-md-3 venue_inputs">
							<label>
								To Date
							</label>
							<input type="date" class="form-control form-control-user" placeholder="To Date" value="" id="to_date" min="{{$current_date}}">
						</div>
						<div class="col-md-6 venue_inputs">
							<div class="">
								<label>
									Created 
								</label>
								<input type="text" class="form-control form-control-user"  id="created_at" value="" disabled="" style=" background-color: #8D8A8A !important; font-size: 15px!important;height: 43px!important;">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 venue_inputs">
							<label>
								From Time
							</label>
							<input type="text" class="form-control form-control-user timepicker3"  value="" id="from_time" style="cursor: pointer;">
						</div>
						<div class="col-md-3 venue_inputs">
							<label>
								To Time
							</label>
							<input type="text" class="form-control form-control-user timepicker3"  value="" id="to_time" style="cursor: pointer;">
						</div>

						<div class="col-md-6 venue_inputs">
								<div>
								<label>
									Last Updated 
								</label>

								<input type="text" class="form-control form-control-user" placeholder="" value="" id="updated_at" disabled="" style="    background-color: #8D8A8A !important;font-size: 15px!important;height: 43px!important;">
							</div> 
						</div>
					</div>

                 </div>
				</div>
			</div>
			<div class="row left-side">
				<div class="col-md-3">
					<div class="venue_inputs mb-3" style="margin-top: 57px; margin-left: 3px;">
						<label>
							Users
						</label>
					</div>
				</div>
			</div>
			<div class="row left-side">
				<div class="col-md-12 mb-4" style="margin-top: -57px;">
						<table id="basic-datatables" class="display table table-striped table-hover" >
							<thead>
								<tr style="background-color: #193358;    color: #fff;">
									<th>Sr. No.</th>
									<th>Customer ID</th>
									<th>Customer Name</th>
									<th>Customer Mobile Number</th>
								</tr>
							</thead>
							
						</table>
				</div>

				<div class="col-md-12 mb-4" >
					<!-- <div class="row left-side right_time">
				<div class="col-md-12">
					<div class="venue_inputs mb-3" style=" margin-left: 3px;">
						<label>
							Badges Assigned for the Selected users
						</label>
					</div>
				</div>
			</div> -->
			<div class="row" style="position: absolute;width: 80%; top: -4px; z-index: 99">
				
						<div class="col-md-3">
							
							<div class="venue_inputs mb-3 badges_assign_label" style=" margin-left: 0px;">
								<label>
									Badges Assigned for the Selected users
								</label>
							</div>
						</div>

						<!-- <div class="col-md-3">
							<div class="venue_inputs mb-3 px-2 pl-3" style="position: absolute; top: 62px;">
							
								<select class="form-control select-status form-group select_option" id="assign_search" style="position: relative;border-radius: 0px; cursor: pointer;">
									<option value="">Select Badge Name</option>
									@foreach($badges as $badge)
									<option value="{{$badge->id}}">{{$badge->badge_name}}</option>
									@endforeach()
								</select>
							</div>
						</div> -->

					</div>

						<table id="basic-datatables2" class="display table table-striped table-hover" >
							<thead>
								<tr style="background-color: #193358;    color: #fff;">
									<th style="min-width: 40px">Sr. No.</th>
									<th style="min-width: 110px">Customer ID</th>
									<th style="min-width: 200px">Badge Name</th>
									<th>Status</th>
									<th  style="min-width: 130px">From Date</th>
									<th  style="min-width: 130px">To Date</th>
									<th  style="min-width: 130px">From Time</th>
									<th style="min-width: 130px">To Time</th>
									<th style="min-width: 100px">Created By</th>
									<th style="min-width: 135px">Created On</th>
									<th style="min-width: 100px">Updated By</th>
									<th style="min-width: 135px">Updated On</th>
								</tr>
							</thead>
							
						</table>
				</div>
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
        <button type="button" class="btn btn-secondary confirm_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">Yes</button>
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
	<!-- <script src="{{url('public/admin/assets/js/demo.js')}}"></script>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> -->
	
	<script src="{{url('public/admin/assets/js/mdtimepicker.js')}}" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function() {

    	$(".timepicker3").mdtimepicker();
 	
		localStorage.clear();
        userSearch();

    });

    function userSearch(){
    	let search_for_table1 = $(".form-control[type='search'][aria-controls='basic-datatables']").val();
    	//alert(search_for_table1)
    	$("#basic-datatables").dataTable().fnDestroy();
    	setTimeout(function(){

	    	$('#basic-datatables').dataTable({
	             dom: "Bfrtip",
	            "processing": true,
	            "serverSide": true,
	            "ajax": {
	                "url": "{{route('admin.searchAssignBadges')}}",
	                "type": "POST",
	                "data" : {
	                	'_token': "{{csrf_token()}}",
	                	'search_for_table1' : search_for_table1
	                },
	                complete:function(){
			          tdClick();

			          	if($("#basic-datatables_wrapper").find(".wrap_all").length <= 0){

							$('#basic-datatables_info,#basic-datatables_paginate').wrapAll('<div class="wrap_all"></div>'); 
						}

						if(search_for_table1 != undefined && search_for_table1 && localStorage.getItem("search_show_val") == "true"){

							$(".form-control[type='search'][aria-controls='basic-datatables']").val(search_for_table1);
						}

			        }

	            },
	            createdRow: function( row, data, dataIndex ) {
	            	$( row ).find('td:eq(0)').attr('data-id', data['id']).attr('key_type','serial_number').addClass('td_click');
			        $( row ).find('td:eq(1)').attr('data-id', data['id']).attr('key_type','customer_id').addClass('td_click');
			        $( row ).find('td:eq(2)').attr('data-id', data['id']).attr('key_type','customer_name').addClass('td_click');
			        $( row ).find('td:eq(3)').attr('data-id', data['id']).attr('key_type','customer_mobile_number').addClass('td_click');
			    },
	            "columns": [
	             	{data: 'DT_RowIndex', name: 'DT_RowIndex'},
	                {data: 'customer_id', name: 'customer_id'},
		            {data: 'customer_name', name: 'customer_name'},
		            {data: 'country_code_with_phone_number', name: 'country_code_with_phone_number'}
	            ]
	 
	        });
    	},500);
    }

    function tdClick(){
			$(".td_click").on("dblclick",function(){
				$("#exampleFormControlSelect1").removeAttr("disabled");
				// $(".days").val("");
				// $(".checkbox_click").prop("checked",false);
				$("#created_at").val("");
				$("#updated_at").val("");
				let customer_id = $(this).parent().find(".td_click[key_type='customer_id']").text();
				$("#customer_id").val(customer_id);
				routeForBadgeAssignUser();
			});
			
		}
      </script>


  	<script type="text/javascript">
    	$(document).ready(function() {

    		
	 		routeForBadgeAssignUser();

	 		$("#assign_search").on("change",function(){
	 			$("#basic-datatables2").dataTable().fnDestroy();
	 			setTimeout(function(){

	 				routeForBadgeAssignUser();
	 			},500)
	 		});

	    });

	    function routeForBadgeAssignUser(){
	    	$("#basic-datatables2").dataTable().fnDestroy();
	    	let customer_id = $("#customer_id").val();
	        $('#basic-datatables2').dataTable({
	             dom: "Bfrtip",
	            "processing": true,
	            "serverSide": true,
	            "ajax": {
	                "url": "{{route('admin.badgeAssignListUsers')}}",
	                "type": "POST",
	                "data" : {
	                	'_token': "{{csrf_token()}}",
	                	'customer_id' : customer_id
	                },
	                complete:function(){
			          tdClick1();

			          	if($("#basic-datatables2_wrapper").find(".wrap_all").length <= 0){

							$('#basic-datatables2_info,#basic-datatables2_paginate').wrapAll('<div class="wrap_all"></div>'); 
						}

			        }

	            },
	            createdRow: function( row, data, dataIndex ) {
	            	$( row ).find('td:eq(0)').attr('data-id', data['id']).attr('key_type','serial_number').addClass('td_click1');
			        $( row ).find('td:eq(1)').attr('data-id', data['id']).attr('key_type','customer_id').addClass('td_click1');
			        $( row ).find('td:eq(2)').attr('data-id', data['id']).attr('key_type','badge_name').addClass('td_click1');
			        $( row ).find('td:eq(3)').attr('data-id', data['id']).attr('key_type','status').addClass('td_click1');
			        $( row ).find('td:eq(4)').attr('data-id', data['id']).attr('key_type','from_date').addClass('td_click1');
			        $( row ).find('td:eq(5)').attr('data-id', data['id']).attr('key_type','to_date').addClass('td_click1');
			        $( row ).find('td:eq(6)').attr('data-id', data['id']).attr('key_type','from_time').addClass('td_click1');
			        $( row ).find('td:eq(7)').attr('data-id', data['id']).attr('key_type','to_time').addClass('td_click1');
			        $( row ).find('td:eq(8)').attr('data-id', data['id']).attr('key_type','created_by').addClass('td_click1');
			        $( row ).find('td:eq(9)').attr('data-id', data['id']).attr('key_type','created_at').addClass('td_click1');
			        $( row ).find('td:eq(10)').attr('data-id', data['id']).attr('key_type','updated_by').addClass('td_click1');
			        $( row ).find('td:eq(11)').attr('data-id', data['id']).attr('key_type','updated_at').addClass('td_click1');
			    },
	            "columns": [
	             	{data: 'DT_RowIndex', name: 'DT_RowIndex'},
	                {data: 'customer_id', name: 'customer_id'},
		            {data: 'badge_name', name: 'badge_name'},
		            {data: 'status', name: 'status'},
		            {data: 'from_date', name: 'from_date'},
		            {data: 'to_date', name: 'to_date'},
		            {data: 'from_time', name: 'from_time'},
		            {data: 'to_time', name: 'to_time'},
		            {data: 'created_by', name: 'created_by'},
		            {data: 'created_at', name: 'created_at'},
		            {data: 'updated_by', name: 'updated_by'},
		            {data: 'updated_at', name: 'updated_at'}
	            ]
	 
	        });
	    }

	    function tdClick1(){
			$(".td_click1").on("dblclick",function(){
				$("#exampleFormControlSelect1").attr("disabled","true");
				let customer_id = $(this).parent().find(".td_click1[key_type='customer_id']").text();
				let assign_id = $(this).parent().find(".td_click1[key_type='badge_name']").attr("data-id");

				var data = {
			        	'_token': "{{csrf_token()}}",
			        	"customer_id" : customer_id,
			        	"assign_id" : assign_id
			    	};


					$.ajax({
				          url:"{{route('admin.findBadge')}}",
				          type:'POST',
				          data:data,
				          beforeSend:function(){
				          	$("#loaderModel").modal("show");
							$("#loaderModel").unbind("click");
				          },
				          success: function(res){
				          	console.log(res)
				          	setTimeout(function(){
				          		$("#loaderModel").modal("hide");
				          		let badge = res.data;
				          		$("#customer_id").val(badge.customer_id);
				          		$("#badge_name").val(badge.badge_name);
				          		$("#comment").val(badge.comment);
				          		$("#exampleFormControlSelect2").val(badge.status);
				          		$("#exampleFormControlSelect1").val(badge.badge_id);

				          		let day_on = badge.when_day;

								let split_day_on = day_on.split(",");
							   	split_day_on = split_day_on.filter(function (el) {
							   		if(el == ""){
							   			return el != "";
							   		}else{
							   			return el != null;
							   		}
								});

				          		let mo_select;
								let tu_select;
								let we_select;
								let th_select;
								let fr_select;
								let sa_select;
								let su_select;

								if(split_day_on.indexOf("Monday") != -1){
									$(".checkbox_click[data-id='Monday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Monday");
									}else{
										$(".days").val($(".days").val() + ",Monday");
									}
								}

								if(split_day_on.indexOf("Tuesday") != -1){
									$(".checkbox_click[data-id='Tuesday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Tuesday");
									}else{
										$(".days").val($(".days").val() + ",Tuesday");
									}
								}

								if(split_day_on.indexOf("Wednesday") != -1){
									$(".checkbox_click[data-id='Wednesday']").prop("checked",true);
									if($(".days").val() == ""){
										$(".days").val("Wednesday");
									}else{
										$(".days").val($(".days").val() + ",Wednesday");
									}
								}

								if(split_day_on.indexOf("Thursday") != -1){
									$(".checkbox_click[data-id='Thursday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Thursday");
									}else{
										$(".days").val($(".days").val() + ",Thursday");
									}
								}

								if(split_day_on.indexOf("Friday") != -1){
									$(".checkbox_click[data-id='Friday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Friday");
									}else{
										$(".days").val($(".days").val() + ",Friday");
									}
								}

								if(split_day_on.indexOf("Saturday") != -1){
									$(".checkbox_click[data-id='Saturday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Saturday");
									}else{
										$(".days").val($(".days").val() + ",Saturday");
									}
								}

								if(split_day_on.indexOf("Sunday") != -1){
									$(".checkbox_click[data-id='Sunday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Sunday");
									}else{
										$(".days").val($(".days").val() + ",Sunday");
									}
								}

								$("#from_date").val(badge.from_date);
								$("#to_date").val(badge.to_date);
								$("#from_time").val(badge.from_time);
								$("#to_time").val(badge.to_time);
								$("#created_at").val(badge.created_at);
								$("#updated_at").val(badge.updated_at);

				          	},500);
				          },
				          error: function(data, textStatus, xhr) {
				            if(data.status == 422){
				              var result = data.responseJSON;
				              alert('Something went worng.');
				              window.location.href = "";
				              $("#loaderModel").modal("hide");
				              return false;
				            } 
				      	}
				    });
			});
			
		}
  	</script>

  	<script type="text/javascript">
  		$(document).ready(function(){
  			$(".common_btn").on("click",function(){
  				let date = new Date().getDate();
				let year = new Date().getFullYear();
				let month = new Date().getMonth() + 1;
				if(month <= 10){
					month = "0"+month;
				}

				if(date <= 10){
					date = "0"+date;
				}
				let after_date_format = year+"-"+month+"-"+date;

  				let customer_id = $("#customer_id").val();
  				let badge_id = $("#exampleFormControlSelect1").val();
  				let comment = $("#comment").val();
  				let status = $("#exampleFormControlSelect2").val();
  				let days = $(".days").val();
  				let from_date = $("#from_date").val();
  				let to_date = $("#to_date").val();
  				let from_time = $("#from_time").val();
  				let to_time = $("#to_time").val();
  				let check_from_time = $("#from_time").attr("data-time");
  				let check_to_time = $("#to_time").attr("data-time");

  				let check_click_on = $(this).attr("id");

  				if(check_click_on == "add_new_badge_btn"){

	  				if(customer_id == ""){
	  					$("#alert_text").text("Please select user to assign new badge.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(badge_id == ""){
	  					$("#alert_text").text("Please select badge.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(comment == ""){
	  					$("#alert_text").text("Please enter comment.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(status == ""){
	  					$("#alert_text").text("Please select status.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(days == ""){
	  					$("#alert_text").text("Please select days.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(from_date == ""){
						$("#alert_text").text("Please select from date.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}

					if(to_date == ""){
						$("#alert_text").text("Please select to date.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}

					if(to_date < after_date_format){
						$("#alert_text").text("To date should be greater than or equal to today.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;
					}

					if(from_date > to_date){
						$("#alert_text").text("To date should be greater than or equal to from date.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;
					}

					if(from_time == ""){
						$("#alert_text").text("Please select from time.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}

					if(to_time == ""){
						$("#alert_text").text("Please select to time.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}

					if(check_from_time >= check_to_time){
						$("#alert_text").text("To time should be greater than from time.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}


					var data = {
			        	'_token': "{{csrf_token()}}",
			        	"action_type" : "add",
			        	"customer_id": customer_id,
			        	"badge_id": badge_id,
			        	"comment": comment,
			        	"status": status,
			        	"when": days,
			        	"from_date": from_date,
			        	"to_date": to_date,
			        	"from_time": from_time,
			        	"to_time": to_time
			    	};


					$.ajax({
				          url:"{{route('admin.addOrUpdateBadgeAssign')}}",
				          type:'POST',
				          data:data,
				          beforeSend:function(){
				          	$("#loaderModel").modal("show");
							$("#loaderModel").unbind("click");
				          },
				          success: function(res){
				          	console.log(res)
				          	setTimeout(function(){
				          		$("#loaderModel").modal("hide");
				          		

				          		if(res.action_type == "add"){

				          			$("#success_alert_text").text("Badge has been assigned successfully.");
				          		}else if (res.action_type == "update"){
				          			$("#success_alert_text").text("Badge assign status has been updated successfully.");

				          		}
				          		$("#successModel").modal("show");
				          		$("#successModel").unbind("click");
				          		let badge = res.assigned_badge;
				          		$("#customer_id").val(badge.user.customer_id);
				          		$("#badge_name").val(badge.badge_name);
				          		$("#comment").val(badge.comment);
				          		$("#exampleFormControlSelect2").val(badge.status);
				          		$("#exampleFormControlSelect1").val(badge.badge_id);

				          		let day_on = badge.when_day;

								let split_day_on = day_on.split(",");
							   	split_day_on = split_day_on.filter(function (el) {
							   		if(el == ""){
							   			return el != "";
							   		}else{
							   			return el != null;
							   		}
								});

				          		let mo_select;
								let tu_select;
								let we_select;
								let th_select;
								let fr_select;
								let sa_select;
								let su_select;

								if(split_day_on.indexOf("Monday") != -1){
									$(".checkbox_click[data-id='Monday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Monday");
									}else{
										$(".days").val($(".days").val() + ",Monday");
									}
								}

								if(split_day_on.indexOf("Tuesday") != -1){
									$(".checkbox_click[data-id='Tuesday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Tuesday");
									}else{
										$(".days").val($(".days").val() + ",Tuesday");
									}
								}

								if(split_day_on.indexOf("Wednesday") != -1){
									$(".checkbox_click[data-id='Wednesday']").prop("checked",true);
									if($(".days").val() == ""){
										$(".days").val("Wednesday");
									}else{
										$(".days").val($(".days").val() + ",Wednesday");
									}
								}

								if(split_day_on.indexOf("Thursday") != -1){
									$(".checkbox_click[data-id='Thursday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Thursday");
									}else{
										$(".days").val($(".days").val() + ",Thursday");
									}
								}

								if(split_day_on.indexOf("Friday") != -1){
									$(".checkbox_click[data-id='Friday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Friday");
									}else{
										$(".days").val($(".days").val() + ",Friday");
									}
								}

								if(split_day_on.indexOf("Saturday") != -1){
									$(".checkbox_click[data-id='Saturday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Saturday");
									}else{
										$(".days").val($(".days").val() + ",Saturday");
									}
								}

								if(split_day_on.indexOf("Sunday") != -1){
									$(".checkbox_click[data-id='Sunday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Sunday");
									}else{
										$(".days").val($(".days").val() + ",Sunday");
									}
								}

								$("#from_date").val(badge.from_date);
								$("#to_date").val(badge.to_date);
								$("#from_time").val(badge.from_time);
								$("#to_time").val(badge.to_time);
								$("#created_at").val(badge.created_at);
								$("#updated_at").val(badge.updated_at);
				          		localStorage.setItem("search_show_val","true");
				          		userSearch();
				          		routeForBadgeAssignUser();

				          	},500);
				          },
				          error: function(data, textStatus, xhr) {
				            if(data.status == 422){
			                  setTimeout(function(){
			                  	$("#loaderModel").modal("hide");
				                  	var result = data.responseJSON;
				                  	if(result['badge_not_found_err'] && result['badge_not_found_err'].length > 0){
					                  	$("#alert_text").text(result['badge_not_found_err']);
										$("#validationModel").modal("show");
										$("#validationModel").unbind("click");
				                 	}

				                 	if(result['badge_found_err'] && result['badge_found_err'].length > 0){
				                 		$("#alert_text").text(result['badge_found_err']);
										$("#validationModel").modal("show");
										$("#validationModel").unbind("click");
				                 	}
				                  return false;
			                  },500);
			                }
				      	}
				    });
  				}else if(check_click_on == "update_badge_btn"){

  					if(customer_id == ""){
	  					$("#alert_text").text("Please select user for update assigned badge.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(badge_id == ""){
	  					$("#alert_text").text("Please select badge.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(comment == ""){
	  					$("#alert_text").text("Please enter comment.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(status == ""){
	  					$("#alert_text").text("Please select status.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(days == ""){
	  					$("#alert_text").text("Please select days.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				if(from_date == ""){
						$("#alert_text").text("Please select from date.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}

					if(to_date == ""){
						$("#alert_text").text("Please select to date.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}

					if(to_date < after_date_format){
						$("#alert_text").text("To date should be greater than or equal to today.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;
					}

					if(from_date > to_date){
						$("#alert_text").text("To date should be greater than or equal to from date.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;
					}

					if(from_time == ""){
						$("#alert_text").text("Please select from time.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}

					if(to_time == ""){
						$("#alert_text").text("Please select to time.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}

					if(check_from_time >= check_to_time){
						$("#alert_text").text("To time should be greater than from time.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
						return false;

					}


					var data = {
			        	'_token': "{{csrf_token()}}",
			        	"action_type" : "update",
			        	"customer_id": customer_id,
			        	"badge_id": badge_id,
			        	"comment": comment,
			        	"status": status,
			        	"when": days,
			        	"from_date": from_date,
			        	"to_date": to_date,
			        	"from_time": from_time,
			        	"to_time": to_time
			    	};


					$.ajax({
				          url:"{{route('admin.addOrUpdateBadgeAssign')}}",
				          type:'POST',
				          data:data,
				          beforeSend:function(){
				          	$("#loaderModel").modal("show");
							$("#loaderModel").unbind("click");
				          },
				          success: function(res){
				          	console.log(res)
				          	setTimeout(function(){
				          		$("#loaderModel").modal("hide");
				          		

				          		if(res.action_type == "add"){

				          			$("#success_alert_text").text("Badge has been assigned successfully.");
				          		}else if (res.action_type == "update"){
				          			$("#success_alert_text").text("Badge assign status has been updated successfully.");

				          		}
				          		$("#successModel").modal("show");
				          		$("#successModel").unbind("click");
				          		let badge = res.assigned_badge;
				          		$("#customer_id").val(badge.user.customer_id);
				          		$("#badge_name").val(badge.badge_name);
				          		$("#comment").val(badge.comment);
				          		$("#exampleFormControlSelect2").val(badge.status);
				          		$("#exampleFormControlSelect1").val(badge.badge_id);

				          		let day_on = badge.when_day;

								let split_day_on = day_on.split(",");
							   	split_day_on = split_day_on.filter(function (el) {
							   		if(el == ""){
							   			return el != "";
							   		}else{
							   			return el != null;
							   		}
								});

				          		let mo_select;
								let tu_select;
								let we_select;
								let th_select;
								let fr_select;
								let sa_select;
								let su_select;

								if(split_day_on.indexOf("Monday") != -1){
									$(".checkbox_click[data-id='Monday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Monday");
									}else{
										$(".days").val($(".days").val() + ",Monday");
									}
								}

								if(split_day_on.indexOf("Tuesday") != -1){
									$(".checkbox_click[data-id='Tuesday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Tuesday");
									}else{
										$(".days").val($(".days").val() + ",Tuesday");
									}
								}

								if(split_day_on.indexOf("Wednesday") != -1){
									$(".checkbox_click[data-id='Wednesday']").prop("checked",true);
									if($(".days").val() == ""){
										$(".days").val("Wednesday");
									}else{
										$(".days").val($(".days").val() + ",Wednesday");
									}
								}

								if(split_day_on.indexOf("Thursday") != -1){
									$(".checkbox_click[data-id='Thursday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Thursday");
									}else{
										$(".days").val($(".days").val() + ",Thursday");
									}
								}

								if(split_day_on.indexOf("Friday") != -1){
									$(".checkbox_click[data-id='Friday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Friday");
									}else{
										$(".days").val($(".days").val() + ",Friday");
									}
								}

								if(split_day_on.indexOf("Saturday") != -1){
									$(".checkbox_click[data-id='Saturday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Saturday");
									}else{
										$(".days").val($(".days").val() + ",Saturday");
									}
								}

								if(split_day_on.indexOf("Sunday") != -1){
									$(".checkbox_click[data-id='Sunday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Sunday");
									}else{
										$(".days").val($(".days").val() + ",Sunday");
									}
								}

								$("#from_date").val(badge.from_date);
								$("#to_date").val(badge.to_date);
								$("#from_time").val(badge.from_time);
								$("#to_time").val(badge.to_time);
								$("#created_at").val(badge.created_at);
								$("#updated_at").val(badge.updated_at);
				          		localStorage.setItem("search_show_val","true");
				          		userSearch();
				          		routeForBadgeAssignUser();

				          	},500);
				          },
				          error: function(data, textStatus, xhr) {
				          	console.log(data)
				            if(data.status == 422){
			                  setTimeout(function(){
			                  	$("#loaderModel").modal("hide");
				                  	var result = data.responseJSON;
				                  	if(result['badge_not_found_err'] && result['badge_not_found_err'].length > 0){
					                  	$("#alert_text").text(result['badge_not_found_err']);
										$("#validationModel").modal("show");
										$("#validationModel").unbind("click");
				                 	}

				                 	if(result['badge_found_err'] && result['badge_found_err'].length > 0){
				                 		$("#alert_text").text(result['badge_found_err']);
										$("#validationModel").modal("show");
										$("#validationModel").unbind("click");
				                 	}
				                  return false;
			                  },500);
			                } 
				      	}
				    });

  				}else if(check_click_on == "delete_badge_btn"){

  					let customer_id = $("#customer_id").val();
  					let created_at = $("#created_at").val();
  					let updated_at = $("#updated_at").val();


  					if(customer_id == "" || created_at == "" || updated_at == ""){
	  					$("#alert_text").text("Please select the user first to delete.");
	  					$("#validationModel").modal("show");
	  					$("#validationModel").unbind("click");
	  					return false;
	  				}

	  				$("#confirmationModel").modal("show");
	  				$("#confirmationModel").unbind("click");
	  				$("#confirmation_alert_text").text("Are you sure, you want to delete this assign badge for selected user?");
  				}
  			});

  			$(".ok").on("click",function(){
  				$("#validationModel").modal("hide");
  				$("#successModel").modal("hide");
  			});

  			$(".confirm_no").on("click",function(){
  				$("#confirmationModel").modal("hide");
  			});

  			$(".confirm_ok").on("click",function(){
  				$("#confirmationModel").modal("hide");
  				let customer_id = $("#customer_id").val();
  				let badge_id = $("#exampleFormControlSelect1").val();

  					var data = {
			        	'_token': "{{csrf_token()}}",
			        	"customer_id" : customer_id,
			        	"badge_id" : badge_id
			    	};


					$.ajax({
				          url:"{{route('admin.deleteAssignBadge')}}",
				          type:'POST',
				          data:data,
				          beforeSend:function(){
				          	$("#loaderModel").modal("show");
							$("#loaderModel").unbind("click");
				          },
				          success: function(res){
				          	console.log(res)
				          	setTimeout(function(){
				          		$("#loaderModel").modal("hide");
				          		let badge = res;
				          		$("#customer_id").val(badge.user.customer_id);
				          		$("#badge_name").val(badge.badge_name);
				          		$("#comment").val(badge.comment);
				          		$("#exampleFormControlSelect2").val(badge.status);
				          		$("#exampleFormControlSelect1").val(badge.badge_id);

				          		let day_on = badge.when_day;

								let split_day_on = day_on.split(",");
							   	split_day_on = split_day_on.filter(function (el) {
							   		if(el == ""){
							   			return el != "";
							   		}else{
							   			return el != null;
							   		}
								});

				          		let mo_select;
								let tu_select;
								let we_select;
								let th_select;
								let fr_select;
								let sa_select;
								let su_select;

								if(split_day_on.indexOf("Monday") != -1){
									$(".checkbox_click[data-id='Monday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Monday");
									}else{
										$(".days").val($(".days").val() + ",Monday");
									}
								}

								if(split_day_on.indexOf("Tuesday") != -1){
									$(".checkbox_click[data-id='Tuesday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Tuesday");
									}else{
										$(".days").val($(".days").val() + ",Tuesday");
									}
								}

								if(split_day_on.indexOf("Wednesday") != -1){
									$(".checkbox_click[data-id='Wednesday']").prop("checked",true);
									if($(".days").val() == ""){
										$(".days").val("Wednesday");
									}else{
										$(".days").val($(".days").val() + ",Wednesday");
									}
								}

								if(split_day_on.indexOf("Thursday") != -1){
									$(".checkbox_click[data-id='Thursday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Thursday");
									}else{
										$(".days").val($(".days").val() + ",Thursday");
									}
								}

								if(split_day_on.indexOf("Friday") != -1){
									$(".checkbox_click[data-id='Friday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Friday");
									}else{
										$(".days").val($(".days").val() + ",Friday");
									}
								}

								if(split_day_on.indexOf("Saturday") != -1){
									$(".checkbox_click[data-id='Saturday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Saturday");
									}else{
										$(".days").val($(".days").val() + ",Saturday");
									}
								}

								if(split_day_on.indexOf("Sunday") != -1){
									$(".checkbox_click[data-id='Sunday']").prop("checked",true);

									if($(".days").val() == ""){
										$(".days").val("Sunday");
									}else{
										$(".days").val($(".days").val() + ",Sunday");
									}
								}

								$("#from_date").val(badge.from_date);
								$("#to_date").val(badge.to_date);
								$("#from_time").val(badge.from_time);
								$("#to_time").val(badge.to_time);
								$("#created_at").val(badge.created_at);
								$("#updated_at").val(badge.updated_at);

				       			$("#success_alert_text").text("Assign badge has been deleted successfully.");
				       			$("#successModel").modal("show");
				       			$("#successModel").unbind("click");
				       			localStorage.setItem("search_show_val","true");
				       			userSearch();
				       			routeForBadgeAssignUser();
				          	},500);
				          },
				          error: function(data, textStatus, xhr) {
				            if(data.status == 422){
				              setTimeout(function(){
				              	$("#loaderModel").modal("hide");
				                  	var result = data.responseJSON;
				                  	if(result['badge_not_found_err'] && result['badge_not_found_err'].length > 0){
					                  	$("#alert_text").text(result['badge_not_found_err']);
										$("#validationModel").modal("show");
										$("#validationModel").unbind("click");
				                 	}

				                  return false;
				              },500)
				            } 
				      	}
				    });
  			});



  			$(document).on("click",".checkbox_click",function(){
				if($(this).prop("checked") == true){
					let day_select = $(this).data("id").toString();
				   	let selected_days = $(".days").val();
				   	let split_selected_days = selected_days.split(",");
				   	split_selected_days = split_selected_days.filter(function (el) {
				   		if(el == ""){
				   			return el != "";
				   		}else{
				   			return el != null;
				   		}
					});
				   	
				   	if(split_selected_days.indexOf(day_select) == -1){
				   		if(split_selected_days.length > 0){
				   			$(".days").val($(".days").val() + "," + day_select);
				   		}else{
				   			$(".days").val(day_select);
				   		}
				   	}

				}else{
					let day_select = $(this).data("id").toString();
				   	let selected_days = $(".days").val();
				   	let split_selected_days = selected_days.split(",");
				   	split_selected_days = split_selected_days.filter(function (el) {
				   		if(el == ""){
				   			return el != "";
				   		}else{
				   			return el != null;
				   		}
					});

				   	
				   	if(split_selected_days.indexOf(day_select) != -1){
				   		split_selected_days.splice(split_selected_days.indexOf(day_select),1);

				   		if(split_selected_days.length > 0){
				   			split_selected_days = split_selected_days.toString();
				   			$(".days").val(split_selected_days);
				   		}else{
				   			$(".days").val("");
				   		}
			   		}

				}
			});

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


  $(document).on("keyup keydown",".form-control[type='search'][aria-controls='basic-datatables']",function(){
		localStorage.setItem("search_show_val","false");
	});


 //  	$(document).on("keypress",".form-control",function(e){
	//  	if($(this).val() == ''){
	//           if(!/[0-9a-zA-Z-]/.test(String.fromCharCode(e.which))){

	//             return false;
	//           }
 //      	}

	// });



    });
</script>


	
</body>
</html>