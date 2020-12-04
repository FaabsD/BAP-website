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
Route::get('/over-mij', 'AboutController@aboutMe');
// verzameling pennies routes
Route::get('/pennies', 'PennyController@getPennies');
Route::get('/pennies/voeg-toe', 'PennyController@addPennyForm');
Route::post('/pennies/verwerken', 'PennyController@handlePennyForm');
Route::get('/pennies/aanpassen/{id}', 'PennyController@updatePenny');
// haal de pennies op bij alfabet
Route::get('pennies/{alphabet}', 'PennyController@getByAlphabet');
// toon pennies bij opgegeven plaats
Route::get('/pennies/plaats/{town}', 'PennyController@getByTown');

// verzameling memodailles
Route::get('/memodailles', 'CoinController@getCoins');
Route::get('/memodailles/voeg-toe', 'CoinController@addCoinForm');
Route::post('/memodailles/verwerken', 'CoinController@handleCoinForm');
Route::get('/memodailles/aanpassen/{id}', 'CoinController@updateCoin');
// haal de memodailles op bij alfabet
Route::get('memodailles/{alphabet}', 'CoinController@getByAlphabet');
// toon de memodailles bij de opgegeven plaats
Route::get('/memodailles/plaats/{town}', 'PennyController@getByTown');
