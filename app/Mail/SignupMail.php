<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SignupMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_signup_notification_email, $user, $file_name;
    public function __construct($admin_signup_notification_email, $user, $file_name)
    {
        $this->admin_signup_notification_email = $admin_signup_notification_email;
        $this->user = $user;
        $this->file_name = $file_name;

    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject($this->admin_signup_notification_email->title)
        ->attach(storage_path("app/public/attachment_mail"."/".$this->file_name))
        ->view('admin.email.signup-email')
        ->with([
            'admin_signup_notification_email'   => $this->admin_signup_notification_email,
            'user'   => $this->user,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);
    }
}
