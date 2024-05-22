<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Ticket;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
class TicketController extends Controller
{

    private function generaNumero()
    {
        $ultimoTicket = Ticket::max('Numero_Ticket');

        if ($ultimoTicket !== null) {
            $nuevoTicket = $ultimoTicket + 1;
        } else {
            $nuevoTicket = 10000;
        }

        return $nuevoTicket;
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Log::info($request);
        $numeroTicket = $this->generaNumero();
        $ticketData = $request->all();
        $ticketData['Numero_Ticket'] = $numeroTicket;
        $ticket = Ticket::create($ticketData);

        return response()->json($ticket, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $ticket = Ticket::findOrFail($id);
        return response()->json($ticket);
    }

}
