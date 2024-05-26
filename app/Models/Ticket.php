<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Ticket extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'FechaEmision',
        'Total',
        'Estado',
        'Numero_Ticket',
        'Tarjeta_id'
     
    ];    

    public function ticketcontratado() {
        return $this->belongsTo(Hire::class, 'Ticket_id');
    }

    public function tarjeta() {
        return $this->belongsTo(Card::class, 'Tarjeta_id');
    }



}
