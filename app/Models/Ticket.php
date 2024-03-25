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
        'Numero_Ticket'
     
    ];    

    public function ticketcontratado() {
        return $this->belongsTo(Hire::class, 'Ticket_id');
    }

}
