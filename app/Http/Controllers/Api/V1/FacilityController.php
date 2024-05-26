<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\V1\FacilityResource;
use App\Models\Facility;
use App\Models\Dock;
use Illuminate\Http\Request;

class FacilityController extends Controller
{
    /**
     * Display a listing of the resource.
     */


     public function pantalanes($id)
     {
  
         $pantalanes = Dock::where('Instalacion_id', $id)->get();
         
    
         return response()->json($pantalanes);
     }


    public function index()
    {
        $instalaciones = Facility::all();
        return response()->json($instalaciones);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $facility = Facility::create($request->all());
        $facility->save();
        return response()->json($facility, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $facility = Facility::find($id);

        if ($facility) {
            return new FacilityResource($facility);
            // return response()->json($facility, 200);
        } else {
            return response()->json('Instalación no encontrada', 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Facility $facility)
    {
        try {
            // Verifica si la instalación existe
            $facility = Facility::find($facility);
            if ($facility == null) {
                return response()->json([
                    'message' => 'No se encuentra la instalación',
                    'code' => 404
                ], 404);
            }
            $facility->update($request->all());
            return response()->json($facility, 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Error al actualizar la instalación',
                'code' => 500
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        try {
            $facility = Facility::find($id);
            if ($facility == null) {
                return response()->json([
                    'message' => 'No se encuentra la instalación',
                    'code' => 404
                ], 404);
            }
            $facility->delete();
            return response()->json([
                'message' => 'Instalación eliminada',
                'code' => 200
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Error al eliminar la instalación',
                'code' => 500
            ], 500);
        }
    }
}
