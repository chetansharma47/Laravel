<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="30">
<title>Reset Your Password</title>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Signika:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>


<style type="text/css">
  .ii a[href] {
    color: #fff!important;
}

</style>
<body style="background-color: #f9fafb; padding: 0;
    margin: 0;">
  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 48px;">
    <tr>
       <td align="center" style="padding: 23px 0px 12px;">
         <a href="javascript:void(0);" style="border:0; outline:0;"><img src="{{$message->embed($logo)}}" alt="" style="width: 100px;" /></a>
       </td>
    </tr>
  </table>
  <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="20" align="left" valign="top">

      <?php 
        $img_second = public_path("admin/assets/email_img/CR-Logo.png");
        $img_third = public_path("admin/assets/email_img/CM-Logo-2.png");
        $iimg = public_path("admin/assets/email_img/curve-bg.png");
        $reset_curve_top = public_path("admin/assets/email_img/reset-top-curve.png");
        $footer_img = public_path("admin/assets/email_img/footer-bg.png");
        $bottom_curve_top = public_path("admin/assets/email_img/bottom_curve_top.png");
       ?>

      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="border-top-left-radius: 30px; border-top-right-radius: 30px; background-color: #fff;">
        <img src="{{$message->embed($reset_curve_top)}}" alt="" style="border-top-left-radius: 30px;border-top-right-radius: 30px; width: 442px;" />
            
          </td>
        </tr>
        
        
        <!-- <tr>
          <td width="20" align="left" valign="top">&nbsp;</td>
          <td align="center" valign="top" style="padding:5px 0;">
             <div style="width: 300px">
              <img src="{{$message->embed($img_second)}}" alt="CR-Logo" style="width: 100px;" width="100"/>
            </div>
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
        </tr> -->
    </table>
  </td>
  </tr>
  <!-- <tr>
    <td height="1" align="left" valign="top" bgcolor="#d9d9d9"></td>
  </tr> -->
  <tr>
    <td align="left" valign="top" style="background:#fff; padding:30px 20px;border-bottom-left-radius: 30px;border-bottom-right-radius: 30px;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 700; font-size: 15px; color:#0D0D0D;">Hello, {{$user->first_name}} {{$user->last_name}}</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 400; font-size:14px; color:#474747;">We have received a request to reset your Capital Motion account password associate with this email address.
            If you have not made this request, you can ignore this email and we assure you that your account is completely secure.<br><br>

            If you do need to reset your Capital Motion password, click the button given below.
            </td>
          </tr>
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
            <td align="center" valign="top"> <a href="{{$link}}" style=" font-family: 'Lato', sans-serif;
    font-weight: 600;
    font-size: 25px;
    color: #474747;
    background-color: #0B68AC;
    padding: 12px 9px;
    max-width: 300px;
    display: block;
    text-align: center;
    margin: 0 auto;
    color: #fff;
    text-decoration: none;
    border-radius: 50px;
    margin-bottom: 41px;">Reset Your Password</a></td>
          </tr>
        </table></td>
      </tr>
      <!-- <tr>
        <td height="" align="left" valign="top">&nbsp;</td>
      </tr> -->
    
    </table>
  </td>
  </tr>


  <!-- <tr>
    <td align="left" valign="top" style="background:#193358; padding:20px; text-align:center;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center" valign="top" style="font-family:arial, sans-serif; font-size:13px; color:#fff;">©Copyright2021</td>
      </tr>
    </table></td>
  </tr> -->
</table>
<!-- <div style="margin-bottom: -6px !important;">
<img src="{{$message->embed($bottom_curve_top)}}" alt="" style="width: 100%; margin-bottom: -6px !important;
    margin-top: 67px;"/>
  
</div> -->
<table border="0" align="center" cellpadding="0" cellspacing="0" style="background-color: #0b68ac; width: 100%; padding: 30px 0px 2px; margin-top: 82px;">
  <tr>
    <td align="center">
       <a href="javascript:void(0);" style="border:0; outline:0;"><img src="{{$message->embed($img_third)}}" alt="" style="width: 100px;"/></a>
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
      Email: <span style="color: #fff;"><a href="javascript:void(0);" style="color: #fff!important;">{{$general_setting[0]['setting_content']}}</a></span>
    </td>
  </tr>
  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #000; padding-bottom: 12px;">
      ©  Capital Motion {{date('Y')}}
    </td>
  </tr>
</table>
</body>
</html>
