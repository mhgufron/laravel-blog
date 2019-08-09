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

// Front End
Route::get('/', 'Web\FrontController@index');
Route::get('/about', 'Web\FrontController@about')->name('about');
Route::get('/contact', 'Web\FrontController@contact')->name('contact');

Route::get('/post/{artikel}', 'Web\FrontController@show')->name('artikel.detail');
Route::get('/post-categori/{kategori}', 'Web\FrontController@kategori')->name('artikel.kategori');


Auth::routes();


// Back End
Route::group(['middleware' => 'auth'], function () {
    Route::get('/home', 'HomeController@index')->name('home');
    
    Route::resource('categori', 'CategoriController');
    Route::resource('artikel', 'ArtikelController');
});
