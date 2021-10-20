<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class NewEventCreateMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_event_notification, $user_find;
    public function __construct($admin_event_notification, $user_find)
    {
        $this->admin_event_notification = $admin_event_notification;
        $this->user_find = $user_find;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject('New Event Create Notification')
        ->view('admin.email.event-create-email')
        ->with([
            'admin_event_notification'   => $this->admin_event_notification,
            'user_find'   => $this->user_find,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);
    }
}
