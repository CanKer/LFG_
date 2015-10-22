<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIdeasCategoriasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ideas_categorias', function (Blueprint $table) {
            $table->unsignedInteger('id_ideas');
            $table->unsignedInteger('id_categorias');

            $table->primary(['id_ideas', 'id_categorias']);

            $table->timestamps();

        });

        Schema::table('ideas_categorias', function($table)  {
          $table->foreign('id_ideas')->references('id')->on('ideas');
          $table->foreign('id_categorias')->references('id')->on('categorias');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('ideas_categorias');
    }
}
