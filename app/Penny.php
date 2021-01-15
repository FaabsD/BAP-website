<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Penny extends Model
{
    protected $table = "pressed_pennies";
    public $timestamps = false;
}
