<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Boat extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'Matricula',
        'Manga',
        'Eslora',
        'Origen',
        'Titular',
        'Imagen',
        'Numero_registro',
        'Datos_Tecnicos',
        'Modelo',
        'Nombre',
        'Causa',
        'Tipo',
    ];
  
    public function transitos()
    {
        return $this->belongsToMany(Transit::class, 'transit_boats', 'Embarcacion_id', 'Transito_id');
    }


    public function embarcacion()
    {
        return $this->belongsToMany(BaseBerth::class, 'rentals', 'PlazaBase_id', 'Embarcacion_id');
    }
    public function cliente()
    {
        return $this->belongsTo(Client::class, 'Titular','id');
    }


    public function servicios()
    {
        return $this->belongsToMany(Service::class,'requests', 'Embarcacion_id', 'Servicio_id');
    }

}
