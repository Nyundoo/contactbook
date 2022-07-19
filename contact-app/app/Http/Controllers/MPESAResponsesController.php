<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;

class MPESAResponsesController extends Controller
{
    public function validation(Request $request) {
        Log::info('validation endpoint hit');
        Log::info($request->all());
    }

    public function confirmation(Request $request) {
        Log::info('confirmation endpoint hit');
        Log::info($request->all());
    }
}
