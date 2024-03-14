@extends('layouts.plantilla')
@section('title', 'Crear usuario')
@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="formularioRoles">
    <div class="formHeader">
        <h5>ALTA USUARIO</h5>
    </div>
    <form class="form-container" method="POST" action="{{ route('usuarios.store') }}">
        @csrf
        <div class="form-left">
            <div class="mb-3 d-flex">
                <label for="NombreUsuario" class="form-label">Usuario:</label>
                <input name="NombreUsuario" type="text" class="form-control mt-4" placeholder="Nombre Usuario" required />
            </div>
            <div class="mb-3 d-flex">
                <label for="NombreCompleto" class="form-label">Nombre Completo:</label>
                <input type="text" name="NombreCompleto" class="form-control mt-4" placeholder="Nombre Completo" required>
            </div>
            <div class="mb-3 d-flex">
                <label for="DNI" class="form-label">DNI:</label>
                <input name="DNI" type="text" class="form-control mt-4" placeholder="DNI" required>
            </div>
            <div class="mb-3 d-flex">
                <label for="Telefono" class="form-label">Teléfono:</label>
                <input name="Telefono" type="text" class="form-control mt-4" placeholder="Teléfono" required>
            </div>
            <div class="mb-3 d-flex">
                <label for="email" class="form-label">Email:</label>
                <input name="email" type="text" class="form-control mt-4" placeholder="Email" required>
            </div>
            <div class="mb-3 d-flex">
                <label for="Direccion" class="form-label">Dirección:</label>
                <input name="Direccion" type="text" class="form-control mt-4" placeholder="Dirección" required>
            </div>
            <div class="mb-3 d-flex">
                <label for="password" class="form-label">Contraseña:</label>
                <input name="password" type="password" class="form-control mt-4" placeholder="Contraseña" required>
            </div>
        </div>

        <div class="form-right">
            <div class="mb-3 d-flex">
                <label for="Descripcion" class="form-label">Descripción:</label>
                <textarea name="Descripcion" type="text" class="form-control mt-4" placeholder="Descripción"></textarea>
            </div>
            <div class="mb-3 d-flex">
                <label for="Rol_id" class="form-label">Perfil:</label>
                <select name="Rol_id" class="form-control mt-4" required>
                    @foreach($Roles as $rol)
                    <option value="{{ $rol->id }}">{{ $rol->NombreRol }}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3 d-flex">
                <label for="Instalacion_id" class="form-label">Instalaciones:</label>
                <select name="Instalacion_id" class="form-control mt-4" required>
                    @foreach($Instalacion as $instalacion)
                    <option value="{{ $instalacion->id }}">{{ $instalacion->Ubicacion }}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3 d-flex">
                <label for="habilitado" class="form-label">Habilitado:</label>
                <select name="Habilitado" class="form-control mt-4" required>
                    <option value="1">Habilitado</option>
                    <option value="0">Deshabilitado</option>

                </select>

            </div>
            <div style='text-align:right' class=' botones mt-4'>
                <a href="{{ route('usuarios.index') }}" class="btn btnCancelar">CANCELAR</a>
                <button type="submit" class="btn btnAdd">AÑADIR</button>
            </div>
        </div>
    </form>
</div>
@endsection
<style>
    /*
.botones
    {
        text-align: right;
        position: relative;   
                right:100px;
        top:200px;
     }*/

     .btn
     {
        
        position: relative;   
        top:100px;
     
     }
    .form-container
    {
        width:100%;
        height: 100%;
    }

    .form-left {
        float: left;
        margin-top: 10px;

    }

    .form-right {
        float: right;
        margin-right: 150px;
        margin-top: 10px;


    }

    .btnAdd {
        background-color: #3f2d85 !important;
        color: #f5f6fd !important;
        margin-left: 10px;





    }

    .btn {

        text-align: center;
        -webkit-text-stroke: 1.5px;
        font-family: Questrial;
        font-size: 16px;
        font-style: normal;
        font-weight: 400;
        line-height: normal;

    }

    .btnCancelar {
        text-decoration: none;
        background-color: #ffc745 !important;
        color: #7a2e0d !important;
    }



    .formHeader {
        padding: 6px;
        font-weight: bold;
        font-family: 'Questrial', sans-serif;
        color: #ffffff;
        background-color: #1d2834;
        border-radius: 5px 5px 0px 0px;
    }

    .formularioRoles {

        flex-direction: column;
        align-items: center;
        justify-content: center;

    }

    form {
        background-color: #FFFFFF;
        padding: 15px;
        border-radius: 0px 0px 5px 5px;
        box-shadow: 10px 5px 10px rgba(0, 0, 0, 0.5);
    }

    .chec div {
        margin-bottom: 5px;
    }

    input[type="text"],
    textarea,
    input[type="checkbox"] {
        box-sizing: border-box;
        border: 1px solid #ccc;
        padding: 3px;
        font-size: 14px;
        line-height: 1.5;
        height: 28px;
        width: calc(100% - 75px);
    }

    .label-checkbox {
        font-weight: bold;
        display: inline-block;
        width: 200px;
        margin-right: 10px;
    }

    label {
        width: 200px;
        font-weight: bold;
    }
</style>
<link rel="stylesheet" type="text/css" href="{{ asset('styles.css') }}">