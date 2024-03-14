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
        Schema::table('docks', function (Blueprint $table) {
            $table->unsignedBigInteger('Instalacion_id')->after('Causa');
            $table->foreign('Instalacion_id')->references('id')->on('facilities')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('docks', function (Blueprint $table) {
            $table->dropColumn('Instalacion_id');
        });
    }
};
