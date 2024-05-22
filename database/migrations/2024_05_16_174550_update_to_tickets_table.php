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
        Schema::table('tickets', function (Blueprint $table) {
            $table->dropForeign(['Tarjeta_id']);
            $table->dropColumn('Tarjeta_id');
            $table->foreign('Tarjeta_id')->references('id')->on('cards')->onDelete('cascade')->onUpdate('cascade'); 
            $table->unsignedBigInteger('Tarjeta_id'); 
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tickets', function (Blueprint $table) {
            $table->dropForeign(['Tarjeta_id']);
            $table->dropColumn('Tarjeta_id');
        });
    }
};
