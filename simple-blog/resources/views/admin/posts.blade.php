@extends('layouts.admin')

@section('content')

<h2>Posts</h2>

<div class="table-responsive">
<table class="table table-striped table-sm">
  <thead>
    <tr>
      <th>#</th>
      <th>Title</th>
      <th>Lead</th>
      <th>Body</th>
      <th>Image</th>
      <th>Author</th>
    </tr>
  </thead>
  <tbody> 

    @foreach ($posts as $post )

    <tr>
      <td><a href="{{ url('/posts/' . $post->id) }}">{{ $post->id }} &rarr;</a></td>
      <td>{{ $post->title }}</td>
      <td>{{ $post->lead }}</td>
      <td>{{ $post->body }}</td>
      <td>{{ $post->image }}</td>
      <td>{{ $post->author }}</td>
    </tr>

    @endforeach
    
  </tbody>
</table>
</div>

@endsection