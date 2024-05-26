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
        Schema::table('hires', function (Blueprint $table) {
       
        
            $table->foreign('Ticket_id')->references('id')->on('tickets')->onDelete('cascade')->onUpdate('cascade'); 
            $table->unsignedBigInteger('Ticket_id'); 
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('hires', function (Blueprint $table) {
            $table->dropForeign(['Ticket_id']);
            $table->dropColumn('Ticket_id');
        });
    }
};
