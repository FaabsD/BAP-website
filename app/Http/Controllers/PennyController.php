<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use App\Penny;
class PennyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
//        $pennies = DB::table('pressed_pennies')
//            ->orderBy('Plaats', 'asc')
//            ->orderBy('Serie', 'asc')
//            ->get();
        $pennies = Penny::orderBy('Plaats', 'asc')
            ->orderBy('Serie', 'asc')->paginate(24);
        return view('penny.all-pennies')->with('pennies', $pennies);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('penny.form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'plaats' => 'required|alpha|min:3',
            'serie' => 'required|max:150',
            'omschrijving' => 'max:255|different:serie',
            'positie' => 'required|min:6|max:7',
            'alfabet' => 'required|max:1|alpha',
            'afbeelding' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'


        ]);
        /** @var  UploadedFile $image  */

        if (isset($validatedData['afbeelding'])) {
            $image = $validatedData['afbeelding'];
            $afbeelding = $image->store('pennies', 'public');
        }

        $penny = new Penny;
        $penny->Plaats = $validatedData['plaats'];
        $penny->Serie = $validatedData['serie'];
        $penny->Omschrijving = $validatedData['omschrijving'];
        $penny->Positie = $validatedData['positie'];
        $penny->Alfabet = $validatedData['alfabet'];
        if (isset($validatedData['afbeelding'])) {
            $penny->Afbeelding = $afbeelding;
        }
        $penny->save();
        dd($validatedData);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        return view('penny.update_form')->with('id', $id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
