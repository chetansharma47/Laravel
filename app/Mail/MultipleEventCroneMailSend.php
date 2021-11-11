<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class MultipleEventCroneMailSend extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected $admin_event_notification, $user_find, $events;
    public function __construct($admin_event_notification, $user_find, $events)
    {
        $this->admin_event_notification = $admin_event_notification;
        $this->user_find = $user_find;
        $this->events = $events;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject("Multiple Event Notifications")
        ->view('admin.email.multiple-event-email')
        ->with([
            'admin_event_notification'   => $this->admin_event_notification,
            'user_find'   => $this->user_find,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
            'events' => $this->events
        ]);
    }
}
