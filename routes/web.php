<?php

use Inertia\Inertia;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CsvController;
use App\Http\Controllers\WatchListController;

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
    return Inertia::render('Home');
})->name('home');

Route::post('/upload', [CsvController::class, 'upload'])->name('csvUpload');

Route::get('/prospektCreator', function () {
    return Inertia::render('ProspektCreator');
});


Route::resource('/watchList', WatchListController::class);