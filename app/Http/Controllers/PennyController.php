<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PennyController extends Controller
{
    public function getPennies(){
        $pennies = DB::table('pressed_pennies')
            ->orderBy('Plaats','asc')
            ->orderBy('Serie', 'asc')
            ->get();
        return view('penny.all-pennies')->with('pennies', $pennies);
    }

    public function addPennyForm(){
        return view('penny.form');
    }

    public function handlePennyForm(){
        return "hier ga ik het formulier verwerken";
    }

    public function updatePenny($id) {
        return "vanaf hier wil ik de gegevens van de penny met id: ".$id."aanpassen";
    }

    public function getByAlphabet($alphabet) {
        return view('penny.alphabetical')->with('alphabet',$alphabet);
    }

    public function getByTown($town) {
        return "Toon alle Pennies uit ".$town;
    }
}
