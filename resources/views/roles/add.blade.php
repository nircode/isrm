@extends('adminlte::page')

@section('title', 'ISRM')

@section('content_header')
    <h1>Create Role</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-md-6">
          <div class="box box-info">
            <div class="box-header with border">
              <h3> Add Role</h3>
            </div>
            
            <form class="form-horizontal" method="post" action="{{ URL::to('roles') }}">
              {{ csrf_field() }}
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
              <div class='box-footer'>
                  <input type="submit" class="btn btn-default" id="submit" Value="Cancel" onClick="javascript:back()">
                  <input type="submit" class="btn btn-info pull-right" id="submit" name="submit" Value="Submit">
              </div>
              </div>
            </form>
          </div>
        </div>
    </div>
@stop

