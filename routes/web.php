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

// verzameling memodailles
Route::get('/memodailles', 'CoinController@getCoins');
Route::get('/memodailles/voeg-toe', 'CoinController@addCoinForm');
Route::post('/memodailles/verwerken', 'CoinController@handleCoinForm');
