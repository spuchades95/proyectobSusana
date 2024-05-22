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
        Schema::create('requests', function (Blueprint $table) {
            Schema::dropIfExists('requests');
            $table->id();
            $table->date('FechaContratacion')->nullable();
            $table->foreign('Embarcacion_id')->references('id')->on('boats')->onDelete('cascade')->onUpdate('cascade'); 
            $table->unsignedBigInteger('Embarcacion_id'); 
            $table->foreign('Servicio_id')->references('id')->on('services')->onDelete('cascade')->onUpdate('cascade'); 
            $table->unsignedBigInteger('Servicio_id'); 
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('requests');
    }
};
