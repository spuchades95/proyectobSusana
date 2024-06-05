<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
class RequestsController extends Controller
{


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {   Log::info($request);
      
        $salida = $request->all();
           foreach ($salida as $servicioData) {
            $hire = new Requests();
            $hire->FechaContratacion = $servicioData['FechaContratacion'];
            $hire->Embarcacion_id = $servicioData['Embarcacion_id'];
            $hire->Servicio_id = $servicioData['Servicio_id'];
	$hire-> save();

        }

        return response()->json($salida, 201);
    }
}
