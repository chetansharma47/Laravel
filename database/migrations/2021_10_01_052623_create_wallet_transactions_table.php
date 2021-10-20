<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWalletTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wallet_transactions', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('venue_user_id')->unsigned();
            $table->foreign('venue_user_id')->references('id')->on('venue_users')->onDelete('cascade');
            $table->integer('venu_id')->unsigned();
            $table->foreign('venu_id')->references('id')->on('venus')->onDelete('cascade');
            $table->longText('description')->nullable();
            $table->dateTime('date_and_time');
            $table->double('cashback_earned')->default(0);
            $table->double('cashback_percentage')->default(0);
            $table->double('redeemed_amount')->default(0);
            $table->double('total_bill_amount')->default(0);
            $table->double('pay_bill_amount')->default(0);
            $table->integer('is_cross_verify')->default(0);
            $table->string('invoice_number')->nullable();
            $table->string('offer_product_ids')->nullable();
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
        Schema::dropIfExists('wallet_transactions');
    }
}
