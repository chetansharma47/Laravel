<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOfferSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offer_settings', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('offer_id')->unsigned();
            $table->foreign('offer_id')->references('id')->on('offers')->onDelete('cascade');
            $table->integer('city_id')->nullable();
            $table->string('dob')->nullable()->default('Today');
            $table->enum('gender',['None','Male','Female','Other'])->nullable()->default('None');
            $table->date('date')->nullable();
            $table->date('txn_start_period')->nullable();
            $table->date('txn_end_period')->nullable();
            $table->enum('txn_amount_condition',['Between','Greater Than'])->nullable();
            $table->double('from_price')->nullable()->default(0);
            $table->double('to_price')->nullable()->default(0);
            $table->enum('offer_type',['Normal','BirthdayOffer']);
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
        Schema::dropIfExists('offer_settings');
    }
}
