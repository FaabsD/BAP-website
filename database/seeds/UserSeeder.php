<?php

use Illuminate\Database\Seeder;
use App\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User;
        $user->name = "Testgebruiker";
        $user->email = "test@testmail.nl";
        $user->password = Hash::make('test1234');
        $user->save();

    }
}
