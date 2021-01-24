<?php

namespace App\Http\Controllers;

use App\Coin;
use App\Penny;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class OverviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pennies = Penny::orderBy('Plaats', 'ASC')->orderBy('Serie', 'ASC')->get();
        $coins = Coin::orderBy('Plaats', 'ASC')->get();
        $vars = array('pennies' => $pennies, 'coins' => $coins);
        return view('overview')->with($vars);
    }
}
