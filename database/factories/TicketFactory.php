<?php

namespace Database\Factories;
use App\Models\Service;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ticket>
 */
class TicketFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'FechaEmision' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'Total' => $this->faker->randomFloat(2, 10, 1000),
            'Estado' => $this->faker->randomElement(['Pagado', 'No Pagado']),
            'Servicio_id' => Service::inRandomOrder()->value('id'),
            'Numero_Ticket' => $this->faker->unique()->randomNumber(8),
        ];
    }
}
