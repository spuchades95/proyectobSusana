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
        Schema::table('civil_guard_transits', function (Blueprint $table) {
            $table->dateTime('FechaVisualizacion')->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('civil_guard_transits', function (Blueprint $table) {
            $table->dateTime('FechaVisualizacion')->change();
        });
    }
};
