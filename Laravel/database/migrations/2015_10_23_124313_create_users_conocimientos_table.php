<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersConocimientosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('users_conocimientos', function (Blueprint $table) {
        $table->unsignedInteger('id_users');
        $table->unsignedInteger('id_conocimientos');
        $table->float('calificacion');

        $table->primary(['id_users', 'id_conocimientos']);

        $table->timestamps();
        });

      Schema::table('users_conocimientos', function($table) {
        $table->foreign('id_users')->references('id')->on('users');
        $table->foreign('id_conocimientos')->references('id')->on('conocimientos');
      });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
