<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CoinController extends Controller
{
    public function getCoins(){
        return "Hier word mijn verzameling Memodailles getoont";
    }
    public function addCoinForm(){
        return "Hier komt het formulier om een memodaille toe te voegen";
    }
    public function handleCoinForm(){
        // hier wordt het toevoegen van een memodaille afgehandeld
    }
}
