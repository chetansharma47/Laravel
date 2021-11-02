<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class OfferAssignMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $admin_offer_notification, $user_find, $offer_assign, $offer;
    public function __construct($admin_offer_notification, $user_find, $offer_assign, $offer)
    {
        $this->admin_offer_notification = $admin_offer_notification;
        $this->user_find = $user_find;
        $this->offer_assign = $offer_assign;
        $this->offer = $offer;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        $offer = $this->offer;

        $url = $offer->image;
        $offer_image = substr(strrchr($url, '/'), 1);

        if($offer->offer_type == "BirthdayOffer"){
            $path = public_path('/') . $offer_image;
        }else{
            $path = public_path('/storage/venue') . "/" . $offer_image;
        }

        return $this->from(env('MAIL_USERNAME'), 'Capital Motion')
        ->subject("What's Happening: ".$this->offer->offer_name." at ".$this->offer->venu->venue_name)
        ->view('admin.email.offer-assign-email')
        ->with([
            'admin_offer_notification'   => $this->admin_offer_notification,
            'user_find'   => $this->user_find,
            'logo'   => public_path('admin/assets/email_img/CM-Logo-2.png'),
            'offer_image'   => $path,
            'offer' => $offer
        ]);
    }
}
