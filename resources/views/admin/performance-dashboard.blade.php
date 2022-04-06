<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Performance Dashboard</title>
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
		.canvasjs-chart-credit {
			display: none;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>   Performance DashBoard</a>
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
	<section class="mt-3" style="padding-left: 24px;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4">
					<div class="venue_inputs mb-5">
						<input type="text" class="form-control form-control-user" readonly placeholder="Search.." value="Analytics" style="border-radius: 10px; cursor: default; padding: 12px 22px !important;"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 venue_inputs">
					<label>
						Joining Date - From
					</label>
					<input type="date" class="form-control form-control-user joining_from_date" placeholder="From Date" value="" style="border-radius: 0px" />
				</div>
				<div class="col-md-2 venue_inputs">
					<label>
						Joining Date - To
					</label>
					<input type="date" class="form-control form-control-user joining_to_date" placeholder="To Date" value=""  style="border-radius: 0px"/>
				</div>
				<div class="col-md-2 pt-3">
					<a href="javascript:void(0);" class="btn btn-primary btn-user btn-block common_btn" style="    padding: 8px 0px !important; margin-top: 11px; text-transform: none">
	                    Search
	                </a>
				</div>
			</div>
			<div class="d-flex mt-3 mb-3 flex-wrap">
				<div class="boxes customer_registrations">
					<p>Customer Registrations</p>
					<h3>0</h3>
				</div>
				<div class="boxes customer_dirham_earned" style="background-color: #FFB8C9;">
					<p>Customer Dirhams</p>
					<h3>0</h3>
				</div>
				<div class="boxes repeat_customers" style="background-color: #FFB8C9;">
					<p>Repeat Customer (More than once)</p>
					<h3>0</h3>
				</div>
				<div class="boxes fraud_check" style="background-color: #FF3C6A;">
					<p>Fraud Check (Max Transaction for 1 customer in the selected date period)</p>
					<h3>0</h3>
				</div>
				<div class="boxes total_sales">
					<p>Sales</p>
					<h3>0</h3>
				</div>
				<div class="boxes cashback_earned">
					<p>Cash Back Earned</p>
					<h3>0</h3>
				</div>
				<div class="boxes cashback_redeem">
					<p>Cash Back Redeemed</p>
					<h3>0</h3>
				</div>
				<div class="boxes user_referrals">
					<p>Referrals</p>
					<h3>0</h3>
				</div>
				<div class="boxes referral_first_transaction_done">
					<p>Referrals with 1st Transaction Done</p>
					<h3>0</h3>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="d-flex justify-content-between graph_text graph_text_registration">
				<h3></h3>
				<h3 class="text-center">
					Registrations
					<span class="value">0</span>
				</h3>
			</div>	
			<div class="row mb-4">
				<div id="chartContainer" style="height: 300px; width: 70%; margin: auto;"></div>
			</div>
			<div class="d-flex justify-content-between graph_text graph_text_total_sales">
				<h3></h3>
				<h3 class="text-center">
					Sales
					<span class="value">0</span>
				</h3>
			</div>	
			<div class="row mb-4">
				<div id="chartContainer1" style="height: 300px; width: 70%; margin: auto;"></div>
			</div>
			<div class="d-flex justify-content-between graph_text graph_text_dirham_earn">
				<h3></h3>
				<h3 class="text-center">
					Dirhams Earnings
					<span class="value">0</span>
				</h3>
			</div>	
			<div class="row mb-4">
				<div id="chartContainer2" style="height: 300px; width: 70%; margin: auto;"></div>
			</div>
			<div class="d-flex justify-content-between graph_text graph_text_dirham_redeemed">
				<h3></h3>
				<h3 class="text-center">
					Dirhams Redeemed
					<span class="value">0</span>
				</h3>
			</div>	
			<div class="row mb-4">
				<div id="chartContainer3" style="height: 300px; width: 70%; margin: auto;"></div>
			</div>
			<div class="row mb-4">
				<div id="chartContainer4" style="height: 300px; width: 70%; margin: auto;"></div>
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
	window.onload = function () {

	$('.common_btn').trigger('click');

	}
	function registeredusers(response){
		var arr = [];
		for (var i = 0; i < response.length; i++){
			arr.push(response[i]["x"]);
			response[i]["x"] = new Date(response[i]["x"]);
		}

		let intervalCustom = arr.length <= 1 ? 0 : 1;

		var chart = new CanvasJS.Chart("chartContainer", {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: ""
		},
		axisX:{
			interval: intervalCustom,
			intervalType: "day",
			valueFormatString: "DD MMM YYYY"
		},
		axisY: {
			title: "Number of User Registrations",
			titleFontColor: "#4F81BC",
			includeZero: true,
			crosshair:{
			 enabled: false,
			 snapToDataPoint: true,
	     	}
		},
		data: [{        
			type: "line",  
			showInLegend: true, 
			legendMarkerColor: "grey",
			legendText: "Date Interval",
			dataPoints: response
		}]
	});
	chart.render();
	}

	function totalsales(response){
		var arr = [];
		for (var i = 0; i < response.length; i++){
			arr.push(response[i]["x"]);
			response[i]["x"] = new Date(response[i]["x"]);
		}

		let intervalCustom = arr.length <= 1 ? 0 : 1;

		var chart = new CanvasJS.Chart("chartContainer1", {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: ""
		},
		axisX:{
			interval: intervalCustom ,
			intervalType: "day",
			valueFormatString: "DD MMM YYYY",
		},
		axisY: {
			title: "Total Number of Sales",
			titleFontColor: "#4F81BC",
			includeZero: true,
			crosshair:{
			 enabled: false,
			 snapToDataPoint: true,
	     }
		},
		data: [{        
			type: "line",  
			showInLegend: true, 
			legendMarkerColor: "grey",
			legendText: "Date Interval",
			dataPoints: response
		}]
	});
	chart.render();
	}

	function customer_dirshams_wallet_cash(response){
		var arr = [];
		for (var i = 0; i < response.length; i++){
			arr.push(response[i]["x"]);
			response[i]["x"] = new Date(response[i]["x"]);
		}
		let intervalCustom = arr.length <= 1 ? 0 : 1;
		var chart = new CanvasJS.Chart("chartContainer2", {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: ""
		},
		axisX:{
			interval: intervalCustom,
			intervalType: "day",
			valueFormatString: "DD MMM YYYY"
		},
		axisY: {
			title: "Total Number of Customer Dirhams",
			titleFontColor: "#4F81BC",
			includeZero: true,
			crosshair:{
			 enabled: false,
			 snapToDataPoint: true,
	     }
		},
		data: [{        
			type: "line",  
			showInLegend: true, 
			legendMarkerColor: "grey",
			legendText: "Date Interval",
			dataPoints: response
		}]
	});
	chart.render();
	}

	function redeemed_amount_trends(response){
		var arr = [];
		for (var i = 0; i < response.length; i++){
			arr.push(response[i]["x"]);
			response[i]["x"] = new Date(response[i]["x"]);
		}
		let intervalCustom = arr.length <= 1 ? 0 : 1;
		var chart = new CanvasJS.Chart("chartContainer3", {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: ""
		},
		axisX:{
			interval: intervalCustom,
			intervalType: "day",
			valueFormatString: "DD MMM YYYY"
		},
		axisY: {
			title: "Total Dirhams Earned",
			titleFontColor: "#4F81BC",
			includeZero: true,
			crosshair:{
			 enabled: false,
			 snapToDataPoint: true,
	     }
		},
		data: [{        
			type: "line",  
			showInLegend: true, 
			legendMarkerColor: "grey",
			legendText: "Date Interval",
			dataPoints: response
		}]
	});
	chart.render();
	}

	function offers_for_bar_graph(response){
		var chart = new CanvasJS.Chart("chartContainer4", {
		animationEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: "Products Offer Redemption"
		},
		axisY: {
			title: "Total No. of Times Offer Redeem",
			titleFontColor: "#4F81BC",
			includeZero: true,
		},
		data: [{        
			type: "column",  
			showInLegend: true, 
			showInLegend: true, 
			legendMarkerColor: "grey",
			legendText: "Offer Interval",
			dataPoints: response
		}]
	});
	chart.render();

}

	</script>
	<script >

		var date = new Date();
    	var min_date = date.toISOString().slice(0,10);
		$('.joining_from_date , .joining_to_date').attr('max',min_date);

		var todayDate_today = new Date().toISOString().split('T')[0];
		var currentDate = new Date();
		var before7Daysdate= new Date(currentDate.setDate(currentDate.getDate() - 7)).toISOString().split('T')[0];

		$('.joining_from_date').attr('value',todayDate_today);
		$('.joining_to_date').attr('value',todayDate_today);


		$('.common_btn').click(function(){
			var from_date = $('.joining_from_date').val();
			var to_date = $('.joining_to_date').val();

			if(from_date > to_date){
				$("#alert_text").text("Joining to date should be greater than joining from date.");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			$.ajax({
				url:"{{ route('admin.analyticsDashboard') }}",
				type:"POST",
				dataType:'JSON',
				data:{from_date,to_date,'_token':'{{ csrf_token() }}'},
				beforeSend:function(){
		      		$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
				},
				success:function(data){
					setTimeout(function(){
					  	$("#loaderModel").modal("hide");

				  		var users_registrations = thousand_format(data.customer_registrations);
				  		$('.customer_registrations h3').text(users_registrations);
				  		$('.graph_text_registration h3 span.value').text(users_registrations);
				  		registeredusers(data.customer_registrations_trends);

				  		var users_referral = thousand_format(data.customer_referal);
				  		$('.user_referrals h3').text(users_referral);
				  		
				  		var customer_dirhams_wallet = thousand_format(data.customer_dirhams_wallet);
				  		$('.customer_dirham_earned h3').text(customer_dirhams_wallet);
				  		$('.graph_text_dirham_earn h3 span.value').text(data.customer_dirhams_wallet);
				  		customer_dirshams_wallet_cash(data.customer_dirshams_wallet_cash_trends);

				  		var total_sales = thousand_format(data.total_sales);
				  		$('.total_sales h3').text(total_sales);
				  		$('.graph_text_total_sales h3 span.value').text(data.total_sales.toLocaleString());
				  		totalsales(data.totalsales_amount_trends);

				  		var redeemed_amount = thousand_format(data.redeemed_amount);
				  		$('.cashback_redeem h3').text(redeemed_amount);
				  		$('.graph_text_dirham_redeemed h3 span.value').text(data.redeemed_amount);
				  		redeemed_amount_trends(data.redeemed_amount_trends);
				  		var cashback_earned = thousand_format(data.cashback_earned);
				  		$('.cashback_earned h3').text(cashback_earned);

				  		var referral_first_transaction_done = thousand_format(data.referral_first_transaction_done);
				  		$('.referral_first_transaction_done h3').text(referral_first_transaction_done);

				  		var repeat_customers = thousand_format(data.repeat_customers);
				  		$('.repeat_customers h3').text(repeat_customers);


				  		$('.fraud_check h3').text(data.fraud_check);

				  		offers_for_bar_graph(data.offers_for_bar_graph);
				  		

					},500);
				}
			});
		});

		function thousand_format(num){
			if(num >= 1100 ){
	  			return Math.abs(num/1000).toFixed(1)+'k';
	  		}else if(num > 999){
	  			return Math.round(num/1000)+'k';
	  		}else{
	  			return num;
	  		}
		}


		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
			$("#successModel").modal("hide");
		});
	</script>
</body>
</html>