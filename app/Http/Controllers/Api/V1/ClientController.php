<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Client;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Rental;
use Illuminate\Support\Facades\Hash;
use App\Http\Resources\V1\ClientResource;
use Illuminate\Support\Facades\Log;
class ClientController extends Controller
{
   /**
 * @OA\Get(
 *     path="/api/clients",
 *     summary="Obtener todos los clientes",
 *     tags={"Clientes"},
 *     @OA\Response(
 *         response=200,
 *         description="Listado de clientes",
 *         @OA\JsonContent(
 *             type="array",
 *             @OA\Items(
 *                 type="object",
 *                 @OA\Property(property="id", type="integer"),
 *                 @OA\Property(property="FechaNacimiento", type="date"),
 *                 @OA\Property(property="Genero", type="string"),
 *                 @OA\Property(property="Usuario", type="object",
 *                     @OA\Property(property="id", type="integer"),
 *                     @OA\Property(property="NombreCompleto", type="string"),
 *                     @OA\Property(property="email", type="string", format="email"),
 *                     @OA\Property(property="Habilitado", type="boolean"),
 *                     @OA\Property(property="NombreUsuario", type="string"),
 *                     @OA\Property(property="Instalacion_id", type="integer"),
 *                     @OA\Property(property="DNI", type="string"),
 *                     @OA\Property(property="Telefono", type="string"),
 *                     @OA\Property(property="Direccion", type="string"),
 *                     @OA\Property(property="Descripcion", type="string"),
 *                     @OA\Property(property="Rol_id", type="integer"),
 *                     @OA\Property(property="Causa", type="string"),
 *                    
 *                 ),
 *             )
 *         )
 *     )
 * )
 */
    public function index()
    {
        $clients = Client::all();
        return ClientResource::collection($clients);
    }


    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $client = Client::findOrFail($id);
        return new ClientResource($client);
    }

    public static function getClientByUserId($userId)
    {
        $client = Client::where('Usuario_id', $userId)->first();
        return new ClientResource($client);
    }


    public function updateDatosNombreGeneroFecha(Request $request, $id)
    {
        $client = Client::find($id);
        if (!$client) {
            return response()->json(['message' => 'Cliente no encontrado'], 404);
        }
    
        $request->validate([
            'NombreCompleto' => 'nullable|string|max:255',
            'Genero' => 'nullable|string|in:Masculino,Femenino,Otro',
            'FechaNacimiento' => 'nullable|date',
        ]);
    
       
        if ($request->has('NombreCompleto')) {
            $client->user->update([
                'NombreCompleto' => $request->input('NombreCompleto')
            ]);
        }
    
      
        if ($request->has('Genero')) {
            $client->update([
                'Genero' => $request->input('Genero')
            ]);
        }
    
        if ($request->has('FechaNacimiento')) {
            $client->update([
                'FechaNacimiento' => $request->input('FechaNacimiento')
            ]);
        }
    
        return response()->json($client);
    }
    
    public function updatePassword(Request $request, $id)
    {
        $client = Client::find($id);
        if (!$client) {
            return response()->json(['message' => 'Cliente no encontrado'], 404);
        }
    
        $client->user->update([
            'password' => bcrypt($request->input('password'))
        ]);
    
        return response()->json($client);
    }
    
    public function updateEmail(Request $request, $id)
    {
        $client = Client::find($id);
        if (!$client) {
            return response()->json(['message' => 'Cliente no encontrado'], 404);
        }

        $client->user->update([
            'email' => $request->input('email')
        ]);


        return response()->json($client);

    }
    
    public function obtenerInformacionAlquileres($id)
{
   
    Log::info($id);
    $alquileres = Rental::join('base_berths', 'base_berths.id', '=', 'rentals.PlazaBase_id')
        ->join('berths', 'berths.id', '=', 'base_berths.Amarre_id')
        ->join('boats', 'boats.id', '=', 'rentals.Embarcacion_id')
        ->select(
            'rentals.FechaInicio',
            'rentals.FechaFinalizacion',
            'boats.Matricula',
            'boats.Nombre AS NombreBarco',
            'boats.Tipo AS TipoBarco',
            'boats.Modelo',
            'boats.Origen',
            'boats.Eslora',
            'boats.Manga',
            'berths.Numero AS NumeroPlaza',
            'base_berths.Amarre_id AS Plaza',
            'boats.id'
        )
        ->where('berths.Estado', '=', 'Ocupado')
        ->where('berths.TipoPlaza', '=', 'Plaza Base')
        ->where('boats.Titular', '=', $id)
        ->get();

    return response()->json($alquileres, 200);
}



    public function updateTelefono(Request $request, $id)
{
  
    $client = Client::find($id);
    $request->validate([
        'Telefono' => 'string'
    ]);
    Log::info($request);
    Log::info($id);
    if (!$client) {
        return response()->json(['message' => 'Cliente no encontrado'], 404);
    }
    Log::info($request->input('Telefono'));
   
    $client->user->Telefono = $request->input('Telefono');
    $client->user->save();

    return response()->json($client);
}


}
