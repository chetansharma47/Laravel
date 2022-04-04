<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>End User Management (Customer)</title>
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
		#basic-datatables_wrapper,
		#basic-datatables2_wrapper,
		#basic-datatables3_wrapper,
		#basic-datatables4_wrapper {
			padding: 0 !important;
		}
		#basic-datatables_length,
		.dataTables_length {
			display: none;
		}
		#basic-datatables2_length,
		.dataTables2_length {
			display: none;
		}
		#basic-datatables4_length,
		.dataTables3_length {
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
		#basic-datatables_length {
			display: none;
		}
		#basic-datatables2_length {
			display: none;
		}
		#basic-datatables4_length {
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

		div.dataTables2_wrapper div.dataTables2_filter input {
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
		div.dataTables4_wrapper div.dataTables4_filter input {
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

		#basic-datatables4_wrapper{
		padding: 0 !important;
		}

		div#basic-datatables4_wrapper .col-sm-12{
		overflow: auto;
		display: inline-block;
		width: 100%;

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

		.app_checkboxes .checkmark {
		    top: -15px;
		}

		/*.modal-footer {
		    padding: 0.3rem;
		}*/

		table#basic-datatables {
		    overflow: auto;
		    width: 100%!important;
		    display: inline-block;
		}

		table#basic-datatables2 {
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

		td.white_space {
		    white-space: nowrap;
		}

		th.white_space {
		    white-space: nowrap;
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
					<input type="hidden" id="selected_id_input">
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div class="row w-100">
							<div class="col-md-5 col-sm-12">
								<ul class="navbar-nav">
									<li class="nav-item">
										<a class="nav-link hover_color" href="{{route('admin.adminTabs')}}" style="padding-right: 0">Admin Portal</a>
										<a class="nav-link" href="javascript:void(0);" style="padding-left: 0;"> <span style="color: #fff;">></span>End User Management (Customer)</a>
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
	<section class="mt-0">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="app_notification_bg" style="background-color: transparent; padding-bottom: 0;
    padding-left: 9px; padding-top: 2px;">
						<h4>Search Criteria</h4>
					</div>
				</div>
			</div>
			<input type="hidden" name="selected_checkboxes" id="selected_checkboxes" value="">
			<div class="row">
				<div class="col-md-12">
					<div class="d-flex">
						<div class="venue_inputs mb-3 px-2">
							<label>
								Joining Date - From
							</label>
							<input type="date" class="form-control form-control-user" placeholder="Joining Date - From" id="joined_from" value="" style="border-radius: 0px ;    padding: 8px 10px !important;" />
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Joining Date - To
							</label>
							<input type="date" class="form-control form-control-user" placeholder="Joining Date - To" id="joined_to" value="" style="border-radius: 0px ;    padding: 8px 10px !important;" />
						</div>
						<!-- <div class="venue_inputs mb-3 px-2">
							<label>
								Venue Selection
							</label>
							<select class="form-control form-group select_option" style="position: relative;border-radius: 0px;     padding: 9px 28px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Venue </option>
								@foreach($venues as $venue)
								<option value="{{$venue->id}}">{{$venue->venue_name}}</option>
								@endforeach()
							</select>
						</div> -->
						<div class="venue_inputs mb-3 px-2">
							<label>
								Gender
							</label>
							<select class="form-control form-group select_option" style="position: relative;border-radius: 0px; padding: 9px 28px 9px 12px !important;" id="gender">
								<option value="">Select Gender</option>
								<option value="">All</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Customer Status
							</label>
							<select class="form-control form-group select_option" style="position: relative;border-radius: 0px;    padding: 9px 0px 9px 12px !important;" id="status">
								<option value="">Select Customer Status</option>
								<option value="">All</option>
								<option value="Active">Active</option>
								<option value="Inactive">InActive</option>
							</select>
						</div>
						<!-- <div class="d-flex justify-content-between mt-4">
							<div>
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 16px;">
									Add New
								</a>
							</div>
							<div>
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="    font-size: 16px;">
									Update
								</a>
							</div>
						</div> -->
					</div>
					<div class="d-flex">
						<div class="venue_inputs mb-3 px-2" style="width: inherit !important;">
							<label>
								Customer Tier
							</label>

							<select class="form-control form-group select_option" style="position: relative;border-radius: 0px;     padding: 9px 28px 9px 12px !important;" id="tier">
								<option value="">Select Tier</option>
								@if(isset($tiers[0]))
									@foreach($tiers[0]['tierConditions'] as $condition)
									<option value="{{$condition->id}}">{{$condition->tier_name}}</option>
									@endforeach()
								@endif()
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2" style="width: inherit !important;">
							<label>
								Email ID
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Enter Email ID" id="email" onkeypress="return AvoidSpace(event)" value="" style="border-radius: 0px;    padding: 9px 14px 9px 12px !important;"/>
						</div>
						<div class="venue_inputs mb-3 px-2" style="width: inherit !important;">
							<label>
								Mobile Number
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Enter Mobile Number" id="mobile_number" value="" style="border-radius: 0px;    padding: 9px 14px 9px 12px !important;"/>
						</div>
					</div>
					<div class="d-flex px-2 mt-2">
						<div>
							<a href="javascript:void(0)"; id="search_btn" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Search
							</a>
						</div>
						<div>
							<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block download_users_details common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Download
							</a>
						</div>
						<!-- <div>
							<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block common_btn" id="blockUser" style="font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Block Users
							</a>
						</div>

						<div>
							<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block common_btn" id="unblock" style="font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Unblock Users
							</a>
						</div> -->

						<div>
							<a href="javascript:void(0);" id="activate_user" class="btn btn-primary btn-user btn-block common_btn" style="font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Activate User
							</a>
						</div>

						<div>
							<a href="javascript:void(0);" id="deactivate_user" class="btn btn-primary btn-user btn-block common_btn" style="font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Deactivate User
							</a>
						</div>

						<div>
							<a href="javascript:void(0)" id="update_btn" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Update
							</a>
						</div>
						<div>
							<a href="javascript:void(0);" id="reset_password_btn" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Reset Password
							</a>
						</div>
						<div>
							<a href="javascript:void(0);" class="btn btn-primary btn-user reset-selection-btn btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Reset Selection
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="venue_inputs mb-3 mt-4 px-2">
						<label style="font-size: 18px !important; font-weight: 400">
							Customer List
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mb-4" style="margin-top: -60px;">
					<div class="px-2">
						<table id="basic-datatables"  class="display table table-striped table-hover" style="padding: 0 !important" >
							<thead>
								<tr style="background-color: #193358;    color: #fff;">
									<th class="white_space">Sr. No.</th>
									<th class="white_space">Customer ID</th>
									<th class="white_space">Mobile No.</th>
									<th class="white_space">First Name</th>
									<th class="white_space">Last Name</th>
									<th class="white_space">Email ID</th>
									<th class="white_space">Nationality</th>
									<th class="white_space">DOB</th>
									<th class="white_space">Gender</th>
									<th class="white_space">Status</th>
									<th class="white_space">Joined On</th>
									<th class="white_space">Customer Tier</th>
									<th class="white_space">Wallet Cash</th>
									<th class="white_space">Customer Referral Code</th>
									<th class="white_space">Referred By</th>
									<th class="white_space">
										<div class="d-flex align-items-center">
											Select 
	                                        <input type="checkbox" data-id = "0" class="select_all_checkbox" key_type="checkbox" style="margin-left: 17px; margin-top: 2px;">
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

			<div class="row">
				<div class="col-md-12">
					<div class="app_notification_bg" style="background-color: transparent;     padding-bottom: 0;
    padding-left: 9px; padding-top: 7px;">
						<h4>Search Criteria</h4>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="d-flex">
						<div class="venue_inputs mb-3 px-2">
							<label>
								Transaction Date - From
							</label>
							<input type="date" class="form-control joined_from_date form-control-user" placeholder="Joining Date - From" value="" style="border-radius: 0px;  padding: 8px 10px !important;" />
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Transaction Date - To
							</label>
							<input type="date" class="form-control joined_to_date form-control-user" placeholder="Joining Date - To" value="" style="border-radius: 0px;  padding: 8px 10px !important;" />
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Venue Name
							</label>
							<select class="form-control form-group venue_name_wallet select_option" style="position: relative;border-radius: 0px; padding: 9px 28px 9px 12px !important; background-position: 96% 50%!important;" id="exampleFormControlSelect1">
								<option value="">Select Venue</option>
								@if(count($venues) > 0)
									@foreach($venues as $venu)
										<option value="{{ $venu->id }}">{{ $venu->venue_name }}</option>
									@endforeach
								@endif
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Transaction Verification
							</label>
							<select class="form-control txn_status_wallet form-group select_option" style="position: relative;border-radius: 0px; padding: 9px 36px 9px 12px !important; background-position: 96% 50%!important;" id="exampleFormControlSelect1">
								<option value="">Select Transaction Verification</option>
								<option value="verified">Verified</option>
								<option value="not_verified">Not Verified</option>
								<option value="micros_verified">Micros Verified</option>
								<option value="all">All</option>
							</select>
						</div>
						<!-- <div class="venue_inputs mb-3 px-2">
							<label>
								Redemption Verification
							</label>
							<select class="form-control form-group select_option" style="position: relative;border-radius: 0px; padding: 9px 36px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Redemption Verification</option>
								<option>Verified</option>
								<option>Not Verified</option>
								<option>All</option>
							</select>
						</div> -->
						<!-- <div class="d-flex justify-content-between mt-4">
							<div>
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 16px;">
									Add New
								</a>
							</div>
							<div>
								<a href="" class="btn btn-primary btn-user btn-block common_btn" style="    font-size: 16px;">
									Update
								</a>
							</div>
						</div> -->
					</div>
					<div class="d-flex">
						<div class="venue_inputs mb-3 px-2">
							<label>
								Offer Products
							</label>
							<select class="form-control offers_product_wallet form-group select_option" style="position: relative;border-radius: 0px; padding: 9px 28px 9px 12px !important; background-position: 96% 50%!important;" id="exampleFormControlSelect1">
								<option value="">Select Offer Products</option>
								@if(count($offers) > 0)
									@foreach($offers as $offer)
										<option value="{{ $offer->id }}">{{ $offer->offer_name }}</option>
									@endforeach
								@endif
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Customer Mobile No
							</label>
							<input type="text" class="form-control mobile_number_wallet form-control-user" placeholder="Customer Mobile No" value="" style="border-radius: 0px;padding: 9px 14px 9px 12px !important;"/>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Email ID
							</label>
							<input type="text" class="form-control email_wallet form-control-user" placeholder="Enter Email ID" value="" style="border-radius: 0px;padding: 9px 14px 9px 12px !important;"/>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
							Check No
							</label>
							<input type="text" class="form-control form-control-user invoice_number_wallet" placeholder="Check No" value="" style="border-radius: 0px;padding: 9px 14px 9px 12px !important;"/>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Venue User
							</label>
							<select class="form-control venu_username_wallet form-group select_option" style="position: relative;border-radius: 0px; padding: 9px 28px 9px 12px !important; background-position: 96% 50%!important;" id="exampleFormControlSelect1">
								<option value="">Select Venue User</option>

								@if(count($venue_users) > 0)
									@foreach($venue_users as $venue_user)
										<option value="{{ $venue_user->id }}">{{ $venue_user->username }}</option>
									@endforeach
								@endif
								
							</select>
						</div>
					</div>
					<div class="d-flex">
						<div class="venue_inputs mb-3 px-2 w-25">
							<label>
								Customer Name
							</label>
							<input type="text" class="form-control customer_name_wallet form-control-user" placeholder="Customer Name" value="" style="border-radius: 0px;padding: 9px 14px 9px 12px !important;"/>
						</div>
					</div>
					<div class="d-flex px-2" style="margin-top: 35px;">
						<div>
							<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block search_wallet_txn common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Search
							</a>
						</div>
						<div>
							<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block download_customer_wallet_transactions common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Download
							</a>
						</div>
						<div>
							<a href="javascript:void(0)" class="btn btn-primary btn-user btn-block reset_wallet_txn common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Reset Selection
							</a>
						</div>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="venue_inputs mb-4 mt-4 px-2">
						<label style="font-size: 18px !important; font-weight: 400">
							Customer Details Transactions
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mb-4" style="margin-top: -67px;">
					<div class="table-responsive px-2">
							<table id="basic-datatables4" class="display table table-striped table-hover" style="padding: 0">
								<thead>
									<tr style="background-color: #193358;    color: #fff;">
										<!-- <th>Customer ID</th>
										<th>Customer No.</th>
										<th>Check No</th>
										<th>Check Amount</th>
										<th>Check Amount POS</th>
										<th>Transaction Status</th>
										<th>Cash Back %</th>
										<th>Redeemed Wallet</th>
										<th>Redemption from Loyalty</th>
										<th>Restaurant Name</th>
										<th>Offer Products</th>
										<th>Date of Entry</th>
										<th>Updated On</th>
										<th>Updated By</th>
										<th>Restaurant Logged In User</th> -->
										<th style="min-width: 128px;">Customer ID</th>
										<th style="min-width: 128px;">Customer Name</th>
										<th style="min-width: 128px;">Customer No.</th>
										<th style="min-width: 128px;">Email ID</th>
										<th style="min-width: 100px;">Check No.</th>
										<th style="min-width: 128px;">Check Amount</th>
										<th style="min-width: 128px;">Check Amount POS</th>
										<th style="min-width: 128px;">Transaction Status</th>
										<th style="min-width: 128px;">Cash Back %</th>
										<th style="min-width: 128px;">Wallet Cash</th>
										<th style="min-width: 165px;">Redemption from Loyalty</th>
										<th style="min-width: 128px;">Restaurant Name</th>
										<th style="min-width: 128px;">Offer Products</th>
										<th style="min-width: 140px;">Date of Entry</th>
										<th style="min-width: 140px;">Updated On</th>
										<th style="min-width: 128px;">Updated By</th>
										<th style="min-width: 211px;">Restaurant Logged In User</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr>
										<td>382632873</td>
										<td>
											588727166
										</td>
										<td>SC1000003</td>
										<td></td>
										<td></td>
										<td>NotVerified</td>
										<td>1%</td>
										<td>100 AED</td>
										<td></td>
										<td></td>
										<td>NotVerified</td>
										<td>Salt & Caramel</td>
										<td></td>
										<td>12/06/2021 21:00</td>
										<td>12/06/2021 21:00</td>
										<td>Nadeer</td>
										<td>ABC</td>
									</tr> -->
								</tbody>
							</table>
						</div>
				</div>
			</div>
				<div class="row">
				<div class="col-md-12">
					<div class="d-flex align-items-center">
						<div class="d-flex align-items-baseline venue_inputs mb-3 mt-4 px-2">
							<label style="font-size: 18px !important; font-weight: 400; margin-right: 12px;">
								Selected Customer Wallet Transactions (Selection from above)
							</label>
							<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block selected_download_transactions common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0; z-index: 99;">
									Download
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mb-4" style="margin-top: -105px;">
					<div class="table-responsive px-2">
						<table id="basic-datatables2" class="display table table-striped table-hover" style="padding: 0">
							<thead>
								<tr style="background-color: #193358;    color: #fff;">
									<th>Sr. No.</th>
									<th style="min-width: 128px;">Customer ID</th>
									<th style="min-width: 128px;">Customer Name</th>
									<th style="min-width: 150px;">Customer Mobile No.</th>
									<th style="min-width: 128px;">Email ID</th>
									<th style="min-width: 128px;">Description</th>
									<th style="min-width: 128px;">Cashback Earned</th>
									<th style="min-width: 128px;">Redeemed Amount</th>
									<th style="min-width: 128px;">Wallet Cash</th>
									<th style="min-width: 200px;">Date and Time Added</th>
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


<script type="text/javascript">
    $(document).ready(function() {
 	
		localStorage.clear();
        $('#basic-datatables').dataTable({
             dom: "Bfrtip",
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "{{url('admin/all-data-availability')}}",
                "type": "POST",
                "data" : {
                	'_token': "{{csrf_token()}}",
                	'first_time' : 'true'
                },
                complete:function(){
		          tdClick();
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

					if($("#basic-datatables_wrapper").find(".wrap_all").length <= 0){

						$('#basic-datatables_info,#basic-datatables_paginate').wrapAll('<div class="wrap_all"></div>'); 
					}

		        }

            },
            createdRow: function( row, data, dataIndex ) {

		        $( row ).find('td:eq(0)').attr('data-id', data['id']).addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(1)').attr('data-id', data['id']).attr('key_type','customer_id').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(2)').attr('data-id', data['id']).attr('key_type','mobile_number').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(3)').attr('data-id', data['id']).attr('key_type','first_name').addClass('td_click');
		        $( row ).find('td:eq(4)').attr('data-id', data['id']).attr('key_type','last_name').addClass('td_click');
		        $( row ).find('td:eq(5)').attr('data-id', data['id']).attr('key_type','email').addClass('td_click');
		        $( row ).find('td:eq(6)').attr('data-id', data['id']).attr('key_type','nationality').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(7)').attr('data-id', data['id']).attr('key_type','dob').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(8)').attr('data-id', data['id']).attr('key_type','gender').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(9)').attr('data-id', data['id']).attr('key_type','is_active').addClass('td_click');
		        $( row ).find('td:eq(10)').attr('data-id', data['id']).attr('key_type','created_at').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(11)').attr('data-id', data['id']).attr('key_type','customer_tier').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(12)').attr('data-id', data['id']).attr('key_type','wallet_cash').addClass('td_click');
		        $( row ).find('td:eq(13)').attr('data-id', data['id']).attr('key_type','reference_code').addClass('td_click');
		        $( row ).find('td:eq(14)').attr('data-id', data['id']).attr('key_type','reference_by').addClass('td_click').addClass('white_space');
		    },
            "columns": [
             	{data: 'DT_RowIndex', name: 'DT_RowIndex'},
                {data: 'customer_id', name: 'customer_id'},
	            {data: 'country_code_with_phone_number', name: 'country_code_with_phone_number'},
	            {data: 'first_name', name: 'first_name'},
	            {data: 'last_name', name: 'last_name'},
	            {data: 'email', name: 'email'},
	            {data: 'nationality', name: 'nationality'},
	            {data: 'dob', name: 'dob'},
	            {data: 'gender', name: 'gender'},
	            {data: 'is_active', name: 'is_active'},
	            {data: 'join_date', name: 'join_date'},
	            {data: 'customer_tier', name: 'customer_tier'},
	            {data: 'wallet_cash', name: 'wallet_cash'},
	            {data: 'reference_code', name: 'reference_code'},
	            {data: 'reference_by', name: 'reference_by'},
	            {data: 'select', name: 'select', orderable: false, searchable: false},
	            // {data: 'action', name: 'action', orderable: false, searchable: false},
            ]
 
        });

        $("#search_btn").on("click",function(){

        	let joined_from = $("#joined_from").val();
        	let joined_to = $("#joined_to").val();

        	if(joined_from > joined_to){
        		$("#alert_text").text("Joining date-from should be less than or equal to Joining date-to.");
        		$("#validationModel").modal("show");
        		$("#validationModel").unbind("click");
        		return false;
        	}

        	localStorage.setItem("search_click","true");

        	getData();
        	// search_results_multiple();


			// $("#basic-datatables2").dataTable().fnDestroy();
			// $("#basic-datatables4").dataTable().fnDestroy();

			// selected_customer_wallet_transactions();
			// cross_verification_sales(null,null,null,null,null,null,null,null,null,null,selected_wallet_id);
        });

        $('.reset-selection-btn').click(function(){
        	localStorage.setItem("search_click","true");
        	getData();
        });

    } );
      </script>

      <script type="text/javascript">
      	function getData(){
      		let joined_from = $("#joined_from").val();
        	let joined_to = $("#joined_to").val();
        	let gender = $("#gender").val();
        	let status = $("#status").val();
        	let tier = $("#tier").val();
        	let email = $("#email").val();
        	let mobile_number = $("#mobile_number").val();
        	let search_txt = $(".form-control[type='search']").val();

        	$("#basic-datatables").dataTable().fnDestroy();
        	$('#basic-datatables').dataTable({
             dom: "Bfrtip",
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "{{url('admin/all-data-availability')}}",
                "type": "POST",
                "data" : {
                	'_token': "{{csrf_token()}}",
                	'joined_from' : joined_from,
                	'joined_to' : joined_to,
                	'gender' : gender,
                	'customer_status' : status,
                	'tier' : tier,
                	'email' : email,
                	'mobile_number' : mobile_number,
                	'search_txt' : search_txt,
                	'first_time' : 'false'
                },
                complete:function(data){
                	let result = data.responseJSON;
                	let results = result['data']
                	let arr = [];
                	for(var i=0; i < results.length; i++){
                		arr.push(results[i]['id']);
                	}
                	$('#selected_id_input').val(arr.join());                	
                	// search_results_multiple();
		          tdClick();

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

					if(localStorage.getItem('search_click') == "true"){

						$(".form-control[type='search']").val(search_txt);
						localStorage.setItem('search_click','false');
					}

					if($("#basic-datatables_wrapper").find(".wrap_all").length <= 0){

						$('#basic-datatables_info,#basic-datatables_paginate').wrapAll('<div class="wrap_all"></div>'); 
					}  
					
		        }
            },
            createdRow: function( row, data, dataIndex ) {

		       $( row ).find('td:eq(1)').attr('data-id', data['id']).attr('key_type','customer_id').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(2)').attr('data-id', data['id']).attr('key_type','mobile_number').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(3)').attr('data-id', data['id']).attr('key_type','first_name').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(4)').attr('data-id', data['id']).attr('key_type','last_name').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(5)').attr('data-id', data['id']).attr('key_type','email').addClass('td_click');
		        $( row ).find('td:eq(6)').attr('data-id', data['id']).attr('key_type','nationality').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(7)').attr('data-id', data['id']).attr('key_type','dob').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(8)').attr('data-id', data['id']).attr('key_type','gender').addClass('td_click');
		        $( row ).find('td:eq(9)').attr('data-id', data['id']).attr('key_type','is_active').addClass('td_click');
		        $( row ).find('td:eq(10)').attr('data-id', data['id']).attr('key_type','created_at').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(11)').attr('data-id', data['id']).attr('key_type','customer_tier').addClass('td_click').addClass('white_space');
		        $( row ).find('td:eq(12)').attr('data-id', data['id']).attr('key_type','wallet_cash').addClass('td_click');
		        $( row ).find('td:eq(13)').attr('data-id', data['id']).attr('key_type','reference_code').addClass('td_click');
		        $( row ).find('td:eq(14)').attr('data-id', data['id']).attr('key_type','reference_by').addClass('td_click').addClass('white_space');
		    },
            "columns": [
             	{data: 'DT_RowIndex', name: 'DT_RowIndex'},
                {data: 'customer_id', name: 'customer_id'},
	            {data: 'country_code_with_phone_number', name: 'country_code_with_phone_number'},
	            {data: 'first_name', name: 'first_name'},
	            {data: 'last_name', name: 'last_name'},
	            {data: 'email', name: 'email'},
	            {data: 'nationality', name: 'nationality'},
	            {data: 'dob', name: 'dob'},
	            {data: 'gender', name: 'gender'},
	            {data: 'is_active', name: 'is_active'},
	            {data: 'join_date', name: 'join_date'},
	            {data: 'customer_tier', name: 'customer_tier'},
	            {data: 'wallet_cash', name: 'wallet_cash'},
	            {data: 'reference_code', name: 'reference_code'},
	            {data: 'reference_by', name: 'reference_by'},
	            {data: 'select', name: 'select', orderable: false, searchable: false},
            ]
	 
	        });
			
      	}

      	function search_results_multiple(){
			let selected_wallet_id = $('#selected_id_input').val();
        	$("#basic-datatables2").dataTable().fnDestroy();
			$("#basic-datatables4").dataTable().fnDestroy();
        	selected_customer_wallet_transactions();
			cross_verification_sales(null,null,null,null,null,null,null,null,null,null,selected_wallet_id);
      	}
      </script>


	<script >
		$(document).ready(function() {
			
			$('#multi-filter-select').DataTable( {
				"pageLength": 5,
				initComplete: function () {
					this.api().columns().every( function () {
						var column = this;
						var select = $('<select class="form-control select_option"><option value=""></option></select>')
						.appendTo( $(column.footer()).empty() )
						.on( 'change', function () {
							var val = $.fn.dataTable.util.escapeRegex(
								$(this).val()
								);

							column
							.search( val ? '^'+val+'$' : '', true, false )
							.draw();
						} );

						column.data().unique().sort().each( function ( d, j ) {
							select.append( '<option value="'+d+'">'+d+'</option>' )
						} );
					} );
				}
			});

			// Add Row
			$('#add-row').DataTable({
				"pageLength": 5,
			});

			var action = '<td> <div class="form-button-action"> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task"> <i class="fa fa-edit"></i> </button> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove"> <i class="fa fa-times"></i> </button> </div> </td>';

			$('#addRowButton').click(function() {
				$('#add-row').dataTable().fnAddData([
					$("#addName").val(),
					$("#addPosition").val(),
					$("#addOffice").val(),
					action
					]);
				$('#addRowModal').modal('hide');

			});
		});
	</script>
	<script >

		function selected_customer_wallet_transactions(){

			let joined_from = $(".joined_from_date").val();
	    	let joined_to = $(".joined_to_date").val();
	    	let mobile_number = $(".mobile_number_wallet").val();
	    	let customer_name_wallet = $(".customer_name_wallet").val();
	    	let email = $(".email_wallet").val();

			let selected_wallet_id = $('#selected_id_input').val();
			$('#basic-datatables2').dataTable({
             dom: "Bfrtip",
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "{{url('admin/wallet-transactions')}}",
                "type": "POST",
                "data" : {
                	'_token': "{{csrf_token()}}",
                	'first_time' : 'true',
                	selected_wallet_id,
                	joined_from,
                	joined_to,
                	mobile_number,
                	customer_name_wallet,
                	email
                },
                complete:function(){

					if($("#basic-datatables2_wrapper").find(".wrap_all").length <= 0){

						$('#basic-datatables2_info,#basic-datatables2_paginate').wrapAll('<div class="wrap_all"></div>'); 
					}

		        }

            },
            createdRow: function( row, data, dataIndex ) {

		        $( row ).find('td:eq(1)').attr('data-id', data['id']).attr('key_type','customer_id');
		        $( row ).find('td:eq(2)').attr('data-id', data['id']).attr('key_type','mobile_number');
		        $( row ).find('td:eq(3)').attr('data-id', data['id']).attr('key_type','description');
		        $( row ).find('td:eq(4)').attr('data-id', data['id']).attr('key_type','cashback_earned');
		        $( row ).find('td:eq(5)').attr('data-id', data['id']).attr('key_type','redeemed_amount');
		        $( row ).find('td:eq(6)').attr('data-id', data['id']).attr('key_type','user_wallet_cash');
		        $( row ).find('td:eq(7)').attr('data-id', data['id']).attr('key_type','date_and_time');
		    },
            "columns": [
             	{data: 'DT_RowIndex', name: 'DT_RowIndex'},
                {data: 'customer_id', name: 'customer_id'},
                {data: 'full_name', name: 'full_name'},
	            {data: 'mobile_number', name: 'mobile_number'},
	            {data: 'email', name: 'email'},
	            {data: 'description', name: 'description'},
	            {data: 'cashback_earned', name: 'cashback_earned'},
	            {data: 'redeemed_amount', name: 'redeemed_amount'},
	            {data: 'user_wallet_cash', name: 'user_wallet_cash'},
	            {data: 'date_and_time', name: 'date_and_time'}
            ]
 
        });
			
}
// selected_customer_wallet_transactions();
			$('#multi-filter-select').DataTable( {
				"pageLength": 5,
				initComplete: function () {
					this.api().columns().every( function () {
						var column = this;
						var select = $('<select class="form-control"><option value=""></option></select>')
						.appendTo( $(column.footer()).empty() )
						.on( 'change', function () {
							var val = $.fn.dataTable.util.escapeRegex(
								$(this).val()
								);

							column
							.search( val ? '^'+val+'$' : '', true, false )
							.draw();
						} );

						column.data().unique().sort().each( function ( d, j ) {
							select.append( '<option value="'+d+'">'+d+'</option>' )
						} );
					} );
				}
			});

			// Add Row
			$('#add-row').DataTable({
				"pageLength": 5,
			});

			var action = '<td> <div class="form-button-action"> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task"> <i class="fa fa-edit"></i> </button> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove"> <i class="fa fa-times"></i> </button> </div> </td>';

			$('#addRowButton').click(function() {
				$('#add-row').dataTable().fnAddData([
					$("#addName").val(),
					$("#addPosition").val(),
					$("#addOffice").val(),
					action
					]);
				$('#addRowModal').modal('hide');

			});
		// }
	</script>
		<script >
		$(document).ready(function() {
			$('#basic-datatables3').DataTable({
			});

			$('#multi-filter-select').DataTable( {
				"pageLength": 5,
				initComplete: function () {
					this.api().columns().every( function () {
						var column = this;
						var select = $('<select class="form-control"><option value=""></option></select>')
						.appendTo( $(column.footer()).empty() )
						.on( 'change', function () {
							var val = $.fn.dataTable.util.escapeRegex(
								$(this).val()
								);

							column
							.search( val ? '^'+val+'$' : '', true, false )
							.draw();
						} );

						column.data().unique().sort().each( function ( d, j ) {
							select.append( '<option value="'+d+'">'+d+'</option>' )
						} );
					} );
				}
			});

			// Add Row
			$('#add-row').DataTable({
				"pageLength": 5,
			});

			var action = '<td> <div class="form-button-action"> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task"> <i class="fa fa-edit"></i> </button> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove"> <i class="fa fa-times"></i> </button> </div> </td>';

			$('#addRowButton').click(function() {
				$('#add-row').dataTable().fnAddData([
					$("#addName").val(),
					$("#addPosition").val(),
					$("#addOffice").val(),
					action
					]);
				$('#addRowModal').modal('hide');

			});
		});
	</script>

	<script type="text/javascript">
		function tdClick(){
			$(".td_click").on("dblclick",function(e){
				let data_id = $(this).data("id");
				var get_parent_class = $(this).closest('table').attr('id');
				$('#selected_id_input').val(data_id);

				let joined_from = $(".joined_from_date").val();
		    	let joined_to = $(".joined_to_date").val();
		    	let venue_id_wallet = $(".venue_name_wallet").val();
		    	let txn_status_wallet = $(".txn_status_wallet").val();
		    	let offers_product_wallet_id = $(".offers_product_wallet").val();
		    	let mobile_number = $(".mobile_number_wallet").val();
		    	let customer_name_wallet = $(".customer_name_wallet").val();
		    	let email = $(".email_wallet").val();
		    	let invoice_number_wallet = $(".invoice_number_wallet").val();
		    	let venu_username_id_wallet = $(".venu_username_wallet").val();
				$("#basic-datatables2").dataTable().fnDestroy();
				selected_customer_wallet_transactions();
				if(get_parent_class != 'basic-datatables4' ){
					$("#basic-datatables4").dataTable().fnDestroy();
				cross_verification_sales(joined_from,joined_to,venue_id_wallet,txn_status_wallet,offers_product_wallet_id,email,mobile_number,customer_name_wallet,invoice_number_wallet,venu_username_id_wallet,data_id);
				}

				let key_type = $(this).attr("key_type");
				let currentVal = $(this).text();
				if(key_type == "first_name" || key_type == "last_name" || key_type == "nationality" || key_type == "gender"){
					$(this).attr("contenteditable","true");
					if(key_type == "first_name" || key_type == "last_name"){

						$(this).attr("onkeypress", "return (this.innerText.length <= 29)");
					}
					$(this).attr("edited","true");

					if(key_type == "gender"){
						$(this).focusout(function(){

							if($(this).text().toLowerCase() == "male" || $(this).text().toLowerCase() == "female" || $(this).text().toLowerCase() == "other"){

								if($(this).text().toLowerCase() == "male"){
									$(this).text("Male");
								}else if($(this).text().toLowerCase() == "female"){
									$(this).text("Female");
								}else if($(this).text().toLowerCase() == "other"){
									$(this).text("Other");
								}
								
							}else{
								$("#alert_text").text("Gender should be Male, Female or Other.");
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
								$(this).text(currentVal);
								return false;
							}
						})
					}

					

				}

				 e.stopImmediatePropagation();
			});
			
		}


		$(document).ready(function(){
			$("#update_btn").on("click",function(){

				let arrayData = [];
				let empty_val = "false";
				
				$(".td_click[edited='true']").each(function(){
					let selected_data_id = $(this).data("id");
					let selected_key_name = $(this).attr("key_type");
					let text = $(this).text().trim(" ");
					let customer_id = $(".td_click[data-id='"+selected_data_id+"']").first().text();
					let objectData = {

					}
					objectData.selected_data_id = selected_data_id;
					objectData.selected_key_name = selected_key_name;
					objectData.text = text;
					objectData.customer_id = customer_id;

					arrayData.push(objectData);

					if(selected_key_name == "first_name"){

						if(text.length < 2){
							$("#alert_text").text("First name should be atleast 2 characters.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							empty_val = "true";
						}

						if(text == ""){
							$("#alert_text").text("Please enter first name.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							empty_val = "true";
						}
						
					}else if(selected_key_name == "last_name"){

						if(text.length < 2){
							$("#alert_text").text("Last name should be atleast 2 characters.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							empty_val = "true";
						}

						if(text == ""){
							$("#alert_text").text("Please enter last name.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							empty_val = "true";
						}

					}else if(selected_key_name == "nationality"){

						if(text.length < 2){
							$("#alert_text").text("Nationality should be atleast 2 characters.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							empty_val = "true";
						}

						if(text == ""){
							$("#alert_text").text("Please enter nationality.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							empty_val = "true";
						}

					}else if(selected_key_name == "gender"){
						if(text == ""){
							$("#alert_text").text("Please enter gender.");
							$("#validationModel").modal("show");
							$("#validationModel").unbind("click");
							empty_val = "true";
						}

					}
					
				});

				if(empty_val == "true"){
					$("#loaderModel").modal("hide");
					return false;
				}
				if(arrayData.length <= 0){
					$("#alert_text").text("Please edit at least one column of user.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}

				$("#loaderModel").modal("show");
				$("#loaderModel").unbind("click");
				var data = {
	            	'_token': "{{csrf_token()}}",
	            	"arrayData": arrayData
	            };

	          	$.ajax({
		              url:"{{route('admin.updateUserData')}}",
		              type:'POST',
		              data:data,
		              success: function(res){
		              	setTimeout(function(){
		              		console.log(res)
		              		$("#loaderModel").modal("hide");
		              		$("#success_alert_text").text("Users has been updated successfully.");
		              		$("#successModel").modal("show");
		              		localStorage.setItem("search_click","true");
		              		getData();
                			$("#selected_checkboxes").val("");
		              		$(".single_checkbox").prop("checked",false);
		              		$(".select_all_checkbox").prop("checked",false);
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


			$("#blockUser").on("click",function(){
				let ids = $("#selected_checkboxes").val();
				if(ids == "" || ids == null || ids == "undefiend"){
					$("#alert_text").text("Please select checkbox for block users.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
				
				var data = {
	            	'_token': "{{csrf_token()}}",
	            	"ids": ids
	            };

	          	$.ajax({
		              url:"{{route('admin.blockUsers')}}",
		              type:'POST',
		              data:data,
		              beforeSend:function(){
		              	$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
		              },
		              success: function(res){
		              	setTimeout(function(){
		              		console.log(res)
		              		$("#loaderModel").modal("hide");
		              		$("#success_alert_text").text("Users has been blocked successfully.");
		              		$("#successModel").modal("show");

		              		$("#selected_checkboxes").val("");
		              		$(".single_checkbox").prop("checked",false);
		              		$(".select_all_checkbox").prop("checked",false);

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

			$("#unblock").on("click",function(){
				let ids = $("#selected_checkboxes").val();
				if(ids == "" || ids == null || ids == "undefiend"){
					$("#alert_text").text("Please select checkbox for unblock users.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
				
				var data = {
	            	'_token': "{{csrf_token()}}",
	            	"ids": ids
	            };

	          	$.ajax({
		              url:"{{route('admin.unBlockUsers')}}",
		              type:'POST',
		              data:data,
		              beforeSend:function(){
		              	$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
		              },
		              success: function(res){
		              	setTimeout(function(){
		              		console.log(res)
		              		$("#loaderModel").modal("hide");
		              		$("#success_alert_text").text("Users has been un-blocked successfully.");
		              		$("#successModel").modal("show");

		              		$("#selected_checkboxes").val("");
		              		$(".single_checkbox").prop("checked",false);
		              		$(".select_all_checkbox").prop("checked",false);

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


			$("#activate_user").on("click",function(){
				let ids = $("#selected_checkboxes").val();
				if(ids == "" || ids == null || ids == "undefiend"){
					$("#alert_text").text("Please select checkbox for activate users.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
				
				var data = {
	            	'_token': "{{csrf_token()}}",
	            	"ids": ids
	            };

	          	$.ajax({
		              url:"{{route('admin.activateUsers')}}",
		              type:'POST',
		              data:data,
		              beforeSend:function(){
		              	$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
		              },
		              success: function(res){
		              	setTimeout(function(){
		              		console.log(res)

		              		let userids = res.ids;
		              		for(let p=0; userids.length > p; p++){
		              			$(".td_click[key_type='is_active'][data-id='"+userids[p]+"']").text("Active");
		              		}
		              		$("#loaderModel").modal("hide");
		              		$("#success_alert_text").text("Users has been activated successfully.");
		              		$("#successModel").modal("show");

		              		$("#selected_checkboxes").val("");
		              		$(".single_checkbox").prop("checked",false);
		              		$(".select_all_checkbox").prop("checked",false);

		              	},500);
		              },
		              error: function(data, textStatus, xhr) {
		                if(data.status == 422){
		                  setTimeout(function(){
			              	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
			              	if(result['user_action_err'] && result['user_action_err'].length > 0){
			             		$("#alert_text").text(result['user_action_err']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		             		}
							return false;
			              },500);
		                } 
	              	}
	            });

			});

			$("#deactivate_user").on("click",function(){
				let ids = $("#selected_checkboxes").val();
				if(ids == "" || ids == null || ids == "undefiend"){
					$("#alert_text").text("Please select checkbox for deactivate users.");
					$("#validationModel").modal("show");
					$("#validationModel").unbind("click");
					return false;
				}
				
				var data = {
	            	'_token': "{{csrf_token()}}",
	            	"ids": ids
	            };

	          	$.ajax({
		              url:"{{route('admin.deactivateUsers')}}",
		              type:'POST',
		              data:data,
		              beforeSend:function(){
		              	$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
		              },
		              success: function(res){
		              	setTimeout(function(){
		              		console.log(res)

		              		let userids = res.ids;
		              		for(let p=0; userids.length > p; p++){
		              			$(".td_click[key_type='is_active'][data-id='"+userids[p]+"']").text("Inactive");
		              		}

		              		$("#loaderModel").modal("hide");
		              		$("#success_alert_text").text("Users has been deactivated successfully.");
		              		$("#successModel").modal("show");

		              		$("#selected_checkboxes").val("");
		              		$(".single_checkbox").prop("checked",false);
		              		$(".select_all_checkbox").prop("checked",false);

		              	},500);
		              },
		              error: function(data, textStatus, xhr) {
		                if(data.status == 422){
		                  setTimeout(function(){
			              	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
			              	if(result['user_action_err'] && result['user_action_err'].length > 0){
			             		$("#alert_text").text(result['user_action_err']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		             		}
							return false;
			              },500);
			              
		                  // window.location.href = "";
		                  // return false;
		                } 
	              	}


	            });

			});



		});
	</script>


<script type="text/javascript">
    function AvoidSpace(event) {
        var k = event ? event.which : window.event.keyCode;
        if (k == 32) return false;
    }

    $(document).ready(function(){
    	$(document).on("keypress",".form-control",function(e){
	      if($(this).val() == ''){
	          if(!/[0-9a-zA-Z-~!@#$%^&*()_+{}:"<>,.;'/"]/.test(String.fromCharCode(e.which)))
	            return false;
	      }
		});
    });



    $(document).ready(function(){
	 //    $(document).on('paste',".form-control",function (event) {
	 //    	if(!$(this).attr("aria-controls","basic-datatables") || !$(this).attr("aria-controls","basic-datatables2") || !$(this).attr("aria-controls","basic-datatables4")){
	    		
		// 	  	if (event.originalEvent.clipboardData.getData('Text').match(/[^\d]/)) {
		// 	    	event.preventDefault();
		// 	  	}
	 //    	}
		// });

		$(document).on('paste', '.td_click',function (event) {
		  	if (event.originalEvent.clipboardData.getData('Text').match(/[^\d]/)) {
		    	event.preventDefault();
		  	}
		});

    	$(document).on("keypress",".td_click",function(e){
	      if($(this).text() == ''){
	          if(!/[0-9a-zA-Z-~!@#$%^&*()_+{}:"<>,.;'/"]/.test(String.fromCharCode(e.which)))
	            return false;
	      }
		});
    });

</script>

<script>

	$('.search_wallet_txn').click(function(){
		let joined_from = $(".joined_from_date").val();
    	let joined_to = $(".joined_to_date").val();
    	let venue_id_wallet = $(".venue_name_wallet").val();
    	let txn_status_wallet = $(".txn_status_wallet").val();
    	let offers_product_wallet_id = $(".offers_product_wallet").val();
    	let mobile_number = $(".mobile_number_wallet").val();
    	let customer_name_wallet = $(".customer_name_wallet").val();
    	let email = $(".email_wallet").val();
    	let invoice_number_wallet = $(".invoice_number_wallet").val();
    	let venu_username_id_wallet = $(".venu_username_wallet").val();

    	if(joined_from > joined_to){
			$("#alert_text").text("Transaction from date should be greater than transaction to date");
			$("#validationModel").modal("show");
			$("#validationModel").unbind("click");
			return false;
		}
    	cross_verification_sales(joined_from,joined_to,venue_id_wallet,txn_status_wallet,offers_product_wallet_id,email,mobile_number,customer_name_wallet,invoice_number_wallet,venu_username_id_wallet,null,null);
    	$("#basic-datatables2").dataTable().fnDestroy();
    	selected_customer_wallet_transactions();
	});

	$('.reset_wallet_txn').click(function(){
		$(".joined_from_date").val('');
    	$(".joined_to_date").val('');
    	$(".venue_name_wallet").val('');
    	$(".txn_status_wallet").val('');
    	$(".offers_product_wallet").val('');
    	$(".mobile_number_wallet").val('');
    	$(".customer_name_wallet").val('');
    	$(".email_wallet").val('');
    	$(".invoice_number_wallet").val('');
    	$(".venu_username_wallet").val('');
    	cross_verification_sales();
	});
	
	function cross_verification_sales(joined_from="",joined_to="",venue_id_wallet="",txn_status_wallet="",offers_product_wallet_id="",email="",mobile_number="",customer_name_wallet="",invoice_number_wallet="",venu_username_id_wallet="",select_user_id="",get_parent_class="",first_time=""){

    		$("#basic-datatables4").dataTable().fnDestroy();
			let table = $("#basic-datatables4").DataTable({
				processing:true,
				serverSide:true,
				retrieve: true,
				paging: true,
				searching:true,
				pageLength:10,
				ajax:{
					url:"{{ route('admin.EndUserCustomerTransactions') }}",
					type:"POST",
					data:{'_token':'{{csrf_token()}}',joined_from,joined_to,venue_id_wallet,txn_status_wallet,offers_product_wallet_id,email,mobile_number,customer_name_wallet,invoice_number_wallet,venu_username_id_wallet,select_user_id,get_parent_class,'first_time':first_time},
					complete:function(data){
						let result = data.responseJSON;
	                	let results = result['data']
	                	let arr = [];
	                	for(var i=0; i < results.length; i++){
	                		arr.push(results[i]['user_id']);
	                	}
	                	$('#selected_id_input').val(arr.join());
	                	// search_results_multiple();  
						tdClick();
						$("#basic-datatables2").dataTable().fnDestroy();
						selected_customer_wallet_transactions();
					},
				},
				createdRow: function( row, data, dataIndex ) {

			       $( row ).find('td:eq(1)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(2)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(3)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(4)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(5)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(6)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(7)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(8)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(9)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(10)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(11)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(12)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(13)').attr('data-id', data['user_id']).addClass('td_click');
			        $( row ).find('td:eq(14)').attr('data-id', data['user_id']).addClass('td_click');
			    },
				columns:[
					{data:'customer_id', name:'customer_id'},
					{data:'full_name', name:'full_name'},
					{data:'mobile_number', name:'mobile_number'},
					{data:'email', name:'email'},
					{data:'invoice_number', name:'invoice_number'},
					{data:'total_bill_amount', name:'total_bill_amount'},
					{data:'check_amount_pos', name:'check_amount_pos'},
					{data:'txn_status', name:'txn_status', orderable: false},
					{data:'cashback_percentage', name:'cashback_percentage'},
					{data:'user_wallet_cash', name:'user_wallet_cash'},
					{data:'redeemed_amount', name:'redeemed_amount'},
					{data:'venue_name', name:'venue_name'},
					{data:'offer_name', name:'offer_name', orderable: false,  searchable: false},
					{data:'date_and_time', name:'date_and_time'},
					{data:'updated_at', name:'updated_at'},
					{data:'updated_by', name:'updated_by'},
					{data:'username', name:'username'},
				]
			
			});
		}

		// cross_verification_sales();
		cross_verification_sales(null,null,null,null,null,null,null,null,null,null,null,null,'true');

		$('.email_wallet, .mobile_number_wallet, .invoice_number_wallet').on('keydown',function(e){
			if(e.which===32){
				return false;
			}
		});

		$('.mobile_number_wallet').on('input',function(e){
			return process(this);
		});

		function process(input){
		  let value = input.value;
		  let numbers = value.replace(/[^0-9]/g, "");
		  input.value = numbers;
		}

		$('.download_customer_wallet_transactions').click(function(){
			let joined_from = $(".joined_from_date").val();
	    	let joined_to = $(".joined_to_date").val();
	    	let venue_id_wallet = $(".venue_name_wallet").val();
	    	let txn_status_wallet = $(".txn_status_wallet").val();
	    	let offers_product_wallet_id = $(".offers_product_wallet").val();
	    	let mobile_number = $(".mobile_number_wallet").val();
	    	let customer_name_wallet = $(".customer_name_wallet").val();
	    	let email = $(".email_wallet").val();
	    	let invoice_number_wallet = $(".invoice_number_wallet").val();
	    	let venu_username_id_wallet = $(".venu_username_wallet").val();
			let search_txt = $(".form-control[type='search'][aria-controls='basic-datatables4']").val();
			let selected_user_id = $('#selected_id_input').val();

			if(selected_user_id == ''){
				$("#alert_text").text("Please select or search at least one customer from customer list.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

	    	if(joined_from > joined_to){
				$("#alert_text").text("Transaction from date should be greater than transaction to date");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			
			var data_value = {joined_from,joined_to,venue_id_wallet,txn_status_wallet,offers_product_wallet_id,email,invoice_number_wallet,venu_username_id_wallet,customer_name_wallet,mobile_number,search_txt,selected_user_id,'_token':'{{csrf_token()}}'}

			$.ajax({
				url:"{{ route('admin.ExcelDownloadCustomerTransactions') }}",
				type:"POST",
				data:data_value,
				data_type:'JSON',
				success:function(data){
					if(data.ids_data.length > 0){
						let hit_url = "{{url('admin/download-wallet-transactions-after-criteria-match')}}" + "/" + btoa(data.ids_data.toString());
						window.open(hit_url);
					}else{
						$("#alert_text").text("Customer transactions details not match with selected criteria.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
					}
				}
			})
		});



		$('.selected_download_transactions').click(function(){
			let selected_user = $('#selected_id_input').val();
			let search_txt = $(".form-control[type='search'][aria-controls='basic-datatables2']").val();
			if(selected_user == ''){
				$("#alert_text").text("Please select at least one customer from customer list.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}
			var data_value = {selected_user,search_txt,'_token':'{{csrf_token()}}'}
			$.ajax({
				url:"{{ route('admin.downloadWalletTransactions') }}",
				type:"POST",
				data:data_value,
				data_type:'JSON',
				success:function(data){
					if(data.ids_data.length > 0){
						let hit_url = "{{url('admin/download-wallet-transactions-after-selected-user')}}" + "/" + btoa(data.ids_data.toString());
						window.open(hit_url);
					}else{
						$("#alert_text").text("Selected Customer wallet transactions not match with criteria.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
					}
				}
			})
		});

		$('.download_users_details').click(function(){
			let joined_from = $("#joined_from").val();
        	let joined_to = $("#joined_to").val();
        	let gender = $("#gender").val();
        	let status = $("#status").val();
        	let tier = $("#tier").val();
        	let email = $("#email").val();
        	let mobile_number = $("#mobile_number").val();
        	let search_txt = $(".form-control[type='search'][aria-controls='basic-datatables']").val();

        	var data_value = {joined_from,joined_to,gender,status,tier,email,mobile_number,search_txt,'_token':'{{csrf_token()}}'}

        	$.ajax({
				url:"{{ route('admin.downloadUsers') }}",
				type:"POST",
				data:data_value,
				data_type:'JSON',
				success:function(data){
					console.log(data);
					if(data.ids_data.length > 0){
						let hit_url = "{{url('admin/download-user-after-criteria')}}" + "/" + btoa(data.ids_data.toString());
						window.open(hit_url);
					}else{
						$("#alert_text").text("Users details not match with criteria.");
						$("#validationModel").modal("show");
						$("#validationModel").unbind("click");
					}
				}
			})
		});

		$(document).on("keyup",".customer_name_wallet",function(){
	        if($.trim($(this).val()).length == 0){
	           $(this).val("");
	        }else{
	          $(this).val($(this).val().trimLeft(""));
	        }
      });

		$('#reset_password_btn').click(function(){
			let ids = $("#selected_checkboxes").val();
			if(ids == "" || ids == null || ids == "undefiend"){
				$("#alert_text").text("Please select checkbox for send reset password link to users.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			var data = {
	            	'_token': "{{csrf_token()}}",
	            	"ids": ids
	            };

	          	$.ajax({
		              url:"{{route('admin.resetPasswordSendLink')}}",
		              type:'POST',
		              data:data,
		              beforeSend:function(){
		              	$("#loaderModel").modal("show");
						$("#loaderModel").unbind("click");
		              },
		              success: function(res){
		              	setTimeout(function(){

		              		$("#loaderModel").modal("hide");
		              		$("#success_alert_text").text(res.message);
		              		$("#successModel").modal("show");

		              		$("#selected_checkboxes").val("");
		              		$(".single_checkbox").prop("checked",false);
		              		$(".select_all_checkbox").prop("checked",false);

		              	},500);
		              },
		              error: function(data, textStatus, xhr) {
		                if(data.status == 422){
		                  setTimeout(function(){
			              	$("#loaderModel").modal("hide");
		                  	var result = data.responseJSON;
			              	if(result['user_action_err'] && result['user_action_err'].length > 0){
			             		$("#alert_text").text(result['user_action_err']);
								$("#validationModel").modal("show");
								$("#validationModel").unbind("click");
		             		}
							return false;
			              },500);
			              
		                  // window.location.href = "";
		                  // return false;
		                } 
	              	}


	            });
		});

</script>
<script>

	$(document).ready(function(){
		$('input[type="Date"]').on('change',function(){
			$(this).blur();
		});
	});
	

</script>


</body>
</html>