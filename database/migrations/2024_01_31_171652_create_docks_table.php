<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('docks', function (Blueprint $table) {
            $table->id();
            $table->string('Nombre')->nullable();
            $table->string('Ubicacion')->nullable();            
            $table->string('Descripcion')->nullable();
            $table->integer('Capacidad');
            $table->date('FechaCreacion');
            $table->string('Causa')->nullable();;
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('docks');
    }
};
