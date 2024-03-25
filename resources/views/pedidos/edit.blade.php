@extends('layouts.plantilla')
@section('title', 'Vista servicio')
@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="formularioRoles">
    <div class="formHeader">
        <h5>SERVICIO PEDIDO {{$pedido->Servicio->Nombre}}</h5>
    </div>
    <form class="form-container" method="POST" action="{{ route('pedidos.update', ['pedido' => $pedido->id]) }}">
        @csrf
        @method('PUT')
        <div class="form-left">
            <div class="form-group">
                <label for="Cliente">Cliente:</label>
                <input type="text" name="Cliente" id="Cliente" class="form-control" value=" {{$usuario->NombreCompleto}}" readonly>
            </div>
            <div class="form-group">
                <label for="Numero_Ticket ">Número de Ticket:</label>
                <input type="text" name="Numero_Ticket " class="form-control" value=" {{  $pedido->Ticket->Numero_Ticket}}" readonly>
            </div>
            <div class="form-group">
                <label for="Servicio">Servicio prestado:</label>
                <input type="text" name="Servicio" class="form-control" value=" {{ $pedido->Servicio->Nombre}}" readonly>
            </div>

        </div>
        <div class="form-right">
            <div class="form-group">
                <label for="Estado">Estado del servicio:</label>
                <select name="Estado" id="Estado" class="form-control" required>
                    <option value="">Selecciona el estado del pedido</option>
                    <option value="Activo" @if($pedido->Estado === 'Activo') selected @endif>Activo</option>
                    <option value="Completado" @if($pedido->Estado === 'Completado') selected @endif>Completado</option>
                    <option value="Cancelado" @if($pedido->Estado === 'Cancelado') selected @endif>Cancelado</option>
                </select>
            </div>
            <div class="form-group">
                <label for="Servicio">Precio pagado:</label>
                <input type="text" name="Servicio" class="form-control" value=" {{ $pedido->Ticket->Total}} €" readonly>
            </div>
            <div class="form-group">
                <label for="FechaContratacion">Fecha de contratación:</label>
                <input type="text" name="Servicio" class="form-control" value="{{ date('d-m-Y', strtotime($pedido->FechaContratacion)) }}" readonly>
            </div>


            <div style='text-align:right' class='mt-4'>

                <a href="{{ route('pedidos.index') }}" class="btn btnDelete">VOLVER</a>

                <button type="submit" class="btn btnAdd">EDITAR</button>
            </div>
        </div>
    </form>
</div>

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

    .btnDelete {
        text-decoration: none;
        background-color: #ffd700 !important;
        color: #442604 !important;
    }

    .form-container {
        width: 100%;
        height: 100%;
    }

    .form-left {
        float: left;
        margin-top: 10px;
        margin-left: 200px;
    }

    .form-right {
        float: right;
        margin-right: 200px;
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

    textarea {
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