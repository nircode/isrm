<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Template extends Model
{
    //

    public function threats() {
    	return $this->belongsToMany('App\Threat');
    }

    public function assets() {
    	return $this->hasMany('App\Asset');
    }
}
