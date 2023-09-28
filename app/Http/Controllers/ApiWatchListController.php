<?php

namespace App\Http\Controllers;

use App\Models\WatchList;
use Illuminate\Http\Request;

class ApiWatchListController extends Controller
{
    public function index()
    {
        return WatchList::all();
    }

}
