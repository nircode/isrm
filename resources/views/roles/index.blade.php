@extends('adminlte::page')

@section('title', 'ISRM')

@section('content_header')
    <h1>Roles List</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
        	<div class="box">
          		<div class="box-header">
              		<h3 class="box-title">Active Roles</h3>
              		<hr>
              		<!-- <a href="{{ url('/roles/create') }}" class="btn btn-default">Create Role</a> -->
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addRole">
                      Create Role
                  </button>
            	</div>
            	<div class="box-body">
              		<table id="roleTable" class="table table-bordered table-hover">
                		<thead>
		                	<tr>
			                  <th>Name</th>
			                  <th>Description</th>
			                  <td width="150">Action</td>
		                	</tr>
                		</thead>
                		<tbody>
                			@foreach($roles as $role)
	                		<tr>
			                  <td>{{$role->name}}</td>
			                  <td>{{$role->desc}}</td>
			                  <td>
                          @if($role->id ==1)
			                  	<a href="{{ url('/roles/'. $role->id . '/edit') }}" class="btn btn-sm btn-primary disabled" type="button">Edit</a>
			                  	<a href="{{ url('/roles/'. $role->id . '/delete') }}" class="btn btn-sm btn-warning disabled" type="button">Delete</a>
                          @else
                            <a href="{{ url('/roles/'. $role->id . '/edit') }}" class="btn btn-sm btn-primary" type="button">Edit</a>
                          <a href="{{ url('/roles/'. $role->id . '/delete') }}" class="btn btn-sm btn-warning" type="button">Delete</a>
                          @endif
			                  </td>
	                		</tr>
	                		@endforeach
                		</tbody>
                	</table>
                </div>
        	</div>
     	</div>
    </div>

 <!-- Add Role Modal -->
<div class="modal fade" id="addRole" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Create Role</h4>
      </div>
      <form class="form-horizontal" method="post" action="{{ URL::to('roles') }}">
              {{ csrf_field() }}
        <div class="modal-body">
          <div class='box-body'>
            <div class='form-group'>
              <label for="name" class="col-md-2 control-label">Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                </div>
              </div>
              <div class='form-group'>
                <label for="desc" class="col-md-2 control-label">Description</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="desc" name="desc" placeholder="Description">
                </div>
              </div>
          </div>
        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-primary" id="submit" Value="Submit">
        </div>
      </form>
    </div>
  </div>
</div> <!-- /.Add Role Model -->

<!-- Add Role Modal -->
<div class="modal fade" id="editRole" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Create Role</h4>
      </div>
      <form class="form-horizontal" method="patch" action="{{ URL::to('roles') }}">
              {{ csrf_field() }}
        <div class="modal-body">
          <div class='box-body'>
            <div class='form-group'>
              <label for="name" class="col-md-2 control-label">Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                </div>
              </div>
              <div class='form-group'>
                <label for="desc" class="col-md-2 control-label">Description</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="desc" name="desc" placeholder="Description">
                </div>
              </div>
          </div>
        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-primary" id="submit" Value="Submit">
        </div>
      </form>
    </div>
  </div>
</div> <!-- /.Add Role Model -->

@stop

@section('js')
<script type="text/javascript">
	$(function(){
    	$('#roleTable').DataTable({
    		"columnDefs": [
    			{ "orderable": false, "targets": 2 },
    			{ "order": [[1, "asc"]] },
    		]

    	});
	});

</script>
@stop