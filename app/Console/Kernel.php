<?php

namespace App\Console;

use App\Models\Hire;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->call(function () {
            $hires = Hire::where('estado', 'Procesando')->get();
            foreach ($hires as $hire) {
                $fechaInicio = $hire->created_at;
                $tiempoLimite = $fechaInicio->addMinutes(5);
                if (now() >= $tiempoLimite) {
                    $hire->estado = 'Completado';
                    $hire->save();
                }
            }
        })->everyMinute(); 
    }

    /**
     * Register the commands for the application.
     */
    protected function commands(): void
    {
        $this->load(__DIR__ . '/Commands');

        require base_path('routes/console.php');
    }
}
