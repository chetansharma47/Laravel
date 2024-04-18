<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLoginRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('login_requests', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('venue_user_id')->unsigned()->nullable();
            $table->foreign('venue_user_id')->references('id')->on('venue_users')->onDelete('cascade');
            $table->integer('venu_id')->unsigned()->nullable();
            $table->foreign('venu_id')->references('id')->on('venus')->onDelete('cascade');
            $table->string('device_model')->nullable()->default('N/A');
            $table->string('mac_address')->nullable()->default('N/A');
            $table->enum('authorized_status',['Unauthorized','Authorized'])->default('Unauthorized');
            $table->dateTime('date_time')->nullable();
            $table->string('device_type')->nullable();
            $table->string('device_token')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('login_requests');
    }
}
