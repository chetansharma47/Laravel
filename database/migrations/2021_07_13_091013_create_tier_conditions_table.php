<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTierConditionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tier_conditions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('unique_id_by_tier');
            $table->integer('tier_setting_id')->unsigned();
            $table->foreign('tier_setting_id')->references('id')->on('tier_settings')->onDeleted('cascade');
            $table->string('tier_name');
            $table->double('from_amount');
            $table->double('to_amount');
            $table->string('color_code');
            $table->double('percentage')->nullable()->default(0);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tier_conditions');
    }
}
