<?php

namespace App\Http\Resources\V1;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class HireResource extends JsonResource
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
            'Estado' => $this->Estado,
            'FechaContratacion' => date('d/m/y', strtotime($this->FechaContratacion)),
            'FechaFinalizacion' => date('d/m/y', strtotime($this->FechaFinalizacion)),
            'Cliente' => $this->cliente->user->NombreCompleto,
            'Servicio' => $this->servicio->Nombre,
            'Imagen'=> $this->servicio->Imagen,
            'Ticket_Numero' => $this->ticket->Numero_Ticket,
            'Ticket_Total' => $this->ticket->Total,
        ];
    }
}
