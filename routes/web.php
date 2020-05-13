<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return redirect()->route('screenshoot.index');
});

Auth::routes(['register' => false]);

Route::get('/home', 'HomeController@index')->name('home');
Route::resource('screenshoot','ScreenshootController');


Route::resource('teachers','TeachersController')->middleware('auth');
Route::post('teachersImport','TeachersController@import')->name('teachers.import')->middleware('auth');
Route::get('view','ScreenshootController@view')->name('screenshoot.view')->middleware('auth');
Route::get('viewpdf/{status}/{date}','ScreenshootController@viewpdf')->name('screenshoot.viewpdf')->middleware('auth');
Route::post('viewtanggal','ScreenshootController@viewtanggal')->name('screenshoot.viewtanggal')->middleware('auth');
