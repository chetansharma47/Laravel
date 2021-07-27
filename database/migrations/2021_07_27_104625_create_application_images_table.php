<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApplicationImagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('application_images', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('application_data_id')->unsigned();
            $table->foreign('application_data_id')->references('id')->on('application_datas')->onDelete('cascade');
            $table->string('image');
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
        Schema::dropIfExists('application_images');
    }
}
