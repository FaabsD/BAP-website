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
// haha
Route::get('/', function () {
    return view('welcome');
});
Route::get('/over-ons', 'AboutController@aboutMe')->name('about');
Route::get('/overzicht', 'OverviewController@index')->name('overview');
// verzameling pennies routes
Route::get('/pennies', 'PennyController@index')->name('pennies');
// alleen beschikbaar voor ingelogde beheerder
Route::get('/pennies/voeg-toe', 'PennyController@create')->name('penny.add')->middleware('auth');
Route::post('/pennies/verwerken', 'PennyController@store')->name('penny.add.handle');
Route::get('/pennies/{id}/aanpassen', 'PennyController@edit')->name('penny.edit')->middleware('auth');
Route::post('/pennies/{id}/updaten', 'PennyController@update')->name('penny.update');
Route::get('/pennies/{id}/delete', 'PennyController@destroy')->name('penny.delete');
// haal de pennies op bij alfabet
Route::get('pennies/alfabetisch/{alphabet}', 'PennyController@getByAlphabet')->name('pennies.alphabet');


// verzameling memodailles
Route::get('/memodailles', 'CoinController@index')->name('coins');
// alleen beschikbaar voor ingelogde beheerder
Route::get('/memodailles/voeg-toe', 'CoinController@create')->name('coin.add');
Route::post('/memodailles/verwerken', 'CoinController@store')->name('coin.add.handle');
Route::get('/memodailles/{id}/aanpassen', 'CoinController@edit')->name('coin.edit')->middleware('auth');
// haal de memodailles op bij alfabet
Route::get('memodailles/alfabetisch{alphabet}', 'CoinController@getByAlphabet')->name('coin.alphabet');

// login route
Route::get('/login', 'LoginController@getLoginForm')->name('login');

Auth::routes([
    'register' => false
]);
Route::get('/admin', 'AdminController@index')->name('admin');
Route::get('/home', 'HomeController@index')->name('home');
