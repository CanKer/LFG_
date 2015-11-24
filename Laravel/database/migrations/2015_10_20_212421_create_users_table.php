<?php

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
            $table->string('user');
            $table->string('nombre');
            $table->string('appellidoP');
            $table->string('appellidoM');
            $table->string('email')->unique();
            $table->string('password', 60);
            $table->string('pais');
            $table->string('estado');
            $table->string('ciudad');
            $table->float('lat');
            $table->float('long');
            $table->SoftDeletes();
            $table->rememberToken();
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
        Schema::drop('users');
    }
}
