@extends('layouts.plantilla')
@section('title', 'Mostrar servicios')
@section('content')
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">
<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>

<div class="tablaRoles">
    <div class="d-flex flex-row-reverse mb-2"><a href="{{ route('servicios.create') }}" class="enlaceCreateEmb">SERVICIOS</a></div>
    <table id="example" class="table table-hover table-custom-hover rounded-3 overflow-hidden table-striped" style="width:100%">
        <thead>
            <tr>
                <th class="cabeceraTabla" colspan="5"> SERVICIOS</th>
            </tr>
            <tr class="cabeceraDatos">
                <th>Nombre </th>
                <th>Precio único</th>
                <th>Precio mensual</th>
                <th>Descripción</th>
                <th>Foto</th>
            </tr>
        </thead>
        <tbody>

            @foreach ($servicios as $servicio)
            <tr data-id="{{ $servicio->id }}">
                <td>{{ $servicio->Nombre }}</td>
                <td>{{ $servicio->Precio_unico }}</td>
                <td>{{ $servicio->Precio_mensual }}</td>
                <td>{{ $servicio->Descripcion }}</td>
                <td>
                    @if ($servicio->Imagen)

                    <img src="{{asset('storage/servicios/'.basename($servicio->Imagen))}}" style='width:80px'>
                    @endif

                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#example tbody').on('click', 'tr', function() {
            var servicioID = $(this).data('id');

            window.location.href = "{{ route('servicios.show', ['servicio' => ':id']) }}".replace(':id', servicioID);
        });


        new DataTable('#example');
    });
</script>

@section('scroll-buttons')
<div class="scrollUpContainer">
    <img alt="scroll-up" src="/image/scrollUp.svg" class="scrollIcon" id="scrollUp" />
</div>
<div class="scrollDownContainer">
    <img alt="scroll-down" src="/image/scrollDown.svg" class="scrollIcon" id="scrollDown" />
</div>
@endsection
<style>
    .tablaRoles {
        padding: 50px;
    }

    table {
        box-shadow: 10px 5px 10px rgba(0, 0, 0, 0.5);
    }

    th {
        background-color: #426787 !important;
        color: #f5f7fa !important;
        font-family: "Questrial", sans-serif;


    }

    .cabeceraTabla {
        font-size: 30px;
        font-weight: lighter;
    }

    .cabeceraDatos>th {
        background-color: #a6bed3 !important;
        color: black !important;
        font-weight: bold;
        text-align: center !important;
    }

    th {
        background-color: #a6bed3;
        color: black;
        font-weight: bold;

    }

    .table-striped>tbody>tr:nth-child(odd)>td {
        background-color: #d0dce7;

    }

    .enlaceCreateEmb {
        display: flex;
        width: 202px;
        height: 48px;
        flex-direction: column;
        justify-content: center;
        flex-shrink: 0;
        color: #fff;
        font-family: "Inter", sans-serif;
        font-size: 14px;
        font-style: normal;
        font-weight: 500;
        line-height: normal;
        text-decoration: none;
        background-color: #426787;
        text-align: center;
        font-family: "Inter", sans-serif;
        border-radius: 5px;
        background-image: url(/Image/add_solid.svg);
        background-size: 30px;
        background-repeat: no-repeat;
        background-position: left 10px center;
    }

    td {
        font-family: "Inter", sans-serif;
        font-size: 16px;
        font-style: normal;
        font-weight: normal;
        line-height: normal;
        text-decoration: none;
        text-align: center;
        color: #000000;
        vertical-align: middle;
    }
</style>
<link rel="stylesheet" type="text/css" href="{{ asset('css/styles.css') }}">

@endsection