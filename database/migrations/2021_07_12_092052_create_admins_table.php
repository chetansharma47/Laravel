<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdminsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admins', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email')->nullable();
            $table->string('password');
            $table->enum('status',['Inactive','Active'])->nullable();
            $table->enum('role_type',['Super Admin','Admin','Marketing','Managment','Staff'])->nullable();
            $table->rememberToken();
            $table->timestamps();
            $table->string('created_by')->defauly('Admin')->nullable();
            $table->string('updated_by')->defauly('Admin')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('admins');
    }
}
