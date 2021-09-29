<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAssignUserVenuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assign_user_venues', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('venu_id')->unsigned();
            $table->foreign('venu_id')->references('id')->on('venus')->onDelete('cascade');
            $table->integer('venue_user_id')->unsigned();
            $table->foreign('venue_user_id')->references('id')->on('venue_users')->onDelete('cascade');
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
        Schema::dropIfExists('assign_user_venues');
    }
}
