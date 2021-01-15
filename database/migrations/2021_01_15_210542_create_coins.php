<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoins extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('memodailles', function (Blueprint $table) {
            $table->id();
            $table->text('Plaats');
            $table->text('Serie');
            $table->text('Omschrijving');
            $table->string('Afbeelding')->nullable();
            $table->char('Alfabet', 1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('memodailles');
    }
}
