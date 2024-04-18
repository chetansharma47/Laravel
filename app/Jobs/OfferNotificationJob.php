<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use App\Mail\OfferAssignMail;
use App\Models\AdminCriteriaNotification;

class OfferNotificationJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    protected $admin_offer_notification, $offer_assign, $user_find, $offer;
    public function __construct($admin_offer_notification, $offer_assign, $user_find, $offer)
    {
        $this->admin_offer_notification = $admin_offer_notification;
        $this->offer_assign = $offer_assign;
        $this->user_find = $user_find;
        $this->offer = $offer;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {

        if($this->admin_offer_notification->email_type == 1){
            try{
                \Mail::to($this->user_find->email)->send(new OfferAssignMail($this->admin_offer_notification, $this->user_find, $this->offer_assign, $this->offer));
            }catch(\Exception $ex){
                //return $ex->getMessage();
            }
        }
    }

    
}
