<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Evidence extends Model
{
    //

    public function role() {
    	return $this->belongsTo('App\Role');
    }

    public function controls() {
    	return $this->belongsToMany('App\Control');
    }
}
