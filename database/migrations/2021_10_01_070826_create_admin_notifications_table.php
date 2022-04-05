<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdminNotificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admin_notifications', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('uniq_id')->default(0);
            $table->string('title')->nullable();
            $table->longText('message')->nullable();
            $table->string('image')->nullable();
            $table->string('image_type')->nullable();
            $table->string('name_of_file_show')->nullable();
            $table->integer('push_type')->nullable()->default(0);
            $table->integer('sms_type')->nullable()->default(0);
            $table->integer('email_type')->nullable()->default(0);
            $table->integer('is_title')->nullable()->default(0);
            $table->integer('is_attachment')->nullable()->default(0);
            $table->string('notification_type');
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
        Schema::dropIfExists('admin_notifications');
    }
}
