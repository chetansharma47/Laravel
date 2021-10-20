<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('venus', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('admin_id')->unsigned();
            $table->foreign('admin_id')->references('id')->on('admins')->onDelete('cascade');
            $table->string('venue_name');
            $table->integer('unique_id')->nullable();
            $table->text('address')->nullable();
            $table->longText('venue_description')->nullable();
            $table->string('phone_number');
            $table->text('google_map_location_link');
            $table->text('book_now_link');
            $table->string('image');
            $table->string('name_of_file_show')->nullable();
            $table->text('menu_link');
            $table->enum('status',['None','Active','Inactive']);
            $table->integer('pos_venue_id')->nullable();
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
        Schema::dropIfExists('venus');
    }
}
