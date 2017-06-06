<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    //
    public function role() {
    	return $this->belongsTo('App\Role');
    }

    public function parents() {
    	return $this->belongsToMany('App\Asset', 'child_parent', 'child_id', 'parent_id');
    }

    public function children() {
    	return $this->belongsToMany('App\Asset', 'child_parent', 'parent_id', 'child_id');
    }

    public function incidents() {
        return $this->belongsToMany('App\Incident');
    }

    public function template() {
        return $this->belongsTo('App\Template');
    }

    
}
