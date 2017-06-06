<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Threat extends Model
{
    //

    public function templates() {
    	return $this->belongsToMany('App\Template');
    }

    public function controls() {
    	return $this->belongsToMany('App\Control');
    }
    
}
