<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Penny;
use App\Coin;
class AdminController extends Controller
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
        return view('admin.overview')->with($vars);
    }
}
