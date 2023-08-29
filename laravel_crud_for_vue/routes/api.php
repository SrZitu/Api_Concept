<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\TodoController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::controller(TodoController::class)->group(function(){
    Route::get('/task','index');
    Route::post('/task/store','store');
    Route::get('/task/edit/{id}','edit');
    Route::post('/task/update/{id}','update');
    Route::get('/task/destroy/{id}','destroy');
    Route::post('/task/done/{id}','done');
    Route::post('/task/undone/{id}','undone');

    });


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
