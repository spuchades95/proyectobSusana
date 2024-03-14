<?php

namespace App\Http\Controllers;

use App\Models\Administrative;
use Illuminate\Http\Request;

class AdministrativeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // return view('administrativos.index', [
        //     'administrativos' => Administrative::all()
        // ]);
        $administrativos = Administrative::with('usuario')->get();

        return view('administrativos.index', compact('administrativos'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $administrative = Administrative::find($id);
        $administrative->load('usuario');

        return view('administrativos.show', compact('administrative'));
        // $administrative->load('usuario');

        // return view('administrativos.show', compact('administrative'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Administrative $administrative)
    {
       
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Administrative $administrative)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Administrative $administrative)
    {
        //
    }
}
