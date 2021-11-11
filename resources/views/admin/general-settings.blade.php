<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>General Settings</title>
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
	<link href="{{url('public/admin/assets/css/spectrum.css')}}" rel="stylesheet" type="text/css">
	<style>
		body {
			background: #fff !important;
		}
		.sp-replacer {
			width: 85px;
		    height: 31px;
		    margin-left: 12px;
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
			position: relative;
		}
		/*#cke_58,#cke_23,#cke_33,#cke_37,#cke_73,#cke_86,#cke_87,#cke_108{
			display: none;
		}*/
		/*.cke_toolgroup #cke_21,#cke_22,#cke_23,#cke_25,#cke_34,#cke_35,#cke_36,#cke_40,#cke_38,#cke_39,#cke_41,#cke_45,#cke_59{
			display: none;
		}*/
		img.upload_icon {
		    position: absolute;
		    width: 30px;
		    top: 12px;
		    right: 4px;
		    cursor: pointer;
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
		#style-1::-webkit-scrollbar-thumb {
		    background-color: #3abd6f;
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
										<a class="nav-link" href="#" style="padding-left: 0;"> <span style="color: #fff;">></span>   General Settings</a>
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
				<div class="col-md-4">
					<div class="app_notification_bg" style="background-color: transparent; padding-top: 0;">
						<!-- <div class="d-flex justify-content-between"> -->
							<div class="row">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="1"  data-name="Contact Email">
										<h5>Contact Us Email ID</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" data-name="Contact Email" class="form-control form-control-user contact_us_email"  uniq_id="1" placeholder="Contact Us Email ID" value="" style="border-radius: 10px;padding: 12px 22px !important;"/>
											</div>
											<a href="javascript:void(0);"  data-name="Contact Email" uniq_id="1" class="btn btn-primary btn-user btn-block common_btn ml-2 contact_us_email_btn general_setting_btn" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="2"  data-name="Contact Number" >
										<h5>Contact Us No.</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text"  data-name="Contact Number" class="form-control form-control-user contact_us_phone" placeholder="Contact Us No." value="" uniq_id="2" maxlength="30"  style="border-radius: 10px;padding: 12px 22px !important;"/>
											</div>
											<a href="javascript:void(0);"  data-name="Contact Number" uniq_id="2" class="btn btn-primary btn-user btn-block common_btn ml-2 contact_us_phone_btn general_setting_btn" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="3" data-name="Offer Image">
										<h5>Offer Screen Image</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" readonly uniq_id="3"  data-name="Offer Image"class="form-control form-control-user upload_img offer_screen_image" placeholder="Offer Screen Image" value="" style="border-radius: 10px;padding: 12px 22px !important; cursor: pointer;"/>

												<!-- <label style="position: relative; width: 100%;" uniq_id="3"> -->
													<img data-toggle="tooltip" data-placement="top" data-name="Offer Image"  uniq_id="3" title="Click to change file" src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
												<!-- </label> -->
												<input type="file" src="" accept="image/*" data-name="Offer Image"  uniq_id="3" name="img_upload" id="img_upload" class="img_upload" hidden  autocomplete="off">
											</div>
											<a href="javascript:void(0);" data-name="Offer Image" uniq_id="3" class="btn btn-primary btn-user btn-block common_btn ml-2 general_application_image_btn offer_screen_image_btn" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="4" data-name="Welcome Screen Logo">
										<h5>Welcome Screen Logo Static</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" readonly uniq_id="4"  data-name="Welcome Screen Logo"class="form-control form-control-user upload_img welcome_screen_logo" placeholder="Welcome Screen Logo Static" value="" style="border-radius: 10px;padding: 12px 22px !important; cursor: pointer;"/>

												<!-- <label style="position: relative; width: 100%;" uniq_id="4"> -->
													<img data-toggle="tooltip" data-placement="top" data-name="Welcome Screen Logo"  uniq_id="4" title="Click to change file" src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
												<!-- </label> -->
												<input type="file" src="" accept="image/*" data-name="Welcome Screen Logo"  uniq_id="4" name="img_upload" id="img_upload" class="img_upload" hidden  autocomplete="off">
											</div>
											<a href="javascript:void(0);" uniq_id="4" data-name="Welcome Screen Logo" class="btn btn-primary btn-user btn-block gen_btn_upload common_btn ml-2 welcome_screen_logo" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="5"  data-name="Welcome Screen Image" >
										<h5>Welcome Screen Image 1</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" readonly uniq_id="5"  data-name="Welcome Screen Image"  class="form-control form-control-user upload_img welcome_screen_image" placeholder="Welcome Screen Image 1" value="" style="border-radius: 10px;padding: 12px 22px !important; cursor: pointer;"/>
												<!-- <label style="position: relative; width: 100%;"> -->
													<img data-toggle="tooltip" data-placement="top" data-name="Welcome Screen Image"  uniq_id="5" title="Click to change file" src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
												<!-- </label> -->
												<input type="file" src="" accept="image/*" data-name="Welcome Screen Image"  uniq_id="5" name="img_upload" id="img_upload" class="img_upload" hidden  autocomplete="off">
											</div>
											<a href="javascript:void(0);"   data-name="Welcome Screen Image" uniq_id="5" class="btn btn-primary btn-user btn-block general_application_image_btn common_btn ml-2 welcome_screen_image_btn" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="6" data-name="Welcome Screen Image 2">
										<h5>Welcome Screen Image 2</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" readonly data-name="Welcome Screen Image 2" uniq_id="6" class="form-control form-control-user upload_img welcome_screen_image_2" placeholder="Welcome Screen Image 2 " value="" style="border-radius: 10px;padding: 12px 22px !important; cursor: pointer;"/>
												<!-- <label style="position: relative; width: 100%;"> -->
													<img data-toggle="tooltip" data-placement="top" data-name="Welcome Screen Image 2"  uniq_id="6" title="Click to change file" src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
												<!-- </label> -->
												<input type="file" src="" accept="image/*" data-name="Welcome Screen Image 2"  uniq_id="6" name="img_upload" id="img_upload" class="img_upload" hidden  autocomplete="off">
											</div>
											<a href="javascript:void(0);" data-name="Welcome Screen Image 2" uniq_id="6" class="btn btn-primary btn-user btn-block general_application_image_btn common_btn ml-2 welcome_screen_image_2_btn" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" data-name="Welcome Screen Image 3" uniq_id="7">
										<h5>Welcome Screen Image 3</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" readonly data-name="Welcome Screen Image 3" uniq_id="7" class="form-control welcome_screen_image_3 upload_img form-control-user" placeholder="Welcome Screen Image 3" value="" style="border-radius: 10px;padding: 12px 22px !important; cursor: pointer;"/>

												<!-- <label style="position: relative; width: 100%;"> -->
													<img data-toggle="tooltip" data-placement="top" data-name="Welcome Screen Image 3"  uniq_id="7" title="Click to change file" src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
												<!-- </label> -->
												<input type="file" src="" accept="image/*" data-name="Welcome Screen Image 3"  uniq_id="7" name="img_upload" id="img_upload" class="img_upload" hidden  autocomplete="off">
											</div>
											<a href="javascript:void(0);" data-name="Welcome Screen Image 3" uniq_id="7" class="btn btn-primary  welcome_screen_image_3_btn general_application_image_btn btn-user btn-block common_btn ml-2" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="8" data-name="Welcome Screen Image 4">
										<h5>Welcome Screen Image 4</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" readonly uniq_id="8" data-name="Welcome Screen Image 4" class="form-control form-control-user upload_img welcome_screen_image_4" data-name="Welcome Screen Image 4" placeholder="Welcome Screen Image 4" value="" style="border-radius: 10px;padding: 12px 22px !important; cursor: pointer;"/>

												<!-- <label style="position: relative; width: 100%;"> -->
													<img data-toggle="tooltip" data-placement="top" data-name="Welcome Screen Image 4"  uniq_id="8" title="Click to change file" src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
												<!-- </label> -->
												<input type="file" src="" accept="image/*" data-name="Welcome Screen Image 4"  uniq_id="8" name="img_upload" id="img_upload" class="img_upload " hidden  autocomplete="off">

											</div>
											<a href="javascript:void(0);" uniq_id="8" data-name="Welcome Screen Image 4" class="btn btn-primary  btn-user btn-block common_btn ml-2 welcome_screen_image_4_btn general_application_image_btn" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="9" data-name="App Theme Color">
										<h5>App Theme Color</h5>
										<div class="d-flex justify-content-between align-items-center mt-2">
											<div class="venue_inputs">
												<input type="text" uniq_id="9" data-name="App Theme Color" class="form-control form-control-user theme_color" readonly placeholder="App Theme Color" value="#ff0000" style="border-radius: 10px;padding: 12px 22px !important;"/>
											</div>
											<input type="color" uniq_id="9" class="custom_color spectrum">
											<a href="javascript:void(0);" data-name="App Theme Color" uniq_id="9" class="btn btn-primary btn-user gen_btn_upload btn-block common_btn ml-2 theme_color_btn" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="10" data-name="Launch Animation">
										<h5>Launch Animation</h5>
											<div class="d-flex justify-content-between mt-2">
												<form type="POST" enctype="multipart/form-data" id="launch_animation_form">
													@csrf
													<div class="venue_inputs">
														<input type="text" data-name="Launch Animation" uniq_id="10" class="form-control form-control-user loading_animation" placeholder="Launch Animation" name="img_upload_visible" value="" style="border-radius: 10px;padding: 12px 22px !important; cursor: pointer;" readonly=""/>

														<!-- <label style="position: relative; width: 100%;"> -->
															<img data-toggle="tooltip" data-placement="top" data-name="Launch Animation"  uniq_id="10" title="Click to change file" src="{{url('public/cloud-computing-grey.png')}}" alt="upload-icon-img" class="upload_icon" style="width:30px; cursor:pointer;">
														<!-- </label> -->
														<input type="file" src="" accept="video/*" data-name="Launch Animation"  uniq_id="10" name="img_upload" id="img_upload" class="img_upload " hidden  autocomplete="off">
													</div>
											</form>
												<a href="javascript:void(0);" data-name="Launch Animation" uniq_id="10" class="btn btn-primary btn-user gen_btn_upload btn-block common_btn ml-2 loading_animation_btn" style="width: 138px; padding-top: 12px;">
				                      				Save
				                    			</a>
											</div>
									</div>
								</div>
							</div>
							<!-- <div class="row mt-3">
								<div class="col-md-12">
									<div class="gernal_input_sec" uniq_id="11"  data-name="Loading Indicator">
										<h5>Loading Indicator</h5>
										<div class="d-flex justify-content-between mt-2">
											<div class="venue_inputs">
												<input type="text" uniq_id="11"  data-name="Loading Indicator" class="form-control form-control-user loading_indicator" placeholder="Loading Indicator" value="" style="border-radius: 10px;padding: 12px 22px !important;"/>
											</div>
											<a href="javascript:void(0);"  data-name="Loading Indicator" uniq_id="11" class="btn btn-primary btn-user btn-block common_btn ml-2 loading_indicator_btn" style="width: 138px; padding-top: 12px;">
			                      				Save
			                    			</a>
										</div>
									</div>
								</div>
							</div> -->
						<!-- </div> -->
					</div>
				</div>
				<div class="col-md-5 mt-5">
					<div class="row">
						<div class="col-md-6">
							<div class="gen_setting">
								<h5 class="">About our loyalty program</h5>
							</div>
							<div class="app_notification_bg scrool_box about_us_loyalty" data-name="About our loyalty program" uniq_id="11"  id="style-1">
								<div class="force-overflow"></div>
								<div class="gernal_input_sec general_content_policy" uniq_id="11"  data-name="About our loyalty program" >
								<textarea data-name="About our loyalty program" uniq_id="11" name="about_us"></textarea>
									<!-- <h5 style="color: #000">About our loyalty program?</h5>	
									<p class="about_para">
										Here we introduce our new loyalty program where you can earn the direct cash bacl to your wallet when you dine in / transaction with us. This is a good chance for anyone who loves food, to dine in and get the cash back to your wallet. You can use the wallet amount anytime when you dine in with us.
									</p>
									<h5 style="color: #000">Customer Tiers:</h5>
									<p  class="about_para mb-0">
										There are many types of customer categories available depending on the total transaction you do with us in the specified time period. Some of the categories are as follows:
									</p>	 -->
								</div> 
							</div>
							<div class="text-right">
								<a href="javascript:void(0);" data-name="About our loyalty program" uniq_id="11" class="btn btn-primary btn-user btn-block common_btn about_us_loyalty_btn general_setting_btn" style="width: 118px;     margin: 14px 0 0 auto;">
		                      		Save
		                    	</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="gen_setting">
								<h5 class="">FAQs</h5>
							</div>
							<div class="app_notification_bg scrool_box faqs" uniq_id="12"  data-name="faq's" id="style-1">
								<div class="force-overflow"></div>
								<div class="gernal_input_sec general_content_policy" uniq_id="12"  data-name="faq's" >
									<textarea uniq_id="12"  data-name="faq's" name="faqs"></textarea>
									<!-- <h5 style="color: #000">FAQs</h5> -->
									<!-- <p class="question_para">
										Q: How many dirhams will I get when I dine in at Pacifico Tiki?
									</p>	
									<p class="about_para">
										A:The dirhams earned on your wallet depends on the offer applicable on the day of your transaction.
									</p>
									<p class="question_para">
										Q:  When will I get the Cashback on my wallet?
									</p>	
									<p class="about_para">
										A:You will get the cash back into your wallet the next day of your purchase.
									</p>	
									<p class="question_para">
										Q:  Can I use the wallet amount everywhere?
									</p>	
									<p class="about_para mb-0">
										A:You can use the wallet amount anywhere in our chain of restaurants.
									</p> -->
								</div>
							</div>
							<div class="text-right">
								<a href="javascript:void(0);"  data-name="faq's" uniq_id="12" class="btn btn-primary btn-user btn-block faqs_btn common_btn general_setting_btn" style="width: 118px;     margin: 14px 0 0 auto;">
		                      		Save
		                    	</a>
							</div>
						</div>
					</div>
					<div class="row mt-4">
						<div class="col-md-6">
							<div class="gen_setting">
								<h5 class="">Terms & Conditions</h5>
							</div>
							<div class="app_notification_bg scrool_box terms_and_conditions" data-name="Terms & conditions" uniq_id="13" id="style-1">
								<div class="force-overflow"></div>
								<div class="gernal_input_sec general_content_policy"  data-name="Terms & conditions" uniq_id="14">
									<textarea  uniq_id="13" data-name="Terms & conditions" name="terms_conditions_loyalty"></textarea>
									<!-- <h5 style="color: #000">About our loyalty program?</h5>	 -->
									<!-- <p class="about_para mb-0">
										These terms and conditions are a set of rules About our loyalty programe of a website or application. They set out how users may use the site or application, and what they can and cannot do on the site or application. For example, if a user posts offensive or defamatory content on a website, the owner of the site will want to have terms and conditions to fall back on which clearly state that the owner of the site does not permit or take responsibility for that offensive content, and that any liability (such as a defamation claim) should therefore sit with the user. In addition, the owner of the site may want to have the ability to terminate the user's account - and this also will need to be explained in the terms and conditions.


									</p> -->	
								</div>
							</div>
							<div class="text-right">
								<a href="javascript:void(0);" data-name="Terms & conditions"  uniq_id="13" class="btn btn-primary btn-user btn-block common_btn terms_and_conditions_btn general_setting_btn" style="width: 118px;     margin: 18px 0 0 auto;">
		                      		Save
		                    	</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="gen_setting">
								<h5 class="">Privacy Policy</h5>
							</div>
							<div class="app_notification_bg scrool_box privacy_policy" data-name="Privacy policy" uniq_id="14" id="style-1">
								<div class="force-overflow"></div>
								<div class="gernal_input_sec general_content_policy" data-name="Privacy policy" uniq_id="14">
									<textarea name="privacy_policy" data-name="Privacy policy" uniq_id="15"></textarea>
									<!-- <h5 style="color: #000">Privacy Policy</h5> -->
									<!-- <p class="about_para">
									A Privacy Policy is a legal statement that specifies what the business owner does with the personal data collected from users, along with how the data is processed and for what purposes.
									</p>
									<p class="about_para mb-0">
									In 1968, Council of Europe did studies on the threat of the Internet expansion as they were concerned with the effects of technology on human rights. This lead to the development of policies that were to be developed to protect personal data.
									</p> -->


								</div>
							</div>
							<div class="text-right">
								<a href="javascript:void(0);" data-name="Privacy policy" uniq_id="14" class="btn btn-primary btn-user privacy_policy_btn btn-block common_btn general_setting_btn" style="width: 118px;     margin: 18px 0 0 auto;">
		                      		Save
		                    	</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 p-0 mt-1">
					<div class="app_notification_bg" style="background-color: transparent;">
						<h4 style="color: #535050">Venue Invoice No Entry Check</h4>
						<div class="d-flex align-items-center">
							<!-- <div>
								<label class="app_checkboxes">
									<input type="checkbox" checked="checked">
									<span class="checkmark"></span>
								</label>
							</div> -->
							<div class="venue_inputs" style="margin: 0 13px 0 0px;">
								<label style="color: #797676 !important">
									Unique Invoice No Check From Past Entry
								</label>
								<input type="text"  uniq_id="15" data-name="Unique venue invoice no" class="form-control form-control-user venue_invoice_check" placeholder="Unique Invoice No Check From Past Entry" maxlength="3" style="font-size: 14px !important; border-radius: 10px !important; margin-bottom: 14px;"/>
							</div>
							<div class="" style="margin-top: 32px;">
								<a href="javascript:void(0);" uniq_id="15" data-name="Unique venue invoice no"  class="btn btn-primary btn-user general_setting_btn venue_invoice_check_btn btn-block common_btn" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Save
			                    </a>
							</div>
						</div>
						<h4 class="mb-0" style="color: #535050">Venue Timeout</h4>
						<div class="venue_inputs mt-0">
							<label style="color: #535050">
								Timer starts when customer QR Code is scanned successfully
							</label>
						</div>
						<div class="d-flex align-items-center mt-3">
							<!-- <div>
								<label class="app_checkboxes">
									<input type="checkbox" checked="checked">
									<span class="checkmark"></span>
								</label>
							</div> -->
							<div class="venue_inputs" style="margin: 0 13px 0 0px;">
								<label style="color: #797676 !important">
									Timeout in Seconds
								</label>
								<input type="text" class="form-control form-control-user qr_scan_timeout" placeholder="Timeout in Seconds" value="" maxlength="4" uniq_id="16" data-name="Venue timeout" style="font-size: 14px !important; border-radius: 10px !important; margin-bottom: 14px;"/>
							</div>
							<div style="margin-top: 12px;">
								<a href="javascript:void(0);"  uniq_id="16" data-name="Venue timeout" class="btn btn-primary btn-user general_setting_btn  qr_scan_timeout_btn btn-block common_btn" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Save
			                    </a>
							</div>
						</div>
						<h4 class="mb-0" style="color: #535050">Sms otp validity</h4>
						<div class="venue_inputs mt-0">
							<label style="color: #535050">
								Validity starts when redemption verify button, product redeem button is pressed
							</label>
						</div>
						<div class="d-flex align-items-top mt-3">
							<div>
								<label class="app_checkboxes" uniq_id="17" data-name="Sms otp validity" >
									<span style="font-family: 'Signika', sans-serif;font-weight: 700;color: #000 !important;font-size: 14px !important;">Enable</span>
									<input uniq_id="17" data-name="Sms otp validity" type="checkbox">
									<span uniq_id="17" data-name="Sms otp validity"  class="checkmark" style="top: 30px"></span>
								</label>
							</div>
							<div class="venue_inputs" style="margin: 0 13px 0 7px;">
								<label style="color: #797676 !important">
									SMS Validity in Seconds
								</label>
								<input type="text" uniq_id="17" data-name="Sms otp validity"  class="form-control form-control-user sms_otp_validity" maxlength="4" placeholder="SMS Validity in Seconds" value="" style="font-size: 14px !important; border-radius: 10px !important; margin-bottom: 14px;"/>
							</div>
							<div style="margin-top: 25px;">
								<a href="javascript:void(0);"  uniq_id="17" data-name="Sms otp validity"  class="btn btn-primary btn-user general_setting_btn sms_otp_validity_btn btn-block common_btn" style="width: 100px;padding: 4px 0 !important;font-size: 17px;">
			                      	Save
			                    </a>
							</div>
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
        <p id="success_alert_text">Are you sure, you want to delete this venue?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;"  data-dismiss="modal">No</button> 
        <button type="button" class="btn btn-secondary confirm_ok" style="background-color: #3ABD6F!important; border: none; border-radius: 50px; color: #fff;" onclick="removeVenue();"  data-dismiss="modal">Yes</button>
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

	<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
	<script src="{{url('public/admin/assets/js/spectrum.js')}}"></script>
	<script type="text/javascript">
	    $(document).ready(function() {
	       CKEDITOR.replace( 'about_us' );
	       CKEDITOR.replace( 'faqs' );
	       CKEDITOR.replace( 'terms_conditions_loyalty' );
	       CKEDITOR.replace( 'privacy_policy' );
	       CKEDITOR.config.resize_minHeight = 200;
	       CKEDITOR.config.resize_maxHeight = 200;
	       CKEDITOR.config.removeButtons = 'Copy,Cut,Paste,Undo,Redo,Print,Form,TextField,Textarea,Button,SelectAll,NumberedList,BulletedList,CreateDiv,Table,PasteText,PasteFromWord,Select,HiddenField,Source,Anchor,Link,Unlink';
	       // CKEDITOR.config.removePlugins = 'elementspath,save,image,flash,iframe,link,smiley,tabletools,find,pagebreak,templates,about,maximize,showblocks,newpage,language';

		});

		$(".ok").on("click",function(){
			$("#validationModel").modal("hide");
			$("#successModel").modal("hide");
		});

		function getgeneraldata(){
			$.ajax({
				url:'{{ route("admin.getGeneralSettings") }}',
				dataType:'JSON',
				beforeSend:function(){
		      		$("#loaderModel").modal("show");
					$("#loaderModel").unbind("click");
				},
				success:function(data){
					setTimeout(function(){
					  	$("#loaderModel").modal("hide");
						var slice_name = slicename(data.application_data.name_of_file_show_logo);
					  	$('.theme_color').attr('value',data.application_data.color);
					  	// $('.custom_color').spectrum({color:data.application_data.color, showInput:true,preferredFormat: "hex6" });
					  	// $('.spectrum').spectrum({color:data.application_data.color});
					  	spectrumClass('.spectrum',data.application_data.color);
					  	$('.welcome_screen_logo').attr('src',data.application_data.logo);
					  	$('.welcome_screen_logo').attr('value',slice_name);
						var slice_name_animation = slicename(data.application_data.name_of_file_show_video);
					  	$('.loading_animation').attr('src',data.application_data.video);
					  	$('.loading_animation').attr('value',slice_name_animation);
					  	
					  	$.each(data.application_data.application_images,function(key,val){
					  		var valu = val.name_of_file_show;
							var length = valu.length;
							if(length>18){
								var slice_name = valu.slice(0,18)+'...';
							}else{
								var slice_name = valu;
							}
					  		$('.form-control-user[uniq_id='+val.uniq_id+']').attr('value',slice_name);
					  		$('.form-control-user[uniq_id='+val.uniq_id+']').attr('src',val.image);
					  	});

					  	$.each(data.general_settings,function(key,val){
					  		$('.form-control-user[uniq_id='+val.uniq_id+']').attr('value',val.setting_content);
					  		if(val.uniq_id == 11){
					  			CKEDITOR.instances.about_us.setData(val.setting_content);
					  			CKEDITOR.instances.about_us.getData();
					  		}
					  		if(val.uniq_id == 12){
					  			CKEDITOR.instances.faqs.setData(val.setting_content);
					  			CKEDITOR.instances.faqs.getData();
					  		}
					  		if(val.uniq_id == 13){
					  			CKEDITOR.instances.terms_conditions_loyalty.setData(val.setting_content);
					  			CKEDITOR.instances.terms_conditions_loyalty.getData();
					  		}
					  		if(val.uniq_id == 14){
					  			CKEDITOR.instances.privacy_policy.setData(val.setting_content);
					  			CKEDITOR.instances.privacy_policy.getData();
					  		}
					  		if(val.setting_enabled_disbaled == 'Enabled'){
					  			$('.app_checkboxes input[uniq_id=17]').prop('checked',true);
					  		}
					  		// $('.form-control-user[uniq_id='+val.uniq_id+']').attr('src',val.image);
					  	});

					},500);
				}
			});
		}

		getgeneraldata();

		function slicename(valu){

			if(valu.length>18){
				return valu.slice(0,18)+'...';
			}else{
				return valu;
			}
		}


		$('.general_setting_btn').click(function(e){
			var uniq_id = $(this).attr('uniq_id');
			var data_name = $(this).attr('data-name');
			var setting_content = $('.form-control-user[uniq_id='+uniq_id+']').val();
			let text_ck_editor = $(".general_content_policy[uniq_id="+uniq_id+"]").children('textarea').attr('name');

			// let text_ck_editor = $(".general_content_policy[uniq_id="+uniq_id+"]").children('textarea').find(".cke_wysiwyg_frame").contents().find('body p').html();
			if(uniq_id == 11){
				var editorText = CKEDITOR.instances.about_us.getData();
				// if(editorText == ''){
				// 	$("#alert_text").text("Please enter about our loyalty program.");
				// 	$("#validationModel").modal("show");
				// 	$("#validationModel").unbind("click");
				// 	return false;
				// }
			}
			if(uniq_id == 12){
				var editorText = CKEDITOR.instances.faqs.getData();
				// if(editorText == ''){
				// 	$("#alert_text").text("Please enter faq's");
				// 	$("#validationModel").modal("show");
				// 	$("#validationModel").unbind("click");
				// 	return false;
				// }
			}
			if(uniq_id == 13){
				var editorText = CKEDITOR.instances.terms_conditions_loyalty.getData();
				// if(editorText == ''){
				// 	$("#alert_text").text("Please enter terms & conditions.");
				// 	$("#validationModel").modal("show");
				// 	$("#validationModel").unbind("click");
				// 	return false;
				// }
			}
			if(uniq_id == 14){
				var editorText = CKEDITOR.instances.privacy_policy.getData();
				// if(editorText == ''){
				// 	$("#alert_text").text("Please enter privacy policy.");
				// 	$("#validationModel").modal("show");
				// 	$("#validationModel").unbind("click");
				// 	return false;
				// }
			}

			if($('.app_checkboxes input[uniq_id='+uniq_id+']').prop('checked')){
				var setting_enabled_disabled = 'Enabled';
			}
			if(setting_content == ''){
				$("#alert_text").text("Please enter "+data_name.toLowerCase()+".");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			if(editorText == ''){
				$("#alert_text").text("Please enter "+data_name.toLowerCase()+".");
				$("#validationModel").modal("show");
				$("#validationModel").unbind("click");
				return false;
			}

			$.ajax({
				url:'{{ route("admin.generalSettingsSave") }}',
				type:'POST',
				dataType:'JSON',
				data:{setting_content,data_name,uniq_id,editorText,setting_enabled_disabled,'_token':'{{ csrf_token() }}'},
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
					},500);
				}
			});
		});

		$('.upload_icon').click(function(e){
			var uniq_id = $(this).attr('uniq_id');
			var data_name = $(this).attr('data-name');
			$('.img_upload[uniq_id='+uniq_id+']').trigger('click');

			$('.img_upload[uniq_id='+uniq_id+']').on('change',function(){
				var file = event.target.files[0];
				console.log(file);
				var file_nameshow = file.name;

				var valu = file_nameshow;
				var length = valu.length;
				if(length>18){
					var slice_name = valu.slice(0,18)+'...';
				}else{
					var slice_name = valu;
				}

				if(file){

					if(data_name == "Launch Animation"){
						if(file.type == "video/mp4" || file.type == "video/mp3"){

						var size = file.size;
							if(size > 5242880){
								$("#alert_text").text("Video should be less than or equal to 5 MB.");
						        $("#validationModel").modal("show");
						        $("#validationModel").unbind("click");
								return false;
							}else{
								var reader = new FileReader();
								reader.onload = function(e){
									$(".form-control-user[uniq_id="+uniq_id+"]").attr('src',e.target.result);
									$(".form-control-user[uniq_id="+uniq_id+"]").attr('value',slice_name);
									$(".img_upload[uniq_id="+uniq_id+"]").attr('src',e.target.result);
									$(".img_upload[uniq_id="+uniq_id+"]").attr('value',file_nameshow);
								}
							}
							reader.readAsDataURL(file);
							$("#img_upload")[0].value = '';

						}else{
							$("#alert_text").text("Please upload .mp3 or .mp4 format file only.");
						    $("#validationModel").modal("show");
						    $("#validationModel").unbind("click");
						    return false;
						}
					}else{
						if(file.type == "image/jpeg" || file.type == "image/png" || file.type == "image/jpg"){

							var size = file.size;
							if(size > 5242880){
								$("#alert_text").text("Image should be less than or equal to 5 MB.");
						        $("#validationModel").modal("show");
						        $("#validationModel").unbind("click");
				        
								return false;
							}else{
								var reader = new FileReader();
								reader.onload = function(e){
									$(".form-control-user[uniq_id="+uniq_id+"]").attr('src',e.target.result);
									$(".form-control-user[uniq_id="+uniq_id+"]").attr('value',slice_name);
									$(".img_upload[uniq_id="+uniq_id+"]").attr('src',e.target.result);
									$(".img_upload[uniq_id="+uniq_id+"]").attr('value',file_nameshow);
								}
							}
							reader.readAsDataURL(file);
							$("#img_upload")[0].value = '';

						}else{
							$("#alert_text").text("Please upload .jpg, .jpeg or .png format file only.");
						    $("#validationModel").modal("show");
						    $("#validationModel").unbind("click");
						    return false;
						}

					}

				}
			});

		});

		$('.upload_img').click(function(){
			var get_base64 = $(this).attr('src');
			if(get_base64){
			fetch(get_base64)
		   	.then(e => e.blob())
		   	.then(e => {
		        let obj = URL.createObjectURL(e);
		        window.open(obj);
		   	})
		   	.catch(e => {
		   		console.log(e)
		   	});
		   }
		});

		/*For Apllication images*/
		$('.general_application_image_btn').on('click',function(){
			let uniq_id = $(this).attr('uniq_id');
			var data_name = $(this).attr('data-name');
			let check_img = $(".form-control-user[uniq_id="+uniq_id+"]").val();
			// let hidden_img_original_name = $(".img_upload[uniq_id="+uniq_id+"]").val();
			let name_of_file_show = $(".img_upload[uniq_id="+uniq_id+"]").attr('value');
			let hidden_image = $(".img_upload[uniq_id="+uniq_id+"]").attr('src');

			if(check_img == ''){
				$("#alert_text").text("Please upload image");
			    $("#validationModel").modal("show");
			    $("#validationModel").unbind("click");
			    return false;
			}

			$.ajax({
				url:'{{ route("admin.application_data_save") }}',
				type:'POST',
				dataType:'JSON',
				data:{hidden_image,uniq_id,data_name,name_of_file_show,'_token':'{{ csrf_token() }}'},
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
					},500);
				}
			});

		});
		function spectrumClass(className,colorcode){
			$(className).spectrum({
				color:colorcode,
			    preferredFormat: "hex6",
			    showInput: true,
			});

			$(".sp-choose").click(function(){
				let color_code = $(this).parent().parent().find(".sp-input-container .sp-input").val();
				$('.theme_color[uniq_id=9]').attr('value',color_code);
			});
		}

		spectrumClass('.spectrum','#000000');


		/*For welocme logo, launch animation, app color with formdata*/

		$('.gen_btn_upload').click(function(){
			let uniq_id = $(this).attr('uniq_id');
			let data_name = $(this).attr('data-name');

			if(data_name == "Launch Animation"){
				$('#launch_animation_form').trigger('submit');
			}else{

				let check_img = $(".form-control-user[uniq_id="+uniq_id+"]").val();
				let theme_color = $(".form-control-user[uniq_id="+uniq_id+"]").val();
				let name_of_file_show = $(".img_upload[uniq_id="+uniq_id+"]").attr('value');
				let hidden_image = $(".img_upload[uniq_id="+uniq_id+"]").attr('src');

				if(check_img == ''){
					$("#alert_text").text("Please upload image");
				    $("#validationModel").modal("show");
				    $("#validationModel").unbind("click");
				    return false;
				}

				$.ajax({
					url:'{{ route("admin.save_gen_application_data") }}',
					type:'POST',
					dataType:'JSON',
					data:{hidden_image,uniq_id,data_name,name_of_file_show,theme_color,'_token':'{{ csrf_token() }}'},
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
						},500);
					}
				});
			}

		});


		$('#launch_animation_form').on('submit',function(e){
			var formdata = new FormData(this);

			$.ajax({
				url:'{{ route("admin.save_gen_application_data") }}',
				type:'POST',
				processData:false,
	            contentType:false,
	            dataType:'JSON',
	            data:formdata,
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
					},500);
				}

			});
			return false;

		});
		
		$(document).on('keydown','.contact_us_phone, .contact_us_email, .venue_invoice_check, .qr_scan_timeout, .sms_otp_validity',function(e){
			if(e.which===32){
				return false;
			}
		});

		$(document).on('input','.contact_us_phone, .venue_invoice_check, .qr_scan_timeout, .sms_otp_validity',function(event){
			return process(this);
		});

		function process(input){
		  let value = input.value;
		  let numbers = value.replace(/[^0-9]/g, "");
		  input.value = numbers;
		}


	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			$(".loading_animation").on("click",function(){
				let __url = $(this).attr("src");

				if(__url != "" || __url != undefined){
					let get_base64 = __url;
					if(get_base64){
					fetch(get_base64)
				   	.then(e => e.blob())
				   	.then(e => {
				        let obj = URL.createObjectURL(e);
				        window.open(obj);
				   	})
				   	.catch(e => {
				   		console.log(e)
				   	});
				   }

					//window.open(__url);
				}
			});
		});
	</script>


</body>
</html>