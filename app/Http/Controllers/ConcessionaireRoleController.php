<?php

namespace App\Http\Controllers;

use App\Models\ConcessionaireRole;
use Illuminate\Http\Request;

class ConcessionaireRoleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(ConcessionaireRole $concessionaireRole)
    {
       
        $assignmentDate = $concessionaireRole->created_at;

        
        $roleDetails = $concessionaireRole->role;
        $concessionaireDetails = $concessionaireRole->concessionaire;

      
        return view('concessionaire_roles.show', compact('concessionaireRole', 'assignmentDate', 'roleDetails', 'concessionaireDetails'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ConcessionaireRole $concessionaireRole)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ConcessionaireRole $concessionaireRole)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ConcessionaireRole $concessionaireRole)
    {
        //
    }
}
