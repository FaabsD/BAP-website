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
    public function updateCoin($id) {
        return "hier update ik de gegevens van een memodaille met id: ".$id;
    }
    public function getByAlphabet($alphabet) {
        return "Alle memodailles waarvan de plaats begint met " . $alphabet;
    }
    public function getByTown($town) {
        return "Toon alle Memodailles uit ".$town;
    }
}
