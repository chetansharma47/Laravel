<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Models\GeneralSetting;

class AssignBadgeMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $user_find, $find_badge, $value;
    public function __construct($user_find, $find_badge, $value)
    {
        $this->user_find = $user_find;
        $this->find_badge = $find_badge;
        $this->value = $value;
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
        ->subject('Assign Badge')
        ->view('admin.email.assign-badge-email')
        ->with([
            'user_find'   => $this->user_find,
            'find_badge'   => $this->find_badge,
            'value'   => $this->value,
            'general_setting'   => $general_setting,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);
    }
}
