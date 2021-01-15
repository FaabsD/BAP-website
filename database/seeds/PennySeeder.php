<?php

use Illuminate\Database\Seeder;
use App\Penny;
class PennySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Penny::unguard();
        $path = public_path('db/pressed_pennies.sql');
        $sql = file_get_contents($path);
        Penny::unprepared($sql);
    }
}
