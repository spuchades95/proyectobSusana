<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class DockWorker extends User
{
    use HasFactory;
    use SoftDeletes;
    protected $primaryKey = 'Usuario_id';
    protected $fillable = [
        'Causa',
        'Usuario_id',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'id');
    }


    public function incidencia()
    {
        return $this->belongsTo(Incident::class, 'Guardamuelle_id');
    }

    public function transito()
    {
        return $this->hasMany(Transit::class, 'Guardamuelle_id');

    }
}
