<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Models\GeneralSetting;

class ReferralEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_refer_notification, $refer_user_find, $show_message;
    public function __construct($admin_refer_notification, $refer_user_find,$show_message)
    {
        $this->admin_refer_notification = $admin_refer_notification;
        $this->refer_user_find = $refer_user_find;
        $this->show_message = $show_message;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $general_setting = GeneralSetting::all();
        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject('Referral Bonus Notification')
        ->view('admin.email.referral-email')
        ->with([
            'admin_refer_notification'   => $this->admin_refer_notification,
            'refer_user_find'   => $this->refer_user_find,
            'general_setting'   => $general_setting,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
            'show_message'   => $this->show_message,
        ]);
    }
}
