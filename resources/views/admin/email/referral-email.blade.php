<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Referral Bonus Notification</title>
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
       <td align="center" style="padding-bottom: 15px;">
         <a href="javascript:void(0);" style="border:0; outline:0;"><img src="{{$message->embed($logo)}}" alt="" style="width: 100px;" /></a>
       </td>
    </tr>
  </table>
  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="20" align="left" valign="top">

      <?php 
        $img_second = public_path("admin/assets/email_img/CR-Logo.png");
        $img_third = public_path("admin/assets/email_img/CM-Logo-2.png");
        $iimg = public_path("admin/assets/email_img/curve-bg.png");
        $footer_img = public_path("admin/assets/email_img/footer-bg.png");
       ?>

      <table width="100%" border="0" cellspacing="0" cellpadding="0"  style="background-image: url('{{$message->embed($iimg)}}'); background-repeat: no-repeat; background-size: cover; border-top-left-radius: 30px;border-top-right-radius: 30px;     background-position: bottom;">
        
        <tr>
          <td width="20" align="left" valign="top">&nbsp;</td>
          <td align="center" valign="top" style="padding:5px 0;">
             
              <img src="{{$message->embed($img_second)}}" alt="CR-Logo" style="width: 100px;" width="100"/>
          </td>
          <td width="20" align="left" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td width="20" align="left" valign="top">&nbsp;</td>
          <td align="center" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 700; color: #fff; padding-bottom: 17px;">
            Referral Bonus Notification
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
    <td align="left" valign="top" style="background:#fff; padding:30px 20px;border-bottom-left-radius: 30px;border-bottom-right-radius: 30px;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 700; font-size: 15px; color:#0D0D0D;">Hello, {{$refer_user_find->first_name}} {{$refer_user_find->last_name}}</b></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 400; font-size:14px; color:#474747;">{{$admin_refer_notification->message}}<br><br>

            
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
<table border="0" align="center" cellpadding="0" cellspacing="0" style="background-image: url('{{$message->embed($footer_img)}}'); background-repeat: no-repeat; background-size: cover; border-top-left-radius: 30px;border-top-right-radius: 30px;     background-position: top; width: 100%; padding: 30px 0px 2px;     margin-top: 82px">
  <tr>
    <td align="center">
       <a href="javascript:void(0);" style="border:0; outline:0;"><img src="{{$message->embed($img_third)}}" alt="" style="width: 100px" width="100"/></a>
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
      Office SG3, Al Bandar, Al Raha Beach,<br/> Abudhabi, UAE - P O Box 130122
    </td>
  </tr>
  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #fff; padding-bottom: 12px;">
      Phone: +971 2449 9036 / Toll Free 800 6996
    </td>
  </tr>
  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #fff; padding-bottom: 12px;">
      Email: <span style="color: #fff;"><a href="javascript:void(0);" style="color: #fff!important">info@capitalmotion.com</a></span>
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
