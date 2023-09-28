<?php

namespace App\Http\Controllers;

use App\Models\WatchList;
use Illuminate\Http\Request;

class WatchListController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        dd(session('watchListData', []));
        return WatchList::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $validated = $request->validate([
            'id' => 'required|numeric|digits_between:1,5',
            'image' => 'required|string|max:255',
            'name' => 'required|string|max:255',
            'price' => 'required|string|max:10',
        ]);

        WatchList::create(
            [
                'product_id' => $validated['id'],
                'image' => $validated['image'],
                'name' => $validated['name'],
                'price' => $validated['price'],
            ]
        );
        session(['watchListData' => WatchList::all()]);
        session()->flash('message', 'Product added to watchlist');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(WatchList $watchList)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(WatchList $watchList)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, WatchList $watchList)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(WatchList $watchList)
    {
        //
    }
}
