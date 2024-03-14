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
        'Servicio_id',
     
    ];    

    public function servicio()
    {
        return $this->belongsTo(Service::class, 'Servicio_id');
    }
}
