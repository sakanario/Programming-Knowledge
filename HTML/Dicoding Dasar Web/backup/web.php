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

Route::get('/', function () {
    return view('master');
});

//AUDIENCE
Route::get('/home', 'audienceController@index');
Route::get('/blog/{id}', 'audienceController@show');

//BLOG ADMIN
//INDEX
Route::get('/admin', 'adminController@index');
// Route::get('/blog/{id}', 'BlogController@show');

//CREATE
Route::get('/blog/create', 'BlogController@create');
Route::post('/admin','adminController@store');

//EDIT
Route::get('/blog/{id}/edit', 'BlogController@edit');
Route::put('/blog/{id}', 'BlogController@update');

//DELETE
Route::delete('/admin/{id}', 'adminController@delete');
