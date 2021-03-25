@extends('layouts.admin')

@section('content')

<h2>Posts</h2>

<div class="table-responsive">
<table class="table table-striped table-sm">
  <thead>
    <tr>
      <th>#</th>
      <th>Author</th>
      <th>Text</th>
      <th>Post #</th>
      <th>Created at</th>
    </tr>
  </thead>
  <tbody> 

    @foreach ($comments as $comment )

    <tr>
      <td><a href="{{ url('/posts/' . $comment->post_id) }}">{{ $comment->id }} &rarr;</a></td>
      <td>{{ $comment->text }}</td>
      <td>{{ $comment->author }}</td>
      <td>{{ $comment->post_id }}</td>
      <td>{{ $comment->created_at }}</td>
    </tr>

    @endforeach
    
  </tbody>
</table>
</div>

@endsection