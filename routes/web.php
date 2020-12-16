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
    return view('welcome');
});
Route::get('/over-ons', 'AboutController@aboutMe')->name('about');
// verzameling pennies routes
Route::get('/pennies', 'PennyController@index')->name('pennies');
// alleen beschikbaar voor ingelogde beheerder
Route::get('/pennies/voeg-toe', 'PennyController@create')->name('penny.add');
Route::post('/pennies/verwerken', 'PennyController@handlePennyForm')->name('penny.add.handle');
Route::get('/pennies/aanpassen/{id}', 'PennyController@updatePenny')->name('penny.update');
// haal de pennies op bij alfabet
Route::get('pennies/alfabetisch/{alphabet}', 'PennyController@getByAlphabet')->name('pennies.alphabet');
// toon pennies bij opgegeven plaats
Route::get('/pennies/plaats/{town}', 'PennyController@getByTown')->name('pennies.town');

// verzameling memodailles
Route::get('/memodailles', 'CoinController@getCoins')->name('coins');
// alleen beschikbaar voor ingelogde beheerder
Route::get('/memodailles/voeg-toe', 'CoinController@addCoinForm')->name('coin.add');
Route::post('/memodailles/verwerken', 'CoinController@handleCoinForm')->name('coin.add.handle');
Route::get('/memodailles/aanpassen/{id}', 'CoinController@updateCoin')->name('coin.update');
// haal de memodailles op bij alfabet
Route::get('memodailles/alfabetisch{alphabet}', 'CoinController@getByAlphabet')->name('coin.alphabet');
// toon de memodailles bij de opgegeven plaats
Route::get('/memodailles/plaats/{town}', 'PennyController@getByTown')->name('coin.town');

// login route
Route::get('/login', 'LoginController@getLoginForm')->name('login');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
