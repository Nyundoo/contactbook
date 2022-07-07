<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\ProfileController;

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

Route::get('/', function () {
    return view('welcome');
});

//Contacts Routes

Route::middleware('auth', 'verified')->group(function () {

Route::get('/contacts', [ContactController::class, 'index'] )->name('contacts.index');

Route::post('/contacts', [ContactController::class, 'store'] )->name('contacts.store');

Route::get('/contacts/create', [ContactController::class, 'create'] )->name('contacts.create');

Route::get('/contacts/{contact}', [ContactController::class, 'show'] )->name('contact.show');

Route::put('/contacts/{contact}', [ContactController::class, 'update'] )->name('contacts.update');

Route::delete('/contacts/{contact}', [ContactController::class, 'destroy'] )->name('contacts.destroy');

Route::get('/contacts/{contact}/edit', [ContactController::class, 'edit'] )->name('contact.edit');


//Company Routes

Route::get('/companies', [CompanyController::class, 'index'] )->name('companies.index');

Route::post('/companies', [CompanyController::class, 'store'] )->name('companies.store');

Route::get('/companies/create', [CompanyController::class, 'create'] )->name('companies.create');

Route::get('/companies/{company}', [CompanyController::class, 'show'] )->name('companies.show');

Route::put('/companies/{company}', [CompanyController::class, 'update'] )->name('companies.update');

Route::delete('/companies/{company}', [CompanyController::class, 'destroy'] )->name('companies.destroy');

Route::get('/companies/{company}/edit', [CompanyController::class, 'edit'] )->name('companies.edit');


Route::get('/settings/profile', [ProfileController::class, 'edit'] )->name('settings.profile.edit');

Route::put('/settings/profile', [ProfileController::class, 'update'] )->name('settings.profile.update');


});

Auth::routes(['verify' => true]);

Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
