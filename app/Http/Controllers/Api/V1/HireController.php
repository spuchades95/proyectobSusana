<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Hire;
use App\Models\Ticket;
use Illuminate\Http\Request;

class HireController extends Controller
{
   
 
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'Cliente_id' => 'required|exists:clients,id',
            'Servicio_id' => 'required|exists:services,id',
            'Estado' => 'required|string|in:Procesando,Completado',
            'FechaContratacion' => 'required|date',
            'FechaFinalizacion' => 'required|date',
        ]);
        $ultimoTicketId = Ticket::max('id');
        $hire = new Hire();
        $hire->Estado = $request->input('Estado');
        $hire->FechaContratacion = $request->input('FechaContratacion');
        $hire->FechaFinalizacion = $request->input('FechaFinalizacion');
        $hire->Cliente_id = $request->input('Cliente_id');
        $hire->Servicio_id = $request->input('Servicio_id');
        $hire->Ticket_id = $ultimoTicketId;
        $hire->save();
        return response()->json($hire, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
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

}
