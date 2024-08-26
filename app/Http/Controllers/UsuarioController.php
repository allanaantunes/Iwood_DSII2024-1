<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use App\Models\TipoUsuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    public function create()
    {
        // Obtenha todos os tipos de usuários para enviar à view
        $tiposusuarios = TipoUsuario::all();
        
        // Passe a variável para a view
        return view('pess.usuario', compact('tiposusuarios'));
    }

    public function edit($id)
    {
        // Obtenha o usuário específico e todos os tipos de usuários
        $usuario = Usuario::findOrFail($id);
        $tiposusuarios = TipoUsuario::all();
        
        // Passe as variáveis para a view
        return view('pess.usuario', compact('usuario', 'tiposusuarios'));
    }

    // Outros métodos do controlador...
}
