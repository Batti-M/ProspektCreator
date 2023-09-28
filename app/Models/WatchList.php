<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WatchList extends Model
{
    use HasFactory;    

    protected $table = 'watchlists';
    protected $fillable = [
        'product_id',
        'name',
        'image',
        'price',
    ];
}
