<?php

namespace Database\Factories;

use App\Models\Client;
use App\Models\Service;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Hire>
 */
class HireFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'Estado' => $this->faker->randomElement(['Activo', 'Completado', 'Cancelado']),
            'FechaContratacion' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'FechaFinalizacion' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'Servicio_id' => Service::inRandomOrder()->value('id'),
            'Cliente_id' => Client::inRandomOrder()->value('id'),
            
        ];
    }
}
