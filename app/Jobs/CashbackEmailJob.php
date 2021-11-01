<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Mail;
use App\Mail\CashbackEmail;
use App\Models\User;
use App\Models\AdminNotification;
use App\Models\AdminCriteriaNotification;

class CashbackEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    protected $admin_cashback_notification, $find_user;
    public function __construct($admin_cashback_notification, $find_user)
    {
        $this->admin_cashback_notification = $admin_cashback_notification;
        $this->find_user = $find_user;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        if($this->admin_cashback_notification->email_type == 1){
            try{
                \Mail::to($this->find_user->email)->send(new CashbackEmail($this->admin_cashback_notification, $this->find_user));
            }catch(\Exception $ex){
                //return $ex->getMessage();
            }
        }
    }
}
