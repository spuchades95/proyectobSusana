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
    public function index()
    {
        $cards = Card::all();
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
    public function show($id)
    {
        $card = Card::find($id);

        if (!$card) {
            return response()->json(['message' => 'Tarjeta no encontrada'], 404);
        }

        return response()->json($card);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $card = Card::find($id);

        if (!$card) {
            return response()->json(['message' => 'Tarjeta no encontrada'], 404);
        }

        $card->update($request->all());
        return response()->json($card);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $card = Card::find($id);

        if (!$card) {
            return response()->json(['message' => 'Tarjeta no encontrada'], 404);
        }

        $card->delete();
        return response()->json(['message' => 'Tarjeta eliminada']);
    }
}
