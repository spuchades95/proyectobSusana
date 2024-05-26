<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\V1\CardResource;
use App\Models\Card;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
class CardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function getAllCardOfClient($clientId)
    {
      
   
        $cards = Card::where('Cliente_id', $clientId)->get();
  
        if (!$cards) {
            return response()->json(['message' => 'Tarjeta no encontrada para este cliente'], 404);
        }

        return CardResource::collection($cards);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    { Log::info( $request ." store de tarjeta");
        $card = Card::create($request->all());
        return response()->json($card, 201);
    }

    /**
     * Display the specified resource.
     */
    public function getCardByIdAndClient( $id, $clientId)
    {     
        
        Log::info( $clientId ." cliente");
        Log::info( $id ." id");
        $card = Card::where('id', $id)
            ->where('Cliente_id', $clientId) 
            ->first();
        Log::info( $card);
        if (!$card) {
            return response()->json(['message' => 'Tarjeta no encontrada para este cliente'], 404);
        }

        return response()->json($card);
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
      
        $card = Card::where('id', $id);

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
