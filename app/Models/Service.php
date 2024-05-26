<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Service extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'Nombre',
        'Precio_unico',
        'Precio_mensual',
        'Mensaje_mensual',
        'Mensaje_unico',
        'Descripcion',
        'Imagen',
    ]; 

    public function contrata()
    {
        return $this->belongsToMany(Client::class, 'hires', 'Cliente_id', 'Servicio_id');
    }
    public function gestionado()
    {
        return $this->belongsToMany(Manager::class, 'manages', 'Gestor_id', 'Servicio_id');
    }


    public function embarcaciones()
    {
        return $this->belongsToMany(Boat::class,'requests', 'Embarcacion_id', 'Servicio_id');
    }
}
