<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PennyController extends Controller
{
    public function getPennies(){
        return "Hier verschijnt mijn penny verzameling";
    }
    public function addPennyForm(){
        return view('penny.form');
    }
    public function handlePennyForm(){
        return "hier ga ik het formulier verwerken";
    }
    public function updatePenny() {
        return "vanaf hier wil ik de gegevens van de penny aanpassen";
    }
}
