<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/auth', function () {
    return view('auth.login');
});

Route::get('/', 'Web\FrontController@index');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('categori', 'CategoriController');
Route::resource('artikel', 'ArtikelController');
