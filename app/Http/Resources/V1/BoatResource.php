<?php

namespace App\Http\Resources\V1;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class BoatResource extends JsonResource
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
            'Matricula' => $this->Matricula,
            'Origen' => $this->Origen,
            'Nombre' => $this->Nombre,
            'Numero de registro' => $this->Numero_registro,
            'Eslora' => $this->Eslora,
            'Modelo' => $this->Modelo,
            'Tipo' => $this->Tipo,
            'Manga' => $this->Manga,



            
        ];
        // return parent::toArray($request);
    }
}
