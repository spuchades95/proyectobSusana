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
        Schema::create('tickets', function (Blueprint $table) {
            Schema::dropIfExists('tickets');
            $table->id();
            $table->dateTime('FechaEmision');
            $table->integer('Total');
            $table->string('Estado')->nullable();
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
        Schema::dropIfExists('tickets');
    }
};
