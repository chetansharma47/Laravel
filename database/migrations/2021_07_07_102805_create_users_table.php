<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->bigInteger('customer_id')->nullable();
            $table->string('image')->nullable();
            $table->string('country_code');
            $table->string('mobile_number');
            $table->string('first_name');
            $table->string('last_name');
            $table->string('email');
            $table->string('password');
            $table->string('city_of_residence')->nullable();
            $table->string('nationality')->nullable();
            $table->string('dob')->nullable();
            $table->enum('gender',['Male','Female','Other'])->nullable();
            $table->string('self_reference_code')->nullable();
            $table->string('reference_code')->nullable();
            $table->enum('device_type',['None','Ios','Android'])->default('None');
            $table->text('device_token')->nullable();
            $table->longText('reset_password_token')->nullable();
            $table->longtext('verify_email_token')->nullable();
            $table->string('is_block')->default(0)->comment("0 => Unblocked 1 => Blocked");
            $table->string('is_verify')->default(0)->comment("0 => Not Verify, 1 => Verify");
            $table->string('refresh_token')->nullable();
            $table->integer('is_active')->default(2)->comment("1 => active, 2 => inactive");
            $table->string('wallet_cash')->nullable();
            $table->string('customer_tier')->nullable();
            $table->string('reference_by')->nullable();
            $table->string('bar_code')->nullable();
            $table->string('qr_code')->nullable();
            $table->date('tier_update_date')->nullable();
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
