<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TodoController;
use PHPUnit\Metadata\Group;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});




Route::controller(TodoController::class)->group(function(){
    Route::get('/task','index');
    Route::post('/task','store');
    Route::post('/task/edit/{id}','edit');
    Route::post('/task/update/{id}','update');
    Route::get('/task/destroy/{id}','destroy');
    Route::post('/task/done/{id}','done');
    Route::post('/task/undone/{id}','undone');

    });
