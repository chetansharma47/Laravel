<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOffersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offers', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('admin_id')->unsigned();
            $table->foreign('admin_id')->references('id')->on('admins')->onDelete('cascade');
            $table->integer('venu_id')->unsigned();
            $table->foreign('venu_id')->references('id')->on('venus')->onDelete('cascade');
            $table->integer('unique_id');
            $table->string('offer_name');
            $table->longText('offer_desc')->nullable();
            $table->string('image');
            $table->string('name_of_file_show');
            $table->date('from_date')->nullable();
            $table->date('to_date')->nullable();
            $table->time('time')->nullable();
            $table->time('to_time')->nullable();
            $table->enum('status',['None','Active','Inactive']);
            $table->enum('offer_type',['Normal','BirthdayOffer']);
            $table->integer('pos_product_id')->nullable();
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
        Schema::dropIfExists('offers');
    }
}
