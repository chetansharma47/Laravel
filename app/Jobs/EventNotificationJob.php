<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Mail;
use App\Mail\NewEventCreateMail;
use App\Models\AdminCriteriaNotification;

class EventNotificationJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
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
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        

        if($this->admin_event_notification->email_type == 1){
            try{
                \Mail::to($this->user_find->email)->send(new NewEventCreateMail($this->admin_event_notification, $this->user_find, $this->find_event));
            }catch(\Exception $ex){
                //return $ex->getMessage();
            }
        }
    }

}
