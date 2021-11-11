<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Mail;
use App\Mail\MultipleEventCroneMailSend;

class MultipleEventsJobSendMail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
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
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        

        if($this->admin_event_notification->email_type == 1){
            try{
                \Mail::to($this->user_find->email)->send(new MultipleEventCroneMailSend($this->admin_event_notification, $this->user_find, $this->events));
            }catch(\Exception $ex){
                //return $ex->getMessage();
            }
        }
    }
}
