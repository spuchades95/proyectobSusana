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
        Schema::create('hires', function (Blueprint $table) {
            $table->id();
            $table->string('Estado')->nullable();
            $table->dateTime('FechaContratacion')->nullable();
            $table->dateTime('FechaFinalizacion')->nullable();
            $table->unsignedBigInteger('Cliente_id');     
            $table->foreign('Cliente_id')->references('id')->on('clients')->onDelete('cascade')->onUpdate('cascade'); 
            $table->unsignedBigInteger('Servicio_id');     
            $table->foreign('Servicio_id')->references('id')->on('services')->onDelete('cascade')->onUpdate('cascade'); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('hires');
    }
};
