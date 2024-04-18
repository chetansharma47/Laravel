<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Reset Password</title>
<link rel="icon" href="{{url('public/other_css/img/app_icon.png')}}" type="image/x-icon">
</head>

<body>
  <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" style="background:#efefef; margin-top:10px;">
  <tr>
    <td width="20" align="left" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr style="background-color: #7E7D7B;">
        <td width="20" align="left" valign="top">&nbsp;</td>
        <td align="center" valign="top" style="padding:20px 0;">
        	<div style="border:0; outline:0; width: 30%;"><img src="{{$message->embed($logo)}}" alt="" width="115px"/></div>
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
            <td align="center" valign="top" style="font-family:arial, sans-serif; font-size:25px; color:#474747; font-weight: 600;">Reset Password</b></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
		  	  <tr>
            <td style="">
              <h2 style="font-family:Arial, sans-serif, 'Helvetica Neue', Helvetica; font-size:20px;background:#efefef; color:#393939; font-weight:normal; margin:0; padding-left: 0;">
                Hello, Admin

              </h2>
            </td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top" style="font-family:arial, sans-serif; font-size:15px; color:#474747;">We have received a request to reset your Capital Motion account password associate with this email address.<br>If you have not made this request, you can ignore this email and we assure you that your account is completely secure.<br>
            If you do need to reset your Capital Motion password, click the button given below.
            </td>
          </tr>


		      <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" valign="top"> <a href="{{$link}}"; style="font-family:arial, sans-serif; font-size:14px; color:#fff; background-color: #3ABD6F; padding: 12px 9px; max-width: 215px; display: block; text-align: center; margin: 0 auto; text-decoration: none; border-radius: 10px;">Click here for reset your password</a></td>
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
        <td align="center" valign="top" style="font-family:arial, sans-serif; font-size:13px; color:#fff;">©  Capital Motion {{date('Y')}}</td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>