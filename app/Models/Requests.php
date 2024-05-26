<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Requests extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'FechaContratacion',
        'Embarcacion_id',
        'Servicio_id',
           
    ];   
    public function boat()
    {
        return $this->belongsTo(Boat::class, 'Embarcacion_id');
    }

    public function servicio()
    {
        return $this->belongsTo(Service::class,'Servicio_id');
    }
}
