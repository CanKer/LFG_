<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('/', function () {
    return view('welcome');
});


//Route::resource('/', 'main');
Route::resource('ideas', 'IdeasController');
Route::resource('blog', 'BlogController');
Route::resource('estadisticas', 'EstadisticasController');
Route::resource('pruebas', 'PruebasController');
Route::resource('users', 'UsuariosController');
Route::resource('account', 'AccountController');
Route::resource('foro', 'ForoController');
