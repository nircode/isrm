<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;


class RoleRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        
        $id = isset($this->role) ? $this->role->id : null;
        $rules = [
          'name' => "required|min:5|max:200|unique:roles,name," . $id,
          'desc' => 'max:200',
        ];

        return $rules;

    }
}

