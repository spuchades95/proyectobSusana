<?php

namespace App\Http\Resources\V1;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CardResource extends JsonResource
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
            'nombre_tarjeta' => $this->NombreTarjeta,
            'numero_tarjeta' => $this->NumeroTarjeta,
            'fecha_expiracion' =>  date('m/y', strtotime($this->FechaCaducidad)),
            'Cliente' => $this->cliente->user->NombreCompleto,
        ];
    }
}
