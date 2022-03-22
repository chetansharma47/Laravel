<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="30">
<title>New Event Create Notification</title>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Signika:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>


<style type="text/css">
  .ii a[href] {
    color: #fff!important;
}

</style>
<body style="background-color: #f9fafb; padding: 0;
    margin: 0;">
  <table width="400" border="0" align="center" cellpadding="0" cellspacing="0"  style="margin-top: 48px;">
    <tr>
      <td align="left" valign="top" style="font-family: 'Lato', sans-serif; font-weight: 700; font-size: 15px; color:#0D0D0D; padding: 23px 0px 12px;">Hello, {{$user_find->first_name}} {{$user_find->last_name}}
      </td>
    </tr>
    <tr>
      <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 400; font-size:14px; color:#000;">{{$admin_event_notification->message}}
      </td>
    </tr>
    <tr>
      <td align="left" valign="top">&nbsp;</td>
    </tr>
  </table>
  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 48px;">
    <tr>
       <td align="center" style="padding: 23px 0px 12px;">
         <a href="javascript:void(0);" style="border:0; outline:0;"><img src="{{$message->embed($logo)}}" alt="" style="width: 100px;" /></a>
       </td>
    </tr>
  </table>
      <?php 
        $img_second = public_path("admin/assets/email_img/CR-Logo.png");
        $img_third = public_path("admin/assets/email_img/CM-Logo-2.png");
        $iimg = public_path("admin/assets/email_img/curve-bg.png");
        $footer_img = public_path("admin/assets/email_img/footer-bg.png");
        $pin = public_path("pin.png");
        $cal = public_path("cal.png");
        $clock = public_path("icon.png");
        $call = public_path("call.png");
        $location = public_path("location.png");
        $bag = public_path("bag.png");
        $open_app = public_path("open_app.png");
       ?>

  @foreach($events as $event)

  <?php 
    $url = $event->image;
    $event_image_name = substr(strrchr($url, '/'), 1);
    $event_image = public_path('/storage/venue') . "/" . $event_image_name;
  ?>
  <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="20" align="left" valign="top">


      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="border-top-left-radius: 30px; border-top-right-radius: 30px; background-color: #fff;">
        <img src="{{$message->embed($event_image)}}" alt="" style="border-top-left-radius: 30px;border-top-right-radius: 30px; width: 442px;" />
            
          </td>
        </tr>
        <!-- <tr>
          <td width="20" align="left" valign="top">&nbsp;</td>
          <td align="center" valign="top" style="padding:5px 0;">
            <div style="width: 300px">
             
              <img src="{{$message->embed($img_second)}}" alt="CR-Logo" style="width: 100px;" width="100"/>
            </div> 
              <img src="{{$message->embed($img_second)}}" alt="CR-Logo" style="width: 100px;" width="100"/>
          </td>
          <td width="20" align="left" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td width="20" align="left" valign="top">&nbsp;</td>
          <td align="center" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 700; color: #fff; padding-bottom: 17px;">
          &nbsp;
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
      <table width="400" border="0" cellspacing="0" cellpadding="0" style="width: 400px;">
      <tr>
        <td align="left" valign="top">
          <table width="400" border="0" cellspacing="0" cellpadding="0">
          <!-- <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 700; font-size: 15px; color:#0D0D0D;">Hello, {{$user_find->first_name}} {{$user_find->last_name}}</td>
          </tr> -->
          <!-- <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr> -->

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 500; font-size:18px; color:#000;">Events
            
            </td>
          </tr>

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 600; font-size:28px; color:#dba520;">{{$event->event_name}}
            
            </td>
          </tr>

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 500; font-size:14px; color:#1081af;"><img src="{{$message->embed($pin)}}">&nbsp;{{$event->venu->venue_name}}
            
            </td>
          </tr>

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 500; font-size:14px; color:#1081af;">{{$event->venu->address}}
            
            </td>
          </tr>

          <?php 
            $from_date = Carbon\Carbon::parse($event->from_date)->format('d M Y');
            $to_date = Carbon\Carbon::parse($event->to_date)->format('d M Y');
            $from_time = Carbon\Carbon::parse($event->from_date." ".$event->event_time)->format('g:i A');
            $to_time = Carbon\Carbon::parse($event->to_date." ".$event->to_time)->format('g:i A');
             

          ?>
          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 600; font-size:14px; color:#ccc;"><img src="{{$message->embed($cal)}}">&nbsp;{{$from_date}} - {{$to_date}}
            
            </td>
          </tr>

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 600; font-size:14px; color:#ccc;"><img src="{{$message->embed($clock)}}">&nbsp;{{$from_time}} to {{$to_time}}
            
            </td>
          </tr>

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 600; font-size:14px; color:#ccc;width: 300px;"><div style="width: 300px;"> {{$event->when_day}}</div>
            </td>
          </tr>


          <tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>

          <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 400; font-size:14px; color:#000;">{{$event->event_description}}<br><br>

            
            </td>
          </tr>
          <tr>
            <td height="10" align="left" valign="top">&nbsp;</td>
          </tr>
          <table width="400" border="0" cellspacing="0" cellpadding="0">
           <tr>
            <td align="left" valign="top" style="font-family: 'Lato', sans-serif;
     font-weight: 600; font-size:14px; color:#ccc; text-align: center;">
              <tr>
                <td style="text-align: center;">
                   <a href="tel:{{$general_setting[1]['setting_content']}}" style="color: #fff!important;">
                    <img src="{{$message->embed($call)}}" style="width: 50px;"/>
                    <span style="display: block; padding: 0px 0px 0px 0px; color: #ccc; font-size: 11px;">Call Us</span>
                  </a>
                </td>
                <td style="text-align: center;">
                  <a href="{{$event->venu->google_map_location_link}}" style="color: #fff!important;">
                    <img src="{{$message->embed($location)}}" style="width: 50px;"/>
                    <span style="display: block; padding: 0px 0px 0px 0px; color: #ccc; font-size: 11px;">Location</span>
                  </a>
                </td>
                <td style="text-align: center;">
                  <a href="{{$event->venu->book_now_link}}" style="color: #fff!important;">
                    <img src="{{$message->embed($bag)}}" style="width: 50px;"/>
                    <span style="display: block; padding: 0px 0px 0px 0px; color: #ccc; font-size: 11px;">Book Now</span>
                  </a>
                </td>
                <td style="text-align: center;">
                  <a href="https://gozl8.test-app.link/RN3Hfsykbkb" style="color: #fff!important;">
                    <img src="{{$message->embed($open_app)}}" style="width: 50px;"/>
                    <span style="display: block; padding: 0px 0px 0px 0px; color: #ccc; font-size: 11px;">Open App</span>
                  </a>
                </td>
              </tr>
            </td>
          </tr>
        </table>


          <!-- <tr>
            <td height="10" align="left" valign="top" style="text-align: center; color: #ccc; padding-left: 16px; font-size: 11px;">
              <span style="padding: 0px 8px 0px 0px;">Call Us</span>
              <span style="padding: 0px 8px 0px 0px;">Location</span>
              <span style="padding: 0px 8px 0px 0px;">Book Now</span>
              <span style="padding: 0px 8px 0px 0px;">Open App</span>
            </td>
          </tr> -->

          <tr>
            <td height="10" align="left" valign="top">&nbsp;</td>
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
<br><br>
@endforeach()
<table border="0" align="center" cellpadding="0" cellspacing="0" style="background-color: #0b68ac; width: 100%; padding: 30px 50px 2px; margin-top: 82px;">
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
 <!--  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #fff; padding-bottom: 12px;">
      Phone: {{$general_setting[1]['setting_content']}}
    </td>
  </tr> -->
  <tr>
    <td align="center" style="font-family: 'Lato', sans-serif;
    font-weight: 400; font-size: 12px; color: #fff; padding-bottom: 12px;">
      Email: <span style="color: #fff;"><a href="javascript:void(0);" style="color: #fff!important">{{$general_setting[0]['setting_content']}}</a></span>
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
