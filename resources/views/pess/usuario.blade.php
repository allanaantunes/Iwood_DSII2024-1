@extends('base')
@section('conteudo')
@section('titulo', 'Perfil do Usuário')

@php
    $routeEdit = route('usuario.edit', $usuario->id);
    $routeDelete = route('usuario.destroy', $usuario->id);
@endphp

<div class="container mt-4">
    <h3 class="mb-4">Perfil do Usuário</h3>

    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="name" class="form-label">Nome</label>
                <p id="name" class="form-control-plaintext">{{ $usuario->name }}</p>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <p id="email" class="form-control-plaintext">{{ $usuario->email }}</p>
            </div>

            <div class="mb-3">
                <label for="senha" class="form-label">Senha</label>
                <p id="senha" class="form-control-plaintext">******</p>
            </div>
        </div>
    </div>

    <div class="mt-4">
        <a href="{{ $routeEdit }}" class="btn btn-success" style="background-color: #853609; color: #deac6a;">Editar</a>

        <form action="{{ $routeDelete }}" method="post" style="display:inline;">
            @csrf
            @method('delete')
            <button type="submit" class="btn btn-danger" style="background-color: #853609; color: #deac6a;">Excluir</button>
        </form>

        <a href="{{ url('usuario') }}" class="btn btn-primary" style="background-color: #853609; color: #deac6a;">Voltar</a>
    </div>
</div>

@stop
