<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MPESAResponseController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('/v1/access/token', [MpesaController::class, 'generateAccessToken'] );


Route::post('/v1/nyundoo/stk/push', [MpesaController::class, 'customerMpesaSTKPush'] );


Route::post('/v1/nyundoo/transaction/confirmation', [MpesaController::class, 'mpesaConfirmation'] );


Route::post('/v1/nyundoo/register/url', [MpesaController::class, 'mpesaRegisterUrls'] );


Route::post('validation', [MPESAResponseController::class, 'validation']);


Route::post('confirmation', [MPESAResponseController::class, 'confirmation']);