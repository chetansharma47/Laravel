<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class CashbackEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_cashback_notification_find, $find_user;
    public function __construct($admin_cashback_notification_find, $find_user)
    {
        $this->admin_cashback_notification_find = $admin_cashback_notification_find;
        $this->find_user = $find_user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject('Cashback Notification')
        ->view('admin.email.cashback-email')
        ->with([
            'admin_cashback_notification_find'   => $this->admin_cashback_notification_find,
            'find_user'   => $this->find_user,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);
    }
}
