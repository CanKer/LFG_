<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blog', function (Blueprint $table) {
            $table->increments('id');
            $table->string('titulo');
            $table->longText('contenido');

            $table->unsignedInteger('id_categoria');
            $table->unsignedInteger('id_user');
            $table->SoftDeletes();
            $table->timestamps();
        });

        Schema::table('blog', function($table) {
          $table->foreign('id_user')->references('id')->on('users');
          $table->foreign('id_categoria')->references('id')->on('categorias');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('blog');
    }
}
