<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Reset Your Password</title>
<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <link rel="icon" href="{{url('public/admin/assets/img/logo-approved.png')}}" type="image/x-icon"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Signika:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<style type="text/css">
  #password-error {
    display: block;
    font-size: 14px!important;
    color: #ce3333!important;
    margin-top: 4px;
  }

  #confirm_password-error {
    display: block;
    font-size: 14px!important;
    color: #ce3333!important;
    margin-top: 4px;
  }

  .alert {
    max-width: 600px;
    margin: 40px auto 0px auto;
    width: 100%;
    padding: 10px 0px;
    position: relative;
  }

  button.close.close_icon {
    position: absolute;
    right: 8px;
    top: 20px;
    border: 1px solid transparent;
    cursor: pointer;
    height: 24px;
    width: 24px;
  }

  :focus {
    outline: -webkit-focus-ring-color auto 0px;
  }
</style>

<body style="background-color: #f9fafb; padding: 0;
    margin: 0;">
    @include('admin.notification')
  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 48px;">
    <tr>
       <td align="center" style="padding: 23px 0px 12px;">
         <a href="javascript:void(0);" style="border:0; outline:0; cursor: unset;"><img src="{{url('public/admin/assets/email_img/CM-Logo-2.png')}}" alt="" width="100"/></a>
       </td>
    </tr>
  </table>

  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
    <form method="POST" class="user" id="validate_form">
    {{csrf_field()}}
  <tr>
    <td width="20" align="left" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0"  style="background-image: url('{{url('public/admin/assets/email_img/curve-bg.png')}}'); background-repeat: no-repeat; background-size: cover; border-top-left-radius: 30px;border-top-right-radius: 30px;     background-position: bottom; cursor: unset;">
        
        <tr>
          <td width="20" align="left" valign="top">&nbsp;</td>
          <td align="center" valign="top" style="padding:5px 0;">
            <a href="javascript:void(0);" style="border:0; outline:0;cursor: unset;">
              <img src="{{url('public/admin/assets/email_img/CR-Logo.png')}}" alt="CR-Logo" width="100"/>
            </a>
          </td>
          <td width="20" align="left" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td width="20" align="left" valign="top">&nbsp;</td>
          <td align="center" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 700; color: #fff; padding-bottom: 17px;">
            Reset Your Password
          </td>
          <td width="20" align="left" valign="top">&nbsp;</td>
        </tr>
    </table>
  </td>
  </tr>
  <!-- <tr>
    <td height="1" align="left" valign="top" bgcolor="#d9d9d9"></td>
  </tr> -->
  
  <tr>

    @if($errors->any())
    <div class="backend_err">
        <ul>

            @foreach($errors->all() as $error) 
           
                <li class="err">{{ $error }}</li>

            @endforeach 

        </ul>
    </div>
    @endif

    
    <td align="left" valign="top" style="background:#fff; padding:30px 20px;border-bottom-left-radius: 30px;border-bottom-right-radius: 30px;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">


      <tr>
        <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" valign="top" style="font-family: 'Signika', sans-serif;
     font-weight: 700;">
             <img src="{{url('public/admin/assets/email_img/pass.png')}}" alt="pass" style="position: absolute;
    width: 20px;
    z-index: 99;
        margin-top: 15px;
    margin-left: 16px;" />
              <input type="password" class="form-control form-control-user" id="password" name="password" maxlength="100" placeholder="New Password" onkeypress="return AvoidSpace(event)" style="padding: 13px 45px 13px 49px;
    border: 0 !important;
    background-color: #EBEBEB !important;
    border-radius: 12px;
    font-family: 'Signika', sans-serif;
    font-weight: 700;
    font-size: 20px !important;
    outline: 0;
    position: relative;
    z-index: 9;">

             <!--  <img src="assets/eye.png" alt="eye" style="position: absolute;
    width: 20px;
    z-index: 99;
        margin-top: 20px;
        margin-left: -32px;" /> -->
            <label id="password-error" style="display: none;" class="error err" for="password"></label>
            </td>
          </tr>
          <tr>
            <td align="center" valign="top" style="font-family: 'Signika', sans-serif;
     font-weight: 700; padding-top: 15px">
             <img src="{{url('public/admin/assets/email_img/pass.png')}}" alt="pass" style="position: absolute;
    width: 20px;
    z-index: 99;
        margin-top: 15px;
    margin-left: 16px;" />
              <input type="password" class="form-control form-control-user" name="confirm_password" id="confirm_password" placeholder="Confirm Password" onkeypress="return AvoidSpace(event)"  style="    padding: 13px 45px 13px 49px;
    border: 0 !important;
    background-color: #EBEBEB !important;
    border-radius: 12px;
    font-family: 'Signika', sans-serif;
    font-weight: 700;
    font-size: 20px !important;
    outline: 0;
    position: relative;
    z-index: 9;">
              <img src="{{url('public/admin/assets/email_img/eye.png')}}" id="eye" alt="eye" style="position: absolute;
                      width: 20px;
                      z-index: 99;
                      margin-top: 20px;
                      margin-left: -32px; cursor: pointer;"/>

                <img src="{{url('public/admin/assets/email_img/eye-hide.png')}}" id="eye_hide" alt="eye_hide" style="position: absolute;
                width: 20px;
                z-index: 99;
                margin-top: 17px;
                margin-left: -32px; display: none; cursor: pointer;"/>


            <label id="confirm_password-error" style="display: none;" class="error err" for="confirm_password"></label>
            </td>
          </tr>
       <!--    <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr> -->

          <!-- <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 400; font-size:14px; color:#474747;">We have received a request to reset your Capital Motion account password associate with this email address.
            If you have not made this request, you can ignore this email and we assure you that your account is completely secure.<br><br>

            If you do need to reset your Capital Motion password, click the button given below.
            </td>
          </tr> -->
          <tr>
            <td height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="top"></td>
          </tr>
           <!--   <tr>
            <td align="left" valign="top" style="font-family:arial, sans-serif; font-size: 15px; font-weight:  bold; color:#474747;">ThankYou Team</b></td>
          </tr>  -->   

          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>

          <tr>
            <td align="center" valign="top"> 
              <a href="javascript:void(0);" id="submit_btn" style="font-family: 'Lato', sans-serif;
                font-weight: 600;
                font-size: 25px;
                color: #474747;
                background-color: #0B68AC;
                padding: 12px 9px;
                max-width: 260px;
                display: block;
                text-align: center;
                margin: 0 auto;
                color: #fff;
                text-decoration: none;
                border-radius: 50px;
                margin-bottom: 41px;">Update Your Password
              </a>
          </td>
          </tr>
        </table></td>
      </tr>
      <!-- <tr>
        <td height="" align="left" valign="top">&nbsp;</td>
      </tr> -->
    </table>
  </td>
  </tr>
    </form>


  <!-- <tr>
    <td align="left" valign="top" style="background:#193358; padding:20px; text-align:center;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center" valign="top" style="font-family:arial, sans-serif; font-size:13px; color:#fff;">©Copyright2021</td>
      </tr>
    </table></td>
  </tr> -->
</table>
<table border="0" align="center" cellpadding="0" cellspacing="0" style="background-image: url('{{url('public/admin/assets/email_img/footer-bg.png')}}'); background-repeat: no-repeat; background-size: cover; border-top-left-radius: 30px;border-top-right-radius: 30px;     background-position: top; width: 100%; padding: 30px 0px 2px;     margin-top: 82px; cursor: unset;">
  <tr>
    <td align="center">
       <a href="javascript:void(0);" style="border:0; outline:0; cursor: unset;"><img src="{{url('public/admin/assets/email_img/CM-Logo-2.png')}}" alt="" width="100"/></a>
     </td>
  </tr>
  <tr>
     <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 14px; color: #fff; padding: 12px 0 32px;">
       Thank you for using Capital Motion Society App
     </td>
  </tr>
  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #fff; padding-bottom: 12px;">
      {{$general_setting[9]['setting_content']}}
    </td>
  </tr>
  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #fff; padding-bottom: 12px;">
      Phone: {{$general_setting[1]['setting_content']}}
    </td>
  </tr>
  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #fff; padding-bottom: 12px;">
      Email: <span style="color: #fff;"><a href="javascript:void(0);" style="color: #fff!important">{{$general_setting[0]['setting_content']}}</a></span>
    </td>
  </tr>
  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #000; padding-bottom: 12px;">
      © Capital Motion 2021
    </td>
  </tr>
</table>



</body>
<script src="{{url('public/admin/assets/js/core/jquery.3.2.1.min.js')}}"></script>


<script>
      
     $(".alert-success").fadeTo(5000, 5000).slideUp(500, function(){
      $(".alert-success").slideUp(500);
    });
         
   </script>

   <script>
      
     $(".alert-danger").fadeTo(5000, 5000).slideUp(500, function(){
      $(".alert-danger").slideUp(500);
    });
         
   </script>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.1.62/jquery.inputmask.bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js" integrity="sha256-sPB0F50YUDK0otDnsfNHawYmA5M0pjjUf4TvRJkGFrI=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js" integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo=" crossorigin="anonymous"></script>


<script type="text/javascript">
  $(document).ready(function(){


    $.validator.addMethod("checkallowedchars", function (value) {
        /*var pattern = new RegExp('^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%&*^()])[a-zA-Z0-9!@#$%&*^()]+$');*/
        var pattern = new RegExp('^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%&*^()?,.<>:;+_=-])[a-zA-Z0-9!@#$%&*^()?,.<>:;+_=-{}|"/]+$');
        return pattern.test(value)
    }, "Password must contain at least one number, one uppercase letter and one special character.");

    $("#submit_btn").on("click",function(){
      let password = $("#password").val();
      let confirm_password = $("#confirm_password").val();
      let validate = "false";
      
      if(password.length <= 5){
        $("#password-error").text("New password must be at least 6 characters long.").show();
        validate = "true";
      }else{
        $("#password-error").text("").hide();
      }

      if(password == ""){
        $("#password-error").text("Please enter new password.").show();
        validate = "true";
      }

      if(password != confirm_password){
        $("#confirm_password-error").text("New password and confirm password must be same.").show();
        validate = "true";
      }else{
        $("#confirm_password-error").text("").hide();
      }

      if(confirm_password == ""){
        $("#confirm_password-error").text("Please enter confirm password.").show();
        validate = "true";
      }


      if(validate == "true"){
        return false;
      }else{
        $("#validate_form").submit();
      }

    });

    // $("#validate_form").validate({
    //     rules: {
    //         password: {
    //             required: true,
    //             minlength: 6,
    //             maxlength:100,
    //             //checkallowedchars: true
    //         },
    //         confirm_password: {
    //             required: true,
    //             equalTo: "#password"
    //         }
    //     },
    //     messages: {
    //         password: {
    //             required: "Please enter new password.",
    //             minlength: "New password must be at least 6 characters long."
    //         },
    //         confirm_password: {
    //             required: "Please enter confirm password.",
    //             equalTo: "New password and confirm password must be same."
    //         }
    //     },submitHandler:function(form){
    //         $("#submit_btn").attr("disabled",true);
    //         form.submit();
                
    //       }
    // });
  });
</script>

<script type="text/javascript">
    function AvoidSpace(event) {
        var k = event ? event.which : window.event.keyCode;
        if (k == 32) return false;
    } 

    $(document).ready(function(){
      $("#eye").on("click",function(){
        let check_type = $(this).parent().children("#confirm_password").attr("type");

        if(check_type == "password"){

          $(this).parent().children("#confirm_password").attr("type","text");
          $('#eye_hide').show();
          $('#eye').hide();
        }else{
          $(this).parent().children("#confirm_password").attr("type","password");
          $('#eye_hide').hide();
          $('#eye').show();
        }
      });

      $("#eye_hide").on("click",function(){
        let check_type = $(this).parent().children("#confirm_password").attr("type");

        if(check_type == "password"){

          $(this).parent().children("#confirm_password").attr("type","text");
          $('#eye_hide').show();
          $('#eye').hide();
        }else{
          $(this).parent().children("#confirm_password").attr("type","password");
          $('#eye_hide').hide();
          $('#eye').show();
        }
      });
    });
</script>

<script type="text/javascript">
  $(".close_icon").on("click",function(){
    $(".alert").css("display","none");
  });
</script>

</html>
