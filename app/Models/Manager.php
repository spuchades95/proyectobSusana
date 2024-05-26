<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Manager extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [

        'Usuario_id',
       
    ];   

    public function user()
    {
        return $this->belongsTo(User::class, 'id');
    }
    public function gestiona()
    {
        return $this->belongsToMany(Service::class, 'Manages', 'Gestor_id', 'Servicio_id');
    }


}
