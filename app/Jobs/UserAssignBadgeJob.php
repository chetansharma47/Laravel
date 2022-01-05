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
    protected $user_find, $find_badge, $value;
    public function __construct($user_find, $find_badge, $value)
    {
        $this->user_find = $user_find;
        $this->find_badge = $find_badge;
        $this->value = $value;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {

        try{
            \Mail::to($this->user_find['email'])->send(new AssignBadgeMail($this->user_find, $this->find_badge, $this->value));
        }catch(\Exception $ex){
            // return $ex->getMessage();
        }
    }
}
