<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Validator;

class Role extends Model
{
    //
    public function users() {
    	return $this->belongsToMany('App\User');
    }

    public function assets() {
    	return $this->hasMany('App\Asset');
    }

    public function evidences() {
    	return $this->hasMany('App\Evidence');
    }

    public function incidents() {
    	return $this->hasMany('App\Incident');
    }

    public function documents() {
        return $this->hasMany('App\Document', 'owner');
    }


    protected $fillable = [
        'name','desc',
    ];

    public static $rules = [
        'name' => 'required|min:5|max:200|unique:roles',
        'desc' => 'max:200',
    ];
}
