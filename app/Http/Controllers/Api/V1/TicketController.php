<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Ticket;
use Illuminate\Http\Request;

class TicketController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }
    public function generaNumero()
    {
        $ultimoTicket = Ticket::max('Numero_Ticket');

        if ($ultimoTicket !== null) {
            $nuevoTicket = $ultimoTicket + 1;
        } else {
            $nuevoTicket = 10000;
        }
        $ticket = new Ticket();
        $ticket->Numero_Ticket = $nuevoTicket;
        $ticket->save();

        return response()->json(['numero_ticket' => $nuevoTicket], 200);
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
    public function show(Ticket $ticket)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Ticket $ticket)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Ticket $ticket)
    {
        //
    }
}
