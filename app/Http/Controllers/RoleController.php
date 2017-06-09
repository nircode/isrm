<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;
use Illuminate\Support\Facades\Input;
use Validator;
use App\Http\Requests\RoleRequest;

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
    public function store(RoleRequest $request)
    {
        //
        //$validation = Validator::make(Input::all(), Role::$rules);
        $role = new Role;
        $role->name = Input::get('name');
        $role->desc = Input::get('desc');

        if($role->save())
            return redirect('roles')->with('success', 'Role created successfully');
        else
            return redirect('roles')->with('failure', 'Cannot create the role');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      return redirect('roles/' . $id . '/edit');
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
<<<<<<< HEAD
    public function update(Request $request, $id)
    {
      if(Role::find($id)) {
        //$role = Role::find($id);
        //print_r(Input::->post);
      //  $rules = Role::$rules;
      //  $rules['name'] = 'required|min:5|max:200|unique:roles,name,'.$id;
        //print_r($rules);
        $validation = Validator::make(Input::all(), Role::$rules);
        if($validation->passes()) {
          echo "Validate";
          /*  $role->name = Input::get('name');
            $role->desc = Input::get('desc');
            if($role->save())
                return redirect('roles')->with('success', 'Role created successfully');
=======
    public function update(RoleRequest $request, Role $role)
    {
        /*$this->validate($request, [
                'name' => 'required|min:5|max:200|unique:roles,name,' . $id,
                'desc' => 'max:200',
            ]);*/
           
            //$role = Role::find($id);
            if($role->update($request->all()))
                return redirect('roles')->with('success', 'Role updated successfully');
>>>>>>> 672b894a19866bd001aabd53c5f55b4ad72923c5
            else
                return redirect('roles')->with('failure', 'Cannot update the role');
      
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
