<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Service;
use Illuminate\Http\Request;

/**
 * @OA\Info(
 *             title="API Services", 
 *             version="1.0",
 *             description="Mostando la Lista de URI's de mi API"
 * )
 *
 * @OA\Server(url="localhost:8000",)
 */
class ServiceController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/v1/services",
     *     summary="Obtener todos los servicios",
     *     tags={"Servicios"},
     *     @OA\Response(
     *         response=200,
     *         description="Lista de todos los servicios",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 type="array",
     *                 property="rows",
     *                 @OA\Items(
     *                     type="object",
     *                     @OA\Property(
     *                     property="id",
     *                     type="integer",
     *                     description="ID único del servicio"
     *                     ),
     *                    @OA\Property(
     *                       property="Nombre",
     *                        type="string",
     *                       description="Nombre del servicio"
     *                   ),
     *                    @OA\Property(
     *                       property="Precio_unico",
     *                        type="number",
     *                        format="float",
     *                        description="Precio único del servicio"
     *                    ),
     *                    @OA\Property(
     *                        property="Precio_mensual",
     *                        type="number",
     *                        format="float",
     *                        description="Precio mensual del servicio"
     *                    ),
     *                    @OA\Property(
     *                        property="Mensaje_unico",
     *                        type="string",
     *                        description="Mensaje único del servicio"
     *                    ),
     *                    @OA\Property(
     *                        property="Mensaje_mensual",
     *                        type="string",
     *                        description="Mensaje mensual del servicio"
     *                    ),
     *                    @OA\Property(
     *                        property="Descripcion",
     *                        type="string",
     *                        description="Descripción del servicio"
     *                
    *                     )
 *                 )
 *             )
 *         )
 *     )
 * )
 */
    public function index()
    {
        return Service::all();
    }

/**
 * @OA\Get(
 *     path="/api/v1/services/{service_id}",
 *     summary="Obtener un servicio por su ID",
 *     tags={"Servicios"},
 *     @OA\Parameter(
 *         name="service_id",
 *         in="path",
 *         description="ID del servicio a obtener",
 *         required=true,
 *         @OA\Schema(type="integer")
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Detalles del servicio",
 *         @OA\JsonContent(
 *             @OA\Property(
 *                 property="id",
 *                 type="integer",
 *                 description="ID único del servicio"
 *             ),
 *             @OA\Property(
 *                 property="Nombre",
 *                 type="string",
 *                 description="Nombre del servicio"
 *             ),
 *             @OA\Property(
 *                 property="Precio_unico",
 *                 type="number",
 *                 format="float",
 *                 description="Precio único del servicio"
 *             ),
 *             @OA\Property(
 *                 property="Precio_mensual",
 *                 type="number",
 *                 format="float",
 *                 description="Precio mensual del servicio"
 *             ),
 *             @OA\Property(
 *                 property="Mensaje_unico",
 *                 type="string",
 *                 description="Mensaje único del servicio"
 *             ),
 *             @OA\Property(
 *                 property="Mensaje_mensual",
 *                 type="string",
 *                 description="Mensaje mensual del servicio"
 *             ),
 *             @OA\Property(
 *                 property="Descripcion",
 *                 type="string",
 *                 description="Descripción del servicio"
 *             )
 *         )
 *     ),
 *     @OA\Response(
 *         response=404,
 *         description="Servicio no encontrado"
 *     )
 * )
 */
public function show($service_id)
{
    $service = Service::findOrFail($service_id);
    return $service;
}

}
