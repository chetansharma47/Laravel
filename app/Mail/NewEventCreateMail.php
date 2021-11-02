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

    protected $admin_event_notification, $user_find, $find_event;
    public function __construct($admin_event_notification, $user_find, $find_event)
    {
        $this->admin_event_notification = $admin_event_notification;
        $this->user_find = $user_find;
        $this->find_event = $find_event;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $event = $this->find_event;

        $url = $event->image;
        $event_image = substr(strrchr($url, '/'), 1);

        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject("What's Happening: ".$this->find_event->event_name." at ".$this->find_event->venu->venue_name)
        ->view('admin.email.event-create-email')
        ->with([
            'admin_event_notification'   => $this->admin_event_notification,
            'user_find'   => $this->user_find,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
            'event_image'   => public_path('/storage/venue') . "/" . $event_image,
            'event' => $event
        ]);
    }
}
