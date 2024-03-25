<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Hire extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'Estado',
        'FechaContratacion',
        'FechaFinalizacion',
        'Servicio_id ',
        'Cliente_id ',
        'Ticket_id'
    ];

    public function servicio()
    {
        return $this->belongsTo(Service::class,'Servicio_id');
    }
    public function cliente()
    {
        return $this->belongsTo(Client::class,'Cliente_id');
    }

    public function ticket() {
        return $this->belongsTo(Ticket::class,'Ticket_id');
    }

}
