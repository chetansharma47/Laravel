<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ReferralEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_refer_notification, $refer_user_find;
    public function __construct($admin_refer_notification, $refer_user_find)
    {
        $this->admin_refer_notification = $admin_refer_notification;
        $this->refer_user_find = $refer_user_find;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject('Referral Bonus Notification')
        ->view('admin.email.referral-email')
        ->with([
            'admin_refer_notification'   => $this->admin_refer_notification,
            'refer_user_find'   => $this->refer_user_find,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);
    }
}
