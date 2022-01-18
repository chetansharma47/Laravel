<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Mail;
use App\Mail\AssignBadgeMail;


class UserAssignBadgeJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
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
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {

        try{
            \Mail::to($this->find_user->email)->send(new AssignBadgeMail($this->find_assign_badge, $this->find_user, $this->find_badge));
        }catch(\Exception $ex){
            // return $ex->getMessage();
        }
    }
}
