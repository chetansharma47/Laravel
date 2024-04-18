<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Models\GeneralSetting;

class ChangeEmailAddress extends Mailable
{
    use Queueable, SerializesModels;

    protected $data, $link;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data, $link)
    {
        $this->data = $data;
        $this->link = $link;
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
               ->subject('Verify Email Link')
               ->view('emails.change-email-address')
               ->with([
                   'data'   => $this->data,
                   'link'   => $this->link,
                   'general_setting'   => $general_setting,
                   'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png')
           ]);

    }
}
