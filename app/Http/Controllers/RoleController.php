<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;
use Illuminate\Support\Facades\Input;

use Validator;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $roles = Role::get();
        return view('roles.index',['roles' => $roles]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('roles.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $validation = Validator::make(Input::all(), Role::$rules);

        if($validation->passes()) {
            $role = new Role;
            $role->name = Input::get('name');
            $role->desc = Input::get('desc');
            if($role->save())
                return redirect('roles')->with('success', 'Role created successfully');
            else
                return redirect('roles')->with('failure', 'Role created successfully');
        } else {
            return redirect('roles')->withErrors($validation);
            exit;
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $role = Role::find($id);
        if($role)
            return view('roles.view',['role' => $role]);
        else
            return redirect('roles')->with('failure', 'Requested record was not found.');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $role = Role::find($id);
        if($role)
            return view('roles.edit',['role' => $role]);
        else
            return redirect('roles')->with('failure', 'Requested record was not found.');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validation = Validator::make(Input::all(), [
                'name' => 'required|min:5|max:200|unique:roles,' . $id,
                'desc' => 'max:200',
            ]);
        if($validation->passes()) {
            $role = new Role;
            $role->name = Input::get('name');
            $role->desc = Input::get('desc');
            if($role->save())
                return redirect('roles')->with('success', 'Role created successfully');
            else
                return redirect('roles')->with('failure', 'Role created successfully');
        } else {
            return redirect('roles')->withErrors($validation);
            exit;
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}