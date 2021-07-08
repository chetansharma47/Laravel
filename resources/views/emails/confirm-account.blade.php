<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css?family=Bitter" rel="stylesheet">
<link rel="icon" href="{{url('public/other_css/img/app_icon.png')}}" type="image/x-icon">
<title>Account Confirm</title>
</head>

<body>
  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="background:#efefef; margin-top:10px;">
  <tr>
    <td width="20" align="left" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr style="background-color: #7E7D7B;">
        <td width="20" align="left" valign="top">&nbsp;</td>
        <td align="center" valign="top" style="padding:20px 0;">
          <!-- <a href="javascript:void(0);" style="border:0; outline:0;"><img src="" alt="" width="100"/></a> -->
          <div style="border:0; outline:0;"><img src="{{$message->embed($logo)}}" alt="" width="115px"/></div>
        </td>
        <td width="20" align="left" valign="top">&nbsp;</td>
      </tr>
    </table>
  </td>
  </tr>
  <tr>
    <td height="1" align="left" valign="top" bgcolor="#d9d9d9"></td>
  </tr>
  <tr>
    <td align="left" valign="top" style="background:#efefef; padding:30px 20px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <?php 
              if(!empty($data['first_name'])){
                $name = $data['first_name'] . ' ' . $data['last_name'];
              }else{
                $name = "User";
              }
            ?>
            <td align="center" valign="top" style=" font-size:40px; color:#474747;">Hello, {{$name}}</b></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td valign="top" style="padding:3px; font-family:arial, sans-serif; font-size:18px; color:#474747;">
              Thanks for registering with Capital Motion, Please click on the button below to verify your email address.
            </td>
          </tr>

          
          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
             <tr>
            <td style="">
              <h2 style="font-family:Arial, sans-serif, 'Helvetica Neue', Helvetica; font-size:18px;background:#efefef; color:#393939; font-weight:normal; margin:0; padding-left: 0;">
                Best Regards,<br>
                Capital Motion

              </h2>
            </td>
          </tr>

          </tr>
          
          <tr>
            <td height="10" align="left" valign="top"></td>
          </tr>


          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>

          <tr>
            <td align="center" valign="top"> <a href="{{$link}}"; style="border-radius: 5px; font-family:arial, sans-serif; font-size:14px; color:#fff; background-color: #3ABD6F; padding: 12px 9px; max-width: 120px; display: block; text-align: center; margin: 0 auto; text-decoration: none; border-radius: 10px;">Verify Email</a></td>
          </tr>
        </table></td>
      </tr>
      

    </table>
  </td>
  </tr>


  <tr>
    <td align="left" valign="top" style="background:#193358; padding:20px; text-align:center;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">

      <tr>
        <td align="center" valign="top" style="font-family:arial, sans-serif; font-size:13px; color:#fff;">© Capital Motion {{date('Y')}}</td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>