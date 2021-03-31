<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    public function images()
    {
        return $this->hasMany('App\Image');
    }

    public function users()
    {
        return $this->belongsToMany('App\User');
    }
}


