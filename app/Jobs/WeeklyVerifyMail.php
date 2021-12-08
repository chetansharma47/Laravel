<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Mail;
use App\Mail\WeeklyVerifyEmail;

class WeeklyVerifyMail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    protected $user_to_array, $token;
    public function __construct($user_to_array, $token)
    {
        $this->user_to_array = $user_to_array;
        $this->token = $token;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        try{
            $link = url("confirm-account/$this->token");

            \Mail::to($this->user_to_array['email'])->send(new WeeklyVerifyEmail($this->user_to_array, $link));

        }catch(\Exception $ex){                                           
           // echo $ex->getMessage(); die();
        }
    }
}
