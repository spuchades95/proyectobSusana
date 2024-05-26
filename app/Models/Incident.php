<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Incident extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'Titulo',
        'Imagen',
        'Guardamuelle_id',
        'Descripcion',
        'Administrativo_id',
        'Leido',

    ];
    // public function administrativo()
    // {
    //     return $this->hasOne(Administrative::class);
    // }
    // public function guardamuelles()
    // {
    //     return $this->hasOne(DockWorker::class);
    // }
    public function administrativo()
    {
        return $this->belongsTo(Administrative::class, 'Administrativo_id');
       
    }
 
    public function guardamuelles()
    {
        return $this->belongsTo(DockWorker::class, 'Guardamuelle_id');
    }

}


