<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SugestaoController;
use App\Http\Controllers\EstabelecimentoController;
use App\Http\Controllers\ServicoController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\OrcamentoController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\UsuarioController;

// Default route for the welcome page
Route::get('/', function () {
    return view('welcome');
});


Route::get('/login', function () {
    return view('auth/login');
});
Route::get('/register', function () {
    return view('auth/register');
});



// Dashboard route
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    // Custom route for 'pess' related to UsuarioController
    Route::post('/pess/usuario', [UsuarioController::class, 'pess'])->name('pess.usuario');

    // User-related routes
    Route::resource('usuario', UsuarioController::class);

    // Estabelecimento routes
    Route::post('/estabelecimento/search', [EstabelecimentoController::class, 'search'])->name('estabelecimento.search');
    Route::get('/estabelecimento/chart', [EstabelecimentoController::class, 'chart'])->name('estabelecimento.chart');
    Route::get('/estabelecimento/PDFEstabelecimento', [EstabelecimentoController::class, 'PDFEstabelecimento'])->name('estabelecimento.PDFEstabelecimento');
    Route::resource('estabelecimento', EstabelecimentoController::class);

    // Servico routes
    Route::post('/servico/search', [ServicoController::class, 'search'])->name('servico.search');
    Route::get('/servico/chart', [ServicoController::class, 'chart'])->name('servico.chart');
    Route::resource('servico', ServicoController::class);

    // Orcamento routes
    Route::post('/orcamento/search', [OrcamentoController::class, 'search'])->name('orcamento.search');
    Route::get('/orcamento/PDFOrcamento', [OrcamentoController::class, 'PDFOrcamento'])->name('orcamento.PDFOrcamento');
    Route::resource('orcamento', OrcamentoController::class);

    // Sugestao routes
    Route::post('/sugestao/search', [SugestaoController::class, 'search'])->name('sugestao.search');
    Route::resource('sugestao', SugestaoController::class);

});

// Authentication routes
require __DIR__ . '/auth.php';
