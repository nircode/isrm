<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    //

    public function approver() {
    	return $this->belongsTo('App\Role', 'approver', 'id');
    }

    public function reviewer() {
    	return $this->belongsTo('App\Role', 'reviewer', 'id');
    }

    public function owner() {
    	return $this->belongsTo('App\Role', 'owner', 'id');
    }
}
