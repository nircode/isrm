<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Control extends Model
{
    //

    public function evidences() {
    	return $this->belongsToMany('App\Evidence');

    }

    public function threats() {
    	return $this->belongsToMany('App\Threat');
    }

    public function documents() {
    	return $this->belongsToMany('App\Document');
    }

    
}
