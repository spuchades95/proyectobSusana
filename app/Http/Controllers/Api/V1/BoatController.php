<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\V1\BoatResource;
use App\Models\Boat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class BoatController extends Controller
{
    /**
     * Display a listing of the resource.
     */


     public function obtenerTitular( $id)
    {
        
        $Titular = Boat::where('id', $id)->select('titular')->first();

      
        return response()->json( $Titular);




    }



    public function cantidadem()
    {


        $cantidad = Boat::count();
        return $cantidad;
    }

    public function pais()
    {

        $barcoypais = Boat::select('Origen')
            ->selectRaw('count(*) as total')
            ->groupBy('Origen')
            ->orderByDesc('total')
            ->get();

        $cantidad = $barcoypais->first();
        return $cantidad;
    }

    public function tipos()
    {

        $tiposComunes = Boat::select('Tipo')
        ->groupBy('Tipo')
        ->orderByRaw('COUNT(*) DESC')
        ->limit(5)
        ->pluck('Tipo');
    
        $conteoPorTipo = Boat::select('Tipo',Boat::raw('COUNT(*) as total'))
        ->groupBy('Tipo')
        ->orderByRaw('COUNT(*) DESC')
        ->limit(5)
        ->pluck('total', 'Tipo');


        $tipos = $tiposComunes->toArray();
        $conteos = array_values($conteoPorTipo->toArray());
    
        return [
            'tipos' => $tipos,
            'conteos' => $conteos,
        ];
    }
    
    public function tipocomun()
    {

        $tipo = Boat::select('Tipo')
            ->selectRaw('count(*) as total')
            ->groupBy('Tipo')
            ->orderByDesc('total')
            ->get();

        $cantidad = $tipo->first();
        return $cantidad;
    }

    public function index()
    {
        return Boat::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
    
        $boat = Boat::create($request->all());
        // Log::info('Boat created: ' . $boat->all());
        Log::info('Request: ' . json_encode($request->all()));
        Log::info('Request Headers: ' . json_encode($request->header()));
  
        if ($request->hasFile('Imagen')) {
            $imagenPath = $request->file('Imagen')->store('public/image');
            // Obtén la URL pública de la imagen almacenada
            $url = Storage::url($imagenPath);
            Log::info('URL CREATE: ' . $url);
            // Asigna la URL al atributo Imagen del modelo Boat
            $boat->Imagen = $url;
        }
        $boat->save();
        return response()->json($boat, 201);
    }

    /**
     * Display the specified resource.
     */

    public function show($id)
    {
        $boat = Boat::find($id);

        if ($boat) {
            // return response()->json($boat, 200);
            return new BoatResource($boat);
        } else {
            return response()->json('Boat not found', 404);
        }
    }
  
    public function update(Request $request, $id)
    {

        $boat = Boat::find($id);
        Log::info('Boat updated: ' . $boat);
        Log::info('Request: ' . json_encode($request->all()));
        // Log::info('Boat updated: ' . $boat->Imagen);
        Log::info('Request Headers: ' . json_encode($request->header()));
        
        if ($boat) {
            $boat->update($request->all());
            if ($request->hasFile('Imagen')) {
                // Elimina la imagen anterior
                Storage::delete(str_replace('storage', 'public', 'image', $boat->Imagen));
                // Almacena la nueva imagen
                $imagenPath = $request->file('Imagen')->store('public/image');
                // Obtén la URL pública de la imagen almacenada
                $url = Storage::url($imagenPath);
                Log::info('URL UPDATE: ' . $url);
                // Asigna la URL al atributo Imagen del modelo Boat
                $boat->Imagen = $url;
                $boat->save();
            }
            return response()->json($boat, 200);
        } else {
            return response()->json('Boat not found', 404);
        }
    }


    public function updatePhoto(Request $request, $id)
    {
        $boat = Boat::findOrFail($id);

        if ($request->hasFile('Imagen')) {
            $imagenPath = $request->file('Imagen')->store('public/embarcaciones');
            $url = Storage::url($imagenPath);
            $boat->Imagen = $url;
        }

        $boat->save();
        return response()->json($boat, 200);
    }


    public function destroy($id, Request $request)
    {
        try {
            $boat = Boat::find($id);
            if ($boat) {
                $causa = $request->input('causa'); // Recuperar la causa del cuerpo de la solicitud
                $boat->Causa = $causa;
                $boat->save();

                $boat->delete();
                return response()->json(['message' => 'Embarcación eliminada'], 200);
            } else {
                return response()->json(['error' => 'Embarcación no encontrada'], 404);
            }
        } catch (\Exception $e) {
            // Manejo de otros errores
            return response()->json(['error' => 'Error interno del servidor'], 500);
        }
    }

}