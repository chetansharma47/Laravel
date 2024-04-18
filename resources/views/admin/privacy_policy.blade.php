<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Privacy Policy</title>
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

/*		.login_card input{
			    font-family: inherit;

		}*/
		.login_card input {
	    color: #676767 !important;

		}
		.login_card input::-webkit-input-placeholder {
	     font-family: 'Signika', sans-serif !important;
	    font-weight: 700 !important;
	    /*color: #c1c1c1 !important;*/
		}
		/*.login_card input[pass]::-webkit-input-placeholder {
			font-family: 'lato', sans-serif !important;
	    font-weight: 700 !important;
		}*/
		.curve-bg .navbar-nav {
    width: 100%;
    justify-content: space-between;
    align-items: center;
}
.curve-bg .navbar-nav .nav-item {
	margin-right: 0 !important;
}
.curve-bg .navbar-nav li.nav-item:nth-child(1) {
	width: inherit; }

.curve-bg .navbar-nav li.nav-item:nth-child(2) {
	width: inherit;
	margin-right:0 !important;
}

label.error {
    font-size: 14px!important;
    color: #ce3333!important;
    margin:0;
    font-weight: 700;
}

.alert.alert-danger.alert-dismissible.text-center.alertz.alert_mesg.alert_msg_red {
    margin-bottom: 10px;
}
.user{
	position: relative;
}
#eye{
	position: absolute;
    width: 22px;
    right: 20px;
    top: 183px;
    cursor: pointer;
    display: block;
}
.exampleInputPassword{
	position: relative;
}

#eye_hide{
	display: none;
	position: absolute;
    width: 22px;
    right: 20px;
    top: 180px;
    cursor: pointer;
}
li{
	font-weight: 550;
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

					<!-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link hover_color" href="#">Admin Panel</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="login.html">
									<img src="../assets/img/logo-approved.png"/ alt="logo-approved">
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="login.html" style="color: #FFDA7A; text-transform: capitalize;">
									login
								</a>
						</ul>
					</div> -->
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div class="row w-100">
							<div class="col-md-5 col-sm-12">
								<ul class="navbar-nav">
									<li class="nav-item">
										<a class="nav-link" href="javascript:void(0);" style="padding-right: 0">Privacy Policy</a>
									</li>
								</ul>
							</div>
							<div class="col-md-2 col-sm-12 text-center">
								<ul class="" style="padding-left: 25px;">
										<a class="nav-link" href="javascript:void(0)">
											<img src="{{url('public/admin/assets/img/logo-approved.png')}}" style="width: 100px;" alt="logo-approved"/>
										</a>
								</ul>
							</div>
							<!-- <div class="col-md-5 text-right pr-0">
								<ul class="navbar-nav">
									<li class="nav-item">
										<a class="nav-link" href="{{route('admin.login')}}" style="color: #FFDA7A; text-transform: capitalize;">
											login
										</a>
									</li>
								</ul>
							</div> -->
						</div>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<div class="container">
		<!-- <section class="login_content input_label">
			<form>
				<div class="logo-wrapper"><img src="../assets/img/logo.png" alt="logo"/></div>
				<span class="new-life">Admin Login</span>
				<div class="mt_form">
					<div>
						<div class="form-group">
							<label for="" class="pb-1">
								Email Address
							</label>
							<input type="text" class="form-control" placeholder="Email Address" required />
						</div>
					</div>
					<div class="form-group">
						<label for="" class="pb-1">
								Password
							</label>
						<input type="password" class="form-control" placeholder="Password" required />
					</div>
					<div>
						<p class="forget">
							<a  href="forgot.html" class="reset_pass to_register">Forgot Password?</a>
						</p>
						<a class="btn btn-success submit" href="index.html">Login</a>
					</div>
				</div>
			</form>
		</section> -->
		<div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="border-0 my-5 login_card">
          <div class="p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-12">
                <p>Welcome to Capital Society. Thank you for taking time to read our privacy policy. This Privacy Policy will be applicable from 1st Jan 2022.</p>
                <ol>
                	<li>Who we are ? </li>
                	<p>Capital Motion restaurant management is an Abu Dhabi based hospitality development and management company, established in 2008.</p>
                	<p>Capital motion's portfolio includes 10 restaurants with the first of series of franchise cafes, all of them located in the most desired areas of Abu Dhabi. Each restaurant features a unique ambiance, cuisine, and superior service.</p>
                	<li>Information We Collect</li>
                	<p>When you register with us, we are collecting your basic personal information. We collect basic information like First Name, Last Name, Mobile Number, Email id, Nationality, Date of Birth, Gender, City of residence, Profile photo.</p>
                	<p>All the information collected above are only for the purpose of customizing the offers based on your gender, location, nationality etc. The email id and mobile number is used for login, resetting the password, getting the login OTP and events / offers notifications.</p>
                	<li>How We Use Information</li>
                	<p>We use your information to administer your account and customize the offer.</p>
                	<li>How We Protect Your Information</li>
                	<p>We work hard to protect you from unauthorized access to or alteration, disclosure or destruction of your personal information. As with all technology companies, we take steps to secure your information. We regularly monitor our systems for possible vulnerabilities and attacks and regularly review our information collection, storage and processing practices to update our physical, technical and organizational security measures. We do not share your information to any 3rd party, but strictly used for the app experience purposes.</p>
                	<li>Privacy Policy Changes</li>
                	<p>Because we’re always looking for new and innovative ways to help you build meaningful connections, this policy may change over time. You can check the same in our About our loyalty program section.</p>
                	<li>How to Contact Us</li>
                	<p>Capital Motion Restaurants Management<br>Office SG3, Al Bandar, Al Raha Beach, Abu Dhabi<br>UAE, P O Box 130122<br>Phone: +971 2449 9036 / Toll Free 800 6996<br>Email: info@capitalmotion.com</p>



                </ol>
              </div>
            </div>
          </div>
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
	<script src="{{url('public/admin/assets/js/demo.js')}}"></script>
	

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.1.62/jquery.inputmask.bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js" integrity="sha256-sPB0F50YUDK0otDnsfNHawYmA5M0pjjUf4TvRJkGFrI=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js" integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo=" crossorigin="anonymous"></script>



</body>