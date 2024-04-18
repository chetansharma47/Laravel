<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Models\GeneralSetting;

class SignupMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_signup_notification_email, $user, $file_name, $data ,$link, $admin_notification_find;
    public function __construct($admin_signup_notification_email, $user, $file_name, $data, $link, $admin_notification_find)
    {
        $this->admin_signup_notification_email = $admin_signup_notification_email;
        $this->user = $user;
        $this->file_name = $file_name;
        $this->data = $data;
        $this->link = $link;
        $this->admin_notification_find = $admin_notification_find;

    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        $general_setting = GeneralSetting::all();
        if($this->admin_signup_notification_email->is_title == 1){
            $title = $this->admin_signup_notification_email->title;
        }else{
            $title = 'Welcome user';
        }
        $email_send = $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject($title)
        ->view('admin.email.signup-email')
        ->with([
            'admin_signup_notification_email'   => $this->admin_signup_notification_email,
            'user'   => $this->user,
            'data'   => $this->data,
            'link'   => $this->link,
            'admin_notification_find'   => $this->admin_notification_find,
            'general_setting'   => $general_setting,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);

        if($this->admin_signup_notification_email->is_attachment == 1){
            return $email_send->attach(storage_path("app/public/attachment_mail"."/".$this->file_name));
        }else{
            return $email_send;
        }
    }
}
