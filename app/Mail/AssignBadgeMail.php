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

    protected $find_assign_badge, $find_user, $find_badge;
    public function __construct($find_assign_badge, $find_user, $find_badge)
    {
        $this->find_assign_badge = $find_assign_badge;
        $this->find_user = $find_user;
        $this->find_badge = $find_badge;
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
            'find_user'   => $this->find_user,
            'find_badge'   => $this->find_badge,
            'find_assign_badge'   => $this->find_assign_badge,
            'general_setting'   => $general_setting,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
        ]);
    }
}
