<?php

namespace App\Http\Resources\V1;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ClientResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'nombre' => $this->user->NombreCompleto,
            'fecha_nacimiento' => $this->FechaNacimiento,
            'genero' => $this->Genero,
            'Nombre usuario' => $this->user->NombreUsuario,
            'Telefono' => $this->user->Telefono,
            'Direccion' => $this->user->Direccion,
            'email' => $this->user->email,
            'Rol' => $this->user->role->NombreRol,
            'Instalacion' => $this->user->facility->Ubicacion,
            'barcos' => BoatResource::collection($this->embarcaciones),




        ];
    }
}
