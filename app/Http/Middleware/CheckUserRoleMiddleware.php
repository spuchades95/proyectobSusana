<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckUserRoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
       
        if (auth()->check() && (auth()->user()->Rol_id == 1 || auth()->user()->Rol_id == 5)) {
            return $next($request);
        }

        abort(403, 'No tienes permisos para acceder a esta página.');
    
    }
}
