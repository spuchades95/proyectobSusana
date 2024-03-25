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
       
    ];    


    public function user()
    {
        return $this->belongsTo(User::class, 'id');
    }
    public function tarjetas()
    {
        return $this->hasMany(Card::class, 'Cliente_id');
    }

    public function embarcaciones()
    {
        return $this->hasMany(Boat::class, 'Cliente_id');
    }


    public function servicios()
    {
        return $this->belongsToMany(Service::class, 'Hires', 'Cliente_id', 'Servicio_id');
    }
    public function tickets()
    {
        return $this->hasManyThrough(Ticket::class, Hire::class, 'Hires', 'Cliente_id', 'Ticket_id');
    }

}
