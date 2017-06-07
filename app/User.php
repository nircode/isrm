<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    public function roles() {
        return $this->belongsToMany('App\Role');
    }

    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public static $rules = [
      'name' => 'required|min:6|max:200',
      'email' => 'required|min:8|max:100|unique:users',
      'password' => 'required|password_confirmation|min:8|max:100',
      'isdelete' => 'min:1|max:1',
      'rights' => 'min:1|max:1',

    ];
}
