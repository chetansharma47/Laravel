<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Admin Login Management</title>
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
		#basic-datatables3_wrapper {
			padding: 0 !important;
		}
		#basic-datatables_length,
		.dataTables_length {
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>  Admin Login Users</a>
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
										<a class="nav-link" href="{{route('admin.login')}}" style="color: #FFDA7A;">
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
			<div class="row">
				<div class="col-md-12">
					<div class="d-flex">
						<div class="venue_inputs mb-3 px-2">
							<label>
								Joining Date - From
							</label>
							<input type="date" class="form-control form-control-user" placeholder="Joining Date - From" value="" style="border-radius: 0px ;    padding: 8px 10px !important;" />
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Joining Date - To
							</label>
							<input type="date" class="form-control form-control-user" placeholder="Joining Date - To" value="" style="border-radius: 0px ;    padding: 8px 10px !important;" />
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Venue Selection
							</label>
							<select class="form-control form-group" style="position: relative;border-radius: 0px;     padding: 9px 28px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Venue </option>
								<option>All</option>
								<option>India</option>
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Gender
							</label>
							<select class="form-control form-group" style="position: relative;border-radius: 0px;     padding: 9px 28px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Gender</option>
								<option>All</option>
								<option>Male</option>
								<option>Female</option>
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Customer Status
							</label>
							<select class="form-control form-group" style="position: relative;border-radius: 0px;    padding: 9px 28px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Customer Status</option>
								<option>Active</option>
								<option>InActive</option>
								<option>All</option>
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
							<select class="form-control form-group" style="position: relative;border-radius: 0px;     padding: 9px 28px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Tier</option>
								<option>Gold</option>
								<option>Silver</option>
								<option>Diamond</option>
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2" style="width: inherit !important;">
							<label>
								Email ID
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Email Id" value="Nadeer@capitalmotion.com" style="border-radius: 0px;    padding: 9px 14px 9px 12px !important;"/>
						</div>
						<div class="venue_inputs mb-3 px-2" style="width: inherit !important;">
							<label>
								Mobile Number
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Mobile Number" value="0588727169" style="border-radius: 0px;    padding: 9px 14px 9px 12px !important;"/>
						</div>
					</div>
					<div class="d-flex px-2 mt-2">
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Search
							</a>
						</div>
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Download
							</a>
						</div>
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Block User
							</a>
						</div>
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Activate User
							</a>
						</div>
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Update
							</a>
						</div>
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
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
					<div class="table-responsive px-2">
						<table id="basic-datatables"  class="display table table-striped table-hover" style="padding: 0 !important" >
							<thead>
								<tr style="background-color: #193358;    color: #fff;">
									<th>Customer ID</th>
									<th>Mobile No.</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Email ID</th>
									<th>Password</th>
									<th>Nationality</th>
									<th>DOB</th>
									<th>Gender</th>
									<th>Status</th>
									<th>Joined On</th>
									<th>Customer Tier</th>
									<th>Wallet Cash</th>
									<th>Status</th>
									<th>Customer Referral Code</th>
									<th>Referred By</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Needar</td>
									<td>Abrian</td>
									<td>Nadeer@capitalmotion.com</td>
									<td>*************</td>
									<td>USA</td>
									<td>21-june-2021</td>
									<td>Male</td>
									<td>Actve</td>
									<td>22-July-2021</td>
									<td>Dummy</td>
									<td>40 AED</td>
									<td>Actve</td>
									<td>558897462</td>
									<td>Dummy</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Needar</td>
									<td>Abrian</td>
									<td>Nadeer@capitalmotion.com</td>
									<td>*************</td>
									<td>USA</td>
									<td>21-june-2021</td>
									<td>Male</td>
									<td>Unactve</td>
									<td>22-July-2021</td>
									<td>Dummy</td>
									<td>40 AED</td>
									<td>Actve</td>
									<td>558897462</td>
									<td>Dummy</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Needar</td>
									<td>Abrian</td>
									<td>Nadeer@capitalmotion.com</td>
									<td>*************</td>
									<td>USA</td>
									<td>21-june-2021</td>
									<td>Male</td>
									<td>Actve</td>
									<td>22-July-2021</td>
									<td>Dummy</td>
									<td>40 AED</td>
									<td>Actve</td>
									<td>558897462</td>
									<td>Dummy</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Needar</td>
									<td>Abrian</td>
									<td>Nadeer@capitalmotion.com</td>
									<td>*************</td>
									<td>USA</td>
									<td>21-june-2021</td>
									<td>Male</td>
									<td>Unactve</td>
									<td>22-July-2021</td>
									<td>Dummy</td>
									<td>40 AED</td>
									<td>Actve</td>
									<td>558897462</td>
									<td>Dummy</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Needar</td>
									<td>Abrian</td>
									<td>Nadeer@capitalmotion.com</td>
									<td>*************</td>
									<td>USA</td>
									<td>21-june-2021</td>
									<td>Male</td>
									<td>Actve</td>
									<td>22-July-2021</td>
									<td>Dummy</td>
									<td>40 AED</td>
									<td>Actve</td>
									<td>558897462</td>
									<td>Dummy</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Needar</td>
									<td>Abrian</td>
									<td>Nadeer@capitalmotion.com</td>
									<td>*************</td>
									<td>USA</td>
									<td>21-june-2021</td>
									<td>Male</td>
									<td>Unactve</td>
									<td>22-July-2021</td>
									<td>Dummy</td>
									<td>40 AED</td>
									<td>Actve</td>
									<td>558897462</td>
									<td>Dummy</td>
								</tr>
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
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
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
									<th>Customer ID</th>
									<th>Customer Mobile No.</th>
									<th>Description</th>
									<th>Cashback Earned</th>
									<th>Wallet Cash</th>
									<th>Date Added</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Cash Back Earnings</td>
									<td>20 AED</td>
									<td>20 AED</td>
									<td>13/07/2021 21:00</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Cash Back Earnings</td>
									<td>20 AED</td>
									<td>20 AED</td>
									<td>13/07/2021 21:00</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Cash Back Earnings</td>
									<td>20 AED</td>
									<td>20 AED</td>
									<td>13/07/2021 21:00</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Cash Back Earnings</td>
									<td>20 AED</td>
									<td>20 AED</td>
									<td>13/07/2021 21:00</td>
								</tr>
								<tr>
									<td>558897462</td>
									<td>58958462256</td>
									<td>Cash Back Earnings</td>
									<td>20 AED</td>
									<td>20 AED</td>
									<td>13/07/2021 21:00</td>
								</tr>
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
								Joining Date - From
							</label>
							<input type="date" class="form-control form-control-user" placeholder="Joining Date - From" value="" style="border-radius: 0px;  padding: 8px 10px !important;" />
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Joining Date - To
							</label>
							<input type="date" class="form-control form-control-user" placeholder="Joining Date - To" value="" style="border-radius: 0px;  padding: 8px 10px !important;" />
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Venue Name
							</label>
							<select class="form-control form-group" style="position: relative;border-radius: 0px; padding: 9px 28px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Venue</option>
								<option>Caramel</option>
								<option>Salt</option>
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Transaction Verification
							</label>
							<select class="form-control form-group" style="position: relative;border-radius: 0px; padding: 9px 36px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Transaction Verification</option>
								<option>Verified</option>
								<option>Not Verified</option>
								<option>All</option>
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Redemption Verification
							</label>
							<select class="form-control form-group" style="position: relative;border-radius: 0px; padding: 9px 36px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Redemption Verification</option>
								<option>Verified</option>
								<option>Not Verified</option>
								<option>All</option>
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
						<div class="venue_inputs mb-3 px-2">
							<label>
								Offer Products
							</label>
							<select class="form-control form-group" style="position: relative;border-radius: 0px; padding: 9px 28px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Offer Products</option><option>Birthday Offer - Free Coffee</option>
								<option>Birthday Offer - Free Coffee</option>
								<option>Birthday Offer - Free Coffee</option>
							</select>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Customer Mobile No
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Customer Mobile No" value="0588727169" style="border-radius: 0px;padding: 9px 14px 9px 12px !important;"/>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Email ID
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Email Id" value="Nadeer@capitalmotion.com" style="border-radius: 0px;padding: 9px 14px 9px 12px !important;"/>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
							Check No
							</label>
							<input type="text" class="form-control form-control-user" placeholder="Check No" value="SC100001" style="border-radius: 0px;padding: 9px 14px 9px 12px !important;"/>
						</div>
						<div class="venue_inputs mb-3 px-2">
							<label>
								Venue User
							</label>
							<select class="form-control form-group" style="position: relative;border-radius: 0px; padding: 9px 28px 9px 12px !important;" id="exampleFormControlSelect1">
								<option>Select Venue User</option>
								<option>All</option>
								<option>Select</option>
							</select>
						</div>
					</div>
					<div class="d-flex px-2" style="margin-top: 35px;">
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Search
							</a>
						</div>
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
								Download
							</a>
						</div>
						<div>
							<a href="" class="btn btn-primary btn-user btn-block common_btn" style="     font-size: 18px; width: 154px; margin-right: 15px; text-transform: none; padding: 8px 0;">
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
							<table id="basic-datatables3" class="display table table-striped table-hover" style="padding: 0">
								<thead>
									<tr style="background-color: #193358;    color: #fff;">
										<th>Customer ID</th>
										<th>Customer No.</th>
										<th>Check No</th>
										<th>Check Amount</th>
										<th>Check Amount POS</th>
										<th>Transaction Status</th>
										<th>Cash Back %</th>
										<th>Redeemed Wallet</th>
										<th>Redemption from Loyalty</th>
										<th>Redeemed from (POS)</th>
										<th>Redemption Status</th>
										<th>Restaurant Name</th>
										<th>Offer Products</th>
										<th>Date of Entry</th>
										<th>Updated On</th>
										<th>Updated By</th>
										<th>Restaurant Logged In User</th>
									</tr>
								</thead>
								<tbody>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
									<tr>
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
									</tr>
								</tbody>
							</table>
						</div>
				</div>
			</div>
		</div>
	</section>
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
	<script src="{{url('public/admin/assets/js/demo.js')}}"></script>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: ""
	},
	axisX:{
		valueFormatString: "DD MMM",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "",
		valueFormatString: "2k",
		crosshair: {
			enabled: true,
			snapToDataPoint: true,
			labelFormatter: function(e) {
				return "$" + CanvasJS.formatNumber(e.value, "2k");
			}
		}
	},
	data: [{
		type: "area",
		xValueFormatString: "DD MMM",
		yValueFormatString: "2k",
		dataPoints: [
			{ x: new Date(2016, 07, 01), y: 76.727997 },
			{ x: new Date(2016, 07, 02), y: 75.459999 },
			{ x: new Date(2016, 07, 03), y: 76.011002 },
			{ x: new Date(2016, 07, 04), y: 75.751999 }
		]
	}]
});
chart.render();


var chart = new CanvasJS.Chart("chartContainer1", {
	animationEnabled: true,
	title:{
		text: ""
	},
	axisX:{
		valueFormatString: "DD MMM",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "",
		valueFormatString: "2k",
		crosshair: {
			enabled: true,
			snapToDataPoint: true,
			labelFormatter: function(e) {
				return "$" + CanvasJS.formatNumber(e.value, "2k");
			}
		}
	},
	data: [{
		type: "area",
		xValueFormatString: "DD MMM",
		yValueFormatString: "2k",
		dataPoints: [
			{ x: new Date(2016, 07, 01), y: 76.727997 },
			{ x: new Date(2016, 07, 02), y: 75.459999 },
			{ x: new Date(2016, 07, 03), y: 76.011002 },
			{ x: new Date(2016, 07, 04), y: 75.751999 }
		]
	}]
});
chart.render();

var chart = new CanvasJS.Chart("chartContainer2", {
	animationEnabled: true,
	title:{
		text: ""
	},
	axisX:{
		valueFormatString: "DD MMM",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "",
		valueFormatString: "2k",
		crosshair: {
			enabled: true,
			snapToDataPoint: true,
			labelFormatter: function(e) {
				return "$" + CanvasJS.formatNumber(e.value, "2k");
			}
		}
	},
	data: [{
		type: "area",
		xValueFormatString: "DD MMM",
		yValueFormatString: "2k",
		dataPoints: [
			{ x: new Date(2016, 07, 01), y: 76.727997 },
			{ x: new Date(2016, 07, 02), y: 75.459999 },
			{ x: new Date(2016, 07, 03), y: 76.011002 },
			{ x: new Date(2016, 07, 04), y: 75.751999 }
		]
	}]
});
chart.render();

var chart = new CanvasJS.Chart("chartContainer3", {
	animationEnabled: true,
	title:{
		text: ""
	},
	axisX:{
		valueFormatString: "DD MMM",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "",
		valueFormatString: "2k",
		crosshair: {
			enabled: true,
			snapToDataPoint: true,
			labelFormatter: function(e) {
				return "$" + CanvasJS.formatNumber(e.value, "2k");
			}
		}
	},
	data: [{
		type: "area",
		xValueFormatString: "DD MMM",
		yValueFormatString: "2k",
		dataPoints: [
			{ x: new Date(2016, 07, 01), y: 76.727997 },
			{ x: new Date(2016, 07, 02), y: 75.459999 },
			{ x: new Date(2016, 07, 03), y: 76.011002 },
			{ x: new Date(2016, 07, 04), y: 75.751999 }
		]
	}]
});
chart.render();

var chart = new CanvasJS.Chart("chartContainer4", {
	animationEnabled: true,
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "Products Offer Redemption"
	},
	axisY: {
		title: ""
	},
	data: [{        
		type: "column",  
		showInLegend: true, 
		legendMarkerColor: "grey",
		legendText: "",
		dataPoints: [      
			{ y: 6,  label: "Special Treat" },
			{ y: 4, label: "Birthday Coffee" },
			{ y: 2,  label: "Free Pizza" },
			{ y: 0,  label: "Free Coffee" }
		]
	}]
});
chart.render();

}

</script>
	<script>
		$('#lineChart').sparkline([102,109,120,99,110,105,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});

		$('#lineChart2').sparkline([99,125,122,105,110,124,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});

		$('#lineChart3').sparkline([105,103,123,100,95,105,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});
	</script>	
	<script >
		$(document).ready(function() {
			$('#basic-datatables').DataTable({
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
	<script >
		$(document).ready(function() {
			$('#basic-datatables2').DataTable({
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
</body>
</html>