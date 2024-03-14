<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Manage extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'Estado',
        'FechaContratacion',
        'FechaFinalizacion',
        'Servicio_id ',
        'Gestor_id ',
    ];

    public function servicio()
    {
        return $this->belongsTo(Service::class,'Servicio_id');
    }
    public function gestor()
    {
        return $this->belongsTo(Manager::class,'Gestor_id');
    }


}
