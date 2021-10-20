<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class BonusEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_notification_find, $register;
    public function __construct($admin_notification_find, $register)
    {
        $this->admin_notification_find = $admin_notification_find;
        $this->register = $register;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject('Welcome Bonus Notification')
        ->view('admin.email.bonus-email')
        ->with([
            'admin_notification_find'   => $this->admin_notification_find,
            'register'   => $this->register,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);
    }
}
