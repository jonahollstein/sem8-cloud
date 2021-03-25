@extends('layouts.admin')

@section('content')

<h2>Users</h2>

<div class="table-responsive">
<table class="table table-striped table-sm">
  <thead>
    <tr>
      <th>#</th>
      <th>Name</th>
      <th>Email</th>
      <th>Created at</th>
      <th>Remember token</th>
    </tr>
  </thead>
  <tbody>
  
    @foreach ($users as $user )

    <tr>
      <td>{{ $user->id }}</td>
      <td>{{ $user->name }}</td>
      <td>{{ $user->email }}</td>
      <td>{{ $user->created_at }}</td>
      <td>{{ $user->remember_token }}</td>
    </tr>

    @endforeach
   
  </tbody>
</table>
</div>

@endsection