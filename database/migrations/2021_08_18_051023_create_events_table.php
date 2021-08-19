<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('admin_id')->unsigned();
            $table->foreign('admin_id')->references('id')->on('admins')->onDelete('cascade');
            $table->integer('venu_id')->unsigned();
            $table->foreign('venu_id')->references('id')->on('venus')->onDelete('cascade');
            $table->integer('unique_id');
            $table->string('event_name');
            $table->longText('event_description')->nullable();
            $table->string('when_day');
            $table->date('from_date');
            $table->date('to_date');
            $table->time('event_time');
            $table->time('to_time');
            $table->enum('status',['None','Active','Inactive']);
            $table->string('image');
            $table->string('name_of_file_show');
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
        Schema::dropIfExists('events');
    }
}
