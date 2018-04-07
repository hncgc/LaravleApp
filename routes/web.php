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
    return view('welcome');
});

Route::get('about', 'AboutController@index')->name('about');

Route::get('/myabout', function (){
    $name = "<span style=\"color:red\">Cheng Gongchun<span>";
    return view('sites.about')->with("name", $name);
});