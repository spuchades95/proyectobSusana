<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
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
        $clients = Client::with('user')->get();
        return response()->json($clients);
    }


    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $client = Client::with('user')->find($id);

        if (!$client) {
            return response()->json(['message' => 'Cliente no encontrado'], 404);
        }

        return response()->json($client);
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
    
    public function updateTelefono(Request $request, $id)
    {
        $client = Client::find($id);
        if (!$client) {
            return response()->json(['message' => 'Cliente no encontrado'], 404);
        }

        $client->user->update([
            'Telefono' => $request->input('Telefono')
        ]);


        return response()->json($client);

    }


}
