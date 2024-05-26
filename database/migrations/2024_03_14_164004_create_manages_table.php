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
        Schema::create('manages', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('Gestor_id');     
            $table->foreign('Gestor_id')->references('id')->on('managers')->onDelete('cascade')->onUpdate('cascade'); 
            $table->unsignedBigInteger('Servicio_id');     
            $table->foreign('Servicio_id')->references('id')->on('services')->onDelete('cascade')->onUpdate('cascade'); 
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('manages');
    }
};
