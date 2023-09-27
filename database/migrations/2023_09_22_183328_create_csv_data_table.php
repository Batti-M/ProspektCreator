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
        Schema::create('csv_data', function (Blueprint $table) {
            $table->id();
            $table->string('Produktname');
            $table->string('Produktbeschreibung');
            $table->string('Preis');
            $table->string('Angebot_in_prozent')->nullable()->default('0');
            $table->date('Angebotsdatum')->format('d.m.Y');
            $table->string('image_url')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('csv_data');
    }
};