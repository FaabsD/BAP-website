<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Penny extends Model
{
    protected $table = "pressed_pennies";
    protected $fillable = ['Plaats', 'Serie', 'Omschrijving', 'Positie', 'Alfabet'];
    public $timestamps = false;
}
