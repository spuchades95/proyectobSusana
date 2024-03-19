<?php

namespace App\Http\Controllers;

use App\Models\Hire;
use Illuminate\Http\Request;

class HireController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pedidos= Hire::join('services','services.id','=','hires.Servicio_id')
        ->join('clients', 'clients.id', '=', 'hires.Cliente_id')
        ->join('users', 'users.id', '=', 'clients.Usuario_id')
        ->join('tickets', 'tickets.id', '=', 'tickets.Servicio_id')
    
        ->select(
            'hires.FechaContratacion',
            'hires.Estado',
            'tickets.Total As Precio',
            'tickets.Numero_Ticket AS Ticket',
            'services.Nombre AS Servicio',
            'users.NombreCompleto AS Cliente',
        
        )
        ->get();
        return view('pedidos.index')->with('pedidos', $pedidos);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

  
public function paratablaPedidos(){
    $pedidos= Hire::join('services','services.id','=','hires.Servicio_id')
    ->join('clients', 'clients.id', '=', 'hires.Cliente_id')
    ->join('users', 'users.id', '=', 'clients.Usuario_id')
    ->join('tickets', 'tickets.id', '=', 'tickets.Servicio_id')

    ->select(
        'hires.FechaContratacion',
        'hires.Estado',
        'tickets.Total As Precio',
        'tickets.Numero_Ticket AS Ticket',
        'services.Nombre AS Servicio',
        'users.NombreCompleto AS Cliente',
    
    )
    ->get();
    return view('pedidos.index')->with('pedidos', $pedidos);
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
    public function show(Hire $hire)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Hire $hire)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Hire $hire)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Hire $hire)
    {
        //
    }
}
