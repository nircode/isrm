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
              		<button type="button" class="btn btn-default" data-toggle="modal" data-target="#addRole">Add Role</button>
            	</div>
            	<div class="box-body">
              		<table id="roleTable" class="table table-bordered table-hover">
                		<thead>
		                	<tr>
			                  <th>Name</th>
			                  <th>Description</th>
			                  <td>Action</td>
		                	</tr>
                		</thead>
                		<tbody>
                			@foreach($roles as $role)
	                		<tr>
			                  <td>{{$role->name}}</td>
			                  <td>{{$role->desc}}</td>
			                  <td>
			                  	<a href="{{ url('/roles/'. $role->id . '/edit') }}" class="btn btn-primary">Edit</a>
			                  	<a href="{{ url('/roles/'. $role->id . '/delete') }}" class="btn btn-warning">Delete</a>
			                  </td>
	                		</tr>
	                		@endforeach
                		</tbody>
                	</table>
                </div>
        	</div>
     	</div>
    </div>

    <!-- Modal -->
      <div class="example-modal">
        <div class="modal fade" id="addRole" style="display: none;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Default Modal</h4>
              </div>
              <div class="modal-body">
                <p>One fine body&hellip;</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
      </div>

    <!-- /. Modal -->
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