<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;
class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('servicios.index', ['servicios' => Service::all()]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('servicios.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Log::info('Llamada desde store:',[$request]);
        $request->validate([
            'Nombre' => 'required',
            'Precio_unico' => 'required',
            'Precio_mensual' => 'required',
            'Mensaje_mensual' => 'required',
            'Mensaje_unico' => 'required',
            'Descripcion' => 'required',
            'Imagen' ,

        ]);
        Log::info('Llamada desde store:', [$request]);
        $servicio = new Service();
        $servicio->Nombre = $request->Nombre;
        $servicio->Precio_unico = $request->Precio_unico;
        $servicio->Precio_mensual = $request->Precio_mensual;
        $servicio->Mensaje_mensual = $request->Mensaje_mensual;
        $servicio->Mensaje_unico = $request->Mensaje_unico;
        $servicio->Descripcion = $request->Descripcion;


        if ($request->hasFile('Imagen')) {
            $imagenPath = $request->file('Imagen')->store('public/servicios');
            $servicio->imagen = Storage::url($imagenPath);
        }


        $servicio->save();
        return redirect()->route('servicios.index')->with('success', 'Servicio creado correctamente');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $servicio = Service::findOrFail($id);
        return view('servicios.show', compact('servicio'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $servicio = Service::findOrFail($id);
        return view('servicios.edit', compact('servicio'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $servicio = Service::findOrFail($id);
        $servicio->update($request->all());
        Log::info('Llamada desde update:', [$request]);
        if ($request->hasFile('Imagen')) {
            // Eliminar la imagen anterior si existe
            if ($servicio->Imagen) {
           
                Storage::delete($servicio->Imagen);
            }
           
            // Guardar la nueva imagen
            $imagenPath = $request->file('Imagen')->store('public/servicios');
            $servicio->Imagen =  Storage::url($imagenPath);
        }
        $servicio->save();
        return redirect()->route('servicios.index')->with('success', 'Servicios updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $servicio = Service::findOrFail($id);
        $servicio->delete();
        if ($servicio->Imagen) {
            Storage::delete($servicio->Imagen);
        }
        return redirect()->route('servicios.index')->with('success', 'Servicio eliminado correctamente');
    }
}
