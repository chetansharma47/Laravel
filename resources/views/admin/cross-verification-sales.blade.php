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
		.dataTables_filter label {
			margin-right: -17px;
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
										<a class="nav-link hover_color" href="{{route('admin.adminTabs')}}" style="padding-right: 0">Admin Panel</a>
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span> Cross Verification Sales</a>
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
										<a class="nav-link" href="#">User: Steve</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="{{route('admin.adminTabs')}}" style="color: #FFDA7A;">
											Salt & Caramel 
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
						<div class="venue_inputs pt-3 pl-2 pb-3">
							<label>
								Upload Checks Export File  for Verification
							</label>
							<input type="email" class="form-control form-control-user" placeholder="Upload Checks Export File  for Verification" value="c:\exportfrommicros\possaledata.xlsx" />
						</div>
						<div class="grey_btn green_btn">Upload & Verify Transaction</div>
						<div class="grey_btn green_btn">Delete the Selected Transaction</div>
						<div class="grey_btn green_btn">Force verify the Selected Sales Transaction</div>
						<div class="grey_btn green_btn">Force verify the all Pending Sales Transaction</div>
						<div class="grey_btn green_btn">Export the data</div>
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
									<tr>
										<th>Customer ID</th>
										<th>Customer No</th>
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
</body>
</html>