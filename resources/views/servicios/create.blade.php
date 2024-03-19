

@extends('layouts.plantilla')
@section('title', 'Crear servicio')
@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="formularioRoles">
    <div class="formHeader">
        <h5>ALTA SERVICIO</h5>
    </div>
    <form class="form-container" method="POST" action="{{ route('servicios.store') }}" enctype="multipart/form-data">
        @csrf
        <div class="form-left">
            <div class="form-group">
                <label for="Nombre">Nombre:</label>
                <input type="text"  name="Nombre" id="Nombre" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="Precio_unico">Precio único</label>
                <input type="number" step="0.01" name="Precio_unico" placeholder="00.00" required>
            </div>
            <div class="form-group">
                <label for="Precio_mensual">Precio mensual</label>
                <input type="number" step="0.01" name="Precio_mensual" placeholder="00.00" required>
            </div>
            <div class="form-group">
                <label for="Imagen" class="form-label">Imagen:</label>
                <input type="file" id="Imagen" name="Imagen" class="form-control" required>
            </div>
        </div>
        <div class="form-right">
            <div class="form-group">
                <label for="Mensaje_unico">Mensaje único:</label>
                <textarea rows="3" cols="20"name="Mensaje_unico" required></textarea>
            </div>
            <div class="form-group">
                <label for="Mensaje_mensual">Mensaje mensual:</label>
                <textarea rows="3" cols="20"name="Mensaje_mensual" required></textarea>
            </div>
            <div class="form-group">
                <label for="Descripcion">Descripción:</label>
                <textarea rows="3" cols="20"name="Descripcion" required></textarea>
            </div>
        

        <div style='text-align:right' class='mt-4'>
               
                <a href="{{ route('servicios.index') }}" class="btn btnCancelar">VOLVER</a>
                <button type="submit" class="btn btnAdd">AÑADIR</button>
            </div>
            </div>
    </form>
</div>
@endsection
<style>
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

    .form-container
    {
        width:100%;
        height: 100%;
    }

    .form-left {
        float: left;
        margin-top: 10px;
        margin-left: 100px;
    }

    .form-right {
        float: right;
        margin-right: 100px;
        margin-top: 10px;


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
        padding: 50px;
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

textarea{
    box-sizing: border-box;
        border: 1px solid #ccc;
        padding: 3px;
        font-size: 14px;
        line-height: 1.5;
     
        width: calc(100% - 75px);
}

    input[type="text"],

    input[type="number"],
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