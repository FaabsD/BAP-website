<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PennyController extends Controller
{
    public function getPennies(){
        return "Hier verschijnt mijn penny verzameling";
    }
    public function addPennyForm(){
        return "Hier komt het formulier om een penny toe te voegen";
    }
    public function handlePennyForm(){
        // hier ga ik het formulier verwerken
    }
}
