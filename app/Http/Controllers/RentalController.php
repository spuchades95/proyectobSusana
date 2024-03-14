<?php

namespace App\Http\Controllers;

use App\Models\Rental;
use Illuminate\Http\Request;

class RentalController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $alquileres = Rental::all();

        return view('alquileres.index', compact('rentals'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('alquileres.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'FechaInicio' => 'required',
            'PlazaBase_id' => 'required',
            'FechaFinalizacion' => 'required',
            'Embarcacion_id' => 'required',
           
        ]);

        $alquiler = new Rental();
        $alquiler->FechaInicio = $request->FechaInicio;
        $alquiler->FechaFin = $request->FechaFin;
        $alquiler->Precio = $request->Precio;
        $alquiler->Embarcacion_id = $request->Embarcacion_id;
        $alquiler->Cliente_id = $request->Cliente_id;

        $alquiler->save();

        return redirect()->route('alquileres.index')
            ->with('success', 'Rental created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $alquiler = Rental::find($id);
        return view('alquileres.show', compact('alquiler'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $alquiler = Rental::find($id);
        return view('alquileres.edit', compact('alquiler'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
    
        $alquiler = Rental::find($id);

        $alquiler->update($request->all());

        $alquiler->save();

        return redirect()->route('alquileres.index')
            ->with('success', 'Rental updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Rental $rental)
    {
        $rental->delete();

        return redirect()->route('alquileres.index')
            ->with('success', 'Rental deleted successfully');
    }
}
