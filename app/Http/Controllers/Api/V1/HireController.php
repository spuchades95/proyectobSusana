<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\V1\HireResource;
use App\Models\Hire;
use App\Models\Ticket;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class HireController extends Controller
{


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Log::info($request);


        $pedidos = $request->all();


        $ultimoTicketId = Ticket::max('id');
        foreach ($pedidos as $pedidoData) {

            $hire = new Hire();
            $hire->Estado = $pedidoData['Estado'];
            $hire->FechaContratacion = $pedidoData['FechaContratacion'];
            $hire->FechaFinalizacion = $pedidoData['FechaFinalizacion'];
            $hire->Cliente_id = $pedidoData['Cliente_id'];
            $hire->Servicio_id = $pedidoData['Servicio_id'];
            $hire->Ticket_id = $ultimoTicketId;
            $hire->save();
        }
    }

    /**
     * Display the specified resource.
     */
    public function getServiceOfClient($clientId)
    {
        $servicio = Hire::where('Cliente_id', $clientId)->whereNotIn('Estado',  ['Cancelado'])->get();
        if (!$servicio) {
            return response()->json(['message' => 'Servicio no encontrado para este cliente'], 404);
        }

        return HireResource::collection($servicio);
    }

    public function getServiceOfClientAllCancel($clientId)
    {
        $servicio = Hire::where('Cliente_id', $clientId)->where('Estado',  ['Cancelado'])->get();
        if (!$servicio) {
            return response()->json(['message' => 'Servicio no encontrado para este cliente'], 404);
        }

        return HireResource::collection($servicio);
    }


    public function putEstadoCancelado($id)
    {
        $servicio = Hire::find($id);

        if (!$servicio) {
            return response()->json(['message' => 'No se pudo cambiar'], 404);
        }
        $servicio->Estado = 'Cancelado';
        $servicio->save();
        return response()->json(['message' => 'Estado cambiado exitosamente'], 200);
    }
}
