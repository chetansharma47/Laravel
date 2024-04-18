<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdminCriteriaNotificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admin_criteria_notifications', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('city_id')->nullable();
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('city_name')->nullable();
            $table->longText('message')->nullable();
            $table->integer('push_type')->default(0);
            $table->integer('sms_type')->default(0);
            $table->enum('gender',['None','Male','Female','Other','All'])->nullable()->default('None');
            $table->string('nationality')->nullable();
            $table->string('sent_by')->nullable()->default('Admin');
            $table->date('txn_start_period')->nullable();
            $table->date('txn_end_period')->nullable();
            $table->enum('txn_amount_condition',['Between','Greater Than'])->nullable();
            $table->double('from_price')->nullable()->default(0);
            $table->double('to_price')->nullable()->default(0);
            $table->integer('noti_type')->nullable()->comment("1=> Transaction, 2=> Cahsback, 3=> Bonus, 4=> Referral, 5 => Event, 6=> Offer, 7=> Creteria");
            $table->integer('event_id')->nullable();
            $table->integer('offer_id')->nullable();
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
        Schema::dropIfExists('admin_criteria_notifications');
    }
}
