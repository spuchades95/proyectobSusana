<?php

namespace App\Http\Controllers;

use App\Models\Hire;
use App\Models\User;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class HireController extends Controller
{
    /**
     * Display a listing of the resource.
     */
  

public function index()
{
   
    $pedidos = Hire::join('services', 'services.id', '=', 'hires.Servicio_id')
    ->join('clients', 'clients.id', '=', 'hires.Cliente_id')
    ->join('users', 'users.id', '=', 'clients.Usuario_id')
    ->join('tickets', 'tickets.id', '=', 'hires.Ticket_id')
    ->select(
        'hires.id',
        'hires.FechaContratacion',
        'hires.Estado',
        'tickets.Total AS Precio',
        'tickets.Numero_Ticket AS Ticket',
        'services.Nombre AS Servicio',
        'users.NombreCompleto AS Cliente'
    )->where('hires.Estado', '=', 'Activo' )
    ->orWhere('hires.Estado', '=', 'Completado')
    ->get();
  
       return view('pedidos.index', compact('pedidos'));


}

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {

        
        $pedido = Hire::findOrFail($id);
        $cliente = $pedido->cliente;
        $servicio= $pedido->servicio;
        Log::info('Llamada dentro del show:', [$pedido]);
        $usuario = User::findOrFail($cliente->Usuario_id);
        $tickets = $servicio->tickets;
        return view('pedidos.show', compact('pedido', 'tickets','usuario'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $pedido = Hire::findOrFail($id);
        $cliente = $pedido->cliente;
        $servicio= $pedido->servicio;
        Log::info('Llamada dentro del show:', [$pedido]);
        $usuario = User::findOrFail($cliente->Usuario_id);
        $tickets = $servicio->tickets;
        return view('pedidos.edit', compact('pedido', 'tickets','usuario'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $pedido = Hire::findOrFail($id);
        $pedido->update($request->all());
        $pedido->save();
        return redirect()->route('pedidos.index')->with('success', 'Pedido actualizado correctamente');
    }

  
}
