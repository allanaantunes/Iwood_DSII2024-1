@extends('base')
@section('conteudo')
@section('titulo', 'Cadastro de Usuário')

@php
    if (!empty($usuario->id)) {
        $route = route('usuario.update', $usuario->id);
    } else {
        $route = route('usuario.store');
    }
@endphp

<h3>Cadastro de Usuário</h3>
<form action="{{ $route }}" method="post">

    @csrf

    @if (!empty($usuario->id))
        @method('put')
    @endif

    <input type="hidden" name="id" value="@if (!empty($usuario->id)) {{ $usuario->id }}@else{{ '' }} @endif"><br>

    <div class="mb-3">
        <label for="name" class="form-label">Nome</label>
        <input type="text" name="name" id="name" class="form-control" value="@if (!empty($usuario->name)) {{ $usuario->name }}@elseif (!empty(old('name'))){{ old('name') }}@else{{ '' }} @endif">
    </div>

    <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" name="email" id="email" class="form-control" value="@if (!empty($usuario->email)) {{ $usuario->email }}@elseif (!empty(old('email'))){{ old('email') }}@else{{ '' }} @endif">
    </div>

    <div class="mb-3">
        <label for="senha" class="form-label">Senha</label>
        <input type="password" name="senha" id="senha" class="form-control">
    </div>

    <button type="submit" class="btn btn-success" style="background-color: #853609; color: #deac6a;">Salvar</button>
    <a href="{{ url('usuario') }}" class="btn btn-primary" style="background-color: #853609; color: #deac6a;">Voltar</a>
</form>

@stop
