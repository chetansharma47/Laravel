<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Models\GeneralSetting;

class TransactionEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_transaction_notification, $user_find;
    public function __construct($admin_transaction_notification, $user_find)
    {
        $this->admin_transaction_notification = $admin_transaction_notification;
        $this->user_find = $user_find;
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
        ->subject('Transaction Notification')
        ->view('admin.email.transaction-email')
        ->with([
            'admin_transaction_notification'   => $this->admin_transaction_notification,
            'user_find'   => $this->user_find,
            'general_setting'   => $general_setting,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);
    }
}
