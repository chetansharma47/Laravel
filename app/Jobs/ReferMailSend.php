<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Mail;
use App\Mail\ReferralEmail;

class ReferMailSend implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */

    protected $admin_refer_notification, $refer_user_find; 
    public function __construct($admin_refer_notification, $refer_user_find)
    {
        $this->admin_refer_notification = $admin_refer_notification;
        $this->refer_user_find = $refer_user_find;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        
        try{
            \Mail::to($this->refer_user_find->email)->send(new ReferralEmail($this->admin_refer_notification, $this->refer_user_find));
        }catch(\Exception $ex){
            //return $ex->getMessage();
        }

    }
}
