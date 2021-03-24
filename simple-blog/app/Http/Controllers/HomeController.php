<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Post;
use App\Comment;

class HomeController extends Controller
{
    public function index()
    {
		$posts = Post::all();

	    return view('home', [
    		'posts' => $posts
		]);
	}

	public function showPost($postId)
	{
    	$post = Post::findOrFail($postId);

    	//dd($post->comments->sortByDesc('created_at'));

	    return view('post', [
	    	'post' => $post
	    ]);
	}

	public function createPost(Request $request)
	{
		return view('createPost');
	}

	public function savePost(Request $request)
	{
	    $post = new Post();
	    $post->author = "Author" ;//Auth::user()->name;
	    $post->title  = $request->input('title');
	    $post->lead   = $request->input('lead');
	    $post->body   = $request->input('body');

		$image = $request->file('image');
		$post->image = $image->storeAs(
			'images',
			$image->getClientOriginalName(),
			'public'
		);
	    $post->save();

	    return redirect('/');
	}

	public function saveComment(Request $request, $postId) 
	{
	    $comment = new Comment();
	    $comment->author  = "Autor"; // Auth::user()->name;
	    $comment->text    = $request->input('kommentar');
	    $comment->post_id = $postId;
	    $comment->save();

	    //dd(request()->all());
	    return redirect('/posts/'.$postId);
	}


}
