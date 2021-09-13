<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserAssignOffersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_assign_offers', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('offer_id')->unsigned();
            $table->foreign('offer_id')->references('id')->on('offers')->onDelete('cascade');

            $table->integer('offer_setting_id')->unsigned();
            $table->foreign('offer_setting_id')->references('id')->on('offer_settings')->onDelete('cascade');

            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');

            $table->integer('city_id')->nullable();
            $table->string('dob')->nullable()->default('Today');
            $table->enum('gender',['None','Male','Female','Other'])->nullable()->default('None');
            $table->date('date')->nullable();
            $table->date('assign_at')->nullable();
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
        Schema::dropIfExists('user_assign_offers');
    }
}
