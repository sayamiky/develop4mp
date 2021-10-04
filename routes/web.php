<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\FacultyController;
use App\Http\Controllers\DepartementController;
use App\Http\Controllers\AccreditationController;
use App\Http\Controllers\IndexController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('index');
// });

Route::get('/dashboard', function () {
    return view('dashboard.faculty.add');
});


Route::get('/academy', function () {
    return view('certificate.academy');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Route::get('/dashboard', function () {
//     return view('dashboard.index');
// });



Route::middleware(['auth'])->group(function () {
    Route::resource('categories', CategoryController::class);
    Route::resource('posts', PostController::class);
    Route::resource('faculties', FacultyController::class);
    Route::resource('departements', DepartementController::class);
    Route::resource('accreditations', AccreditationController::class);
});



Route::resource('/', IndexController::class);
Route::resource('detailPosts', IndexController::class);

Route::get('/training', [IndexController::class, 'indextraining']);
