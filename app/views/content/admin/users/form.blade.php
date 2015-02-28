@extends('containers.admin')
 
@section('title') Create User @stop
 
@section('main')
 
<div class='col-lg-4 col-lg-offset-4'>
 
    <h1><i class='fa fa-user'></i> {{Request::segment(3)=='create'?'Add':'Edit'}} User</h1>
 
    @if (Request::segment(3)=='create')
        {{ Form::open(['role' => 'form', 'url' => 'admin/users/store']) }}
    @else
        {{ Form::model($user, ['role' => 'form', 'url' => 'admin/users/update/' . $user->id, 'method' => 'PUT']) }}
    @endif

    <div class='form-group'>
        {{ Form::label('username', 'Username') }}
        {{ Form::text('username', null, ['placeholder' => 'Username', 'class' => 'form-control']) }}
    </div>
 
    <div class='form-group'>
        {{ Form::label('email', 'Email') }}
        {{ Form::email('email', null, ['placeholder' => 'Email', 'class' => 'form-control']) }}
    </div>

    <div class='form-group'>
        {{ Form::label('role', 'Role') }}
        {{ Form::select('role', $roles_dd,isset($user->role->id)?$user->role->id:'3',array('class'=>'form-control')); }}
    </div>
 
    <div class='form-group'>
        {{ Form::label('password', 'Password') }}
        {{ Form::password('password', ['placeholder' => 'Password', 'class' => 'form-control']) }}
    </div>
 
    <div class='form-group'>
        {{ Form::label('password_confirmation', 'Confirm Password') }}
        {{ Form::password('password_confirmation', ['placeholder' => 'Confirm Password', 'class' => 'form-control']) }}
    </div>
 
    <div class='form-group'>
        {{ Form::submit('Save', ['class' => 'btn btn-primary']) }}
    </div>
 
    {{ Form::close() }}
 
</div>
 
@stop