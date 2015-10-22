<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIdeasRolesUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ideas_roles_users', function (Blueprint $table) {
            $table->unsignedInteger('id_ideas');
            $table->unsignedInteger('id_roles');
            $table->unsignedInteger('id_users');

           $table->primary(['id_ideas', 'id_roles', 'id_users']);


            $table->timestamps();

        });

        Schema::table('ideas_roles_users', function($table) {
          $table->foreign('id_ideas')->references('id')->on('ideas');
          $table->foreign('id_roles')->references('id')->on('roles');
          $table->foreign('id_users')->references('id')->on('users');
       });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('ideas_roles_users');
    }
}
