

@extends('layouts.plantilla')
@section('title', 'Vista servicio')
@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="formularioRoles">
    <div class="formHeader">
        <h5>SERVICIO {{$servicio->Nombre}}</h5>
    </div>
    <form class="form-container" >
        @csrf
        <div class="form-left">
            <div class="form-group">
                <label for="Nombre">Nombre:</label>
                <input type="text"  name="Nombre" id="Nombre" class="form-control" value=" {{ $servicio->Nombre }}" readonly>
            </div>
            <div class="form-group">
                <label for="Precio_unico">Precio único</label>
                <input type="text"  name="Precio_unico" class="form-control" value=" {{ $servicio->Precio_unico}}" readonly>
            </div>
            <div class="form-group">
                <label for="Precio_mensual">Precio mensual</label>
                <input type="text"  name="Precio_mensual"class="form-control" value=" {{ $servicio->Precio_mensual}}" readonly>
            </div>
            <div class="form-group">
                <label for="Imagen" class="form-label">Imagen:</label>
                <img src="{{asset('storage/servicios/'.basename($servicio->Imagen))}}" style='width:200px' >
            </div>
        </div>
        <div class="form-right">
            <div class="form-group">
                <label for="Mensaje_unico">Mensaje único:</label>
                <textarea rows="3" cols="20"name="Mensaje_unico" readonly>{{ $servicio->Mensaje_unico}}</textarea>
            </div>
            <div class="form-group">
                <label for="Mensaje_mensual">Mensaje mensual:</label>
                <textarea rows="3" cols="20"name="Mensaje_mensual" readonly>{{ $servicio->Mensaje_mensual}}</textarea>
            </div>
            <div class="form-group">
                <label for="Descripcion">Descripción:</label>
                <textarea rows="3" cols="20"name="Descripcion" readonly>{{ $servicio->Descripcion}}</textarea>
            </div>
        

        <div style='text-align:right' class='mt-4'>
               
                <a href="{{ route('servicios.index') }}" class="btn btnDelete">VOLVER</a>
               
            <a href="{{ route('servicios.edit', $servicio->id) }}"  class="btn btnVista">EDITAR</a>
            </div>
            </div>
    </form>
</div>

<style>
     .btnVista {
        background-color: #add8e6 !important;
        color: #162f3b !important;
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

    .btnDelete {
        text-decoration: none;
        background-color: #ffd700 !important;
        color: #442604 !important;
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
<link rel="stylesheet" type="text/css" href="{{ asset('styles.css') }}">@endsection