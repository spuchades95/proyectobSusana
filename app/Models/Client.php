<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Client extends User
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'FechaNacimiento',
        'Usuario_id',
        'Genero'
    ];    


    public function user()
    {
        return $this->belongsTo(User::class, 'Usuario_id', 'id');
    }
    public function tarjetas()
    {
        return $this->hasMany(Card::class, 'Cliente_id');
    }

    public function embarcaciones()
    {
        return $this->hasMany(Boat::class, 'Titular');
    }


    public function servicios()
    {
        return $this->belongsToMany(Service::class, 'hires', 'Cliente_id', 'Servicio_id');
    }
    public function tickets()
    {
        return $this->hasManyThrough(Ticket::class, Hire::class, 'hires', 'Cliente_id', 'Ticket_id');
    }

}
