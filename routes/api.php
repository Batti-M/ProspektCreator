<?php

use App\Http\Controllers\ApiWatchListController;
use App\Http\Controllers\WatchListController;
use App\Models\WatchList;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/watchlistData',[ApiWatchListController::class, 'index']);
Route::delete('/watchlistData/{id}',[ApiWatchListController::class, 'destroy']);


