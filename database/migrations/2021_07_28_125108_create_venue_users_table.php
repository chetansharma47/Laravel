<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVenueUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('venue_users', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('venu_id')->unsigned()->nullable();
            $table->foreign('venu_id')->references('id')->on('venus')->onDelete('cascade');
            $table->string('username');
            $table->string('password');
            $table->string('venue_name');
            $table->enum('status',['None','Active','Inactive'])->default('None');
            $table->string('device_model')->nullable();
            $table->string('mac_address')->nullable();
            $table->enum('authorized_status',['Unauthorized','Authorized'])->default('Unauthorized');
            $table->dateTime('date_time')->nullable();
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
        Schema::dropIfExists('venue_users');
    }
}
