<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Card;
use Illuminate\Http\Request;

class CardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $clientId = $request->input('Cliente_id'); 
        $cards = Card::where('Cliente_id', $clientId)->get();
        return response()->json($cards);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $card = Card::create($request->all());
        return response()->json($card, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request, $id)
    {
        $clientId = $request->input('Cliente_id'); 
        $card = Card::where('id', $id)->where('Cliente_id', $clientId)->first();

        if (!$card) {
            return response()->json(404);
        }

        return response()->json($card);
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, $id)
    {
        $clientId = $request->input('Client_id'); 
        $card = Card::where('id', $id)->where('Cliente_id', $clientId)->first();

        if (!$card) {
            return response()->json([
                'message' => 'No se encuentra el usuario',
                'code' => 404
            ], 404);
        }

        $card->delete();
        return response()->json([
            'message' => 'Tarjeta eliminada',
            'code' => 200
        ], 200);
    }
}
