<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Hire;
use Illuminate\Http\Request;

class HireController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
    public function show( $id)
    {
         $pedido = Hire::with(['cliente.user', 'servicio', 'ticket'])->findOrFail($id);

          $pedidoData = [
             'id' => $pedido->id,
             'FechaContratacion' => $pedido->FechaContratacion,
             'Estado' => $pedido->Estado,
             'Precio' => $pedido->ticket->Total,
             'NumeroTicket' => $pedido->ticket->Numero_Ticket,
             'Servicio' => $pedido->servicio->Nombre,
             'Cliente' => $pedido->cliente->user->NombreCompleto,
           ];
 
         return response()->json($pedidoData);
     
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
