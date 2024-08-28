<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\TipoUser;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the users.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        // Retrieve all users
        $usuario = User::find(auth()->user()->id);

      //  dd( $usuario );

        // Pass the users to the view
        return view('pess.usuario', compact('usuario'));
    }

    /**
     * Show the form for creating a new user.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        // Retrieve all user types for the form
       // $tiposusuarios = TipoUser::all();

        // Pass the user types to the view
        return view('usuario' );
    }

    /**
     * Show the form for editing the specified user.
     *
     * @param  int  $id
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {

        $usuario = User::findOrFail($id);


        // Pass the user and user types to the view
    return view('pess.usuario', compact('usuario' ));
    }

    // Add other methods as needed...
}
