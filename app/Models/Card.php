<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Card extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'NumeroTarjeta',
        'NombreTarjeta',
        'FechaCaducidad',
        'CVV',
        'Cliente_id',
    ];    

    public function cliente()
    {
        return $this->belongsTo(Client::class, 'Cliente_id');
    }
    public function tickets()
    {
        return $this->hasMany(Ticket::class);
    }

}
