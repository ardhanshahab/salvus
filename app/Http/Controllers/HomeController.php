<?php

namespace App\Http\Controllers;
use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
{
    // Total artikel
    $totalPosts = Post::count();

    // // Artikel yang di-publish
    $publishedPosts = Post::where('is_published', '1')->count();
    $draftPosts = Post::where('is_published', '0')->count();

    // // Latest article
    // $latestPost = Post::orderBy('created_at', 'desc')->first();

    // Get all posts from database and order them by date in descending order
    $posts = Post::where('is_published', '1')->orderBy('created_at', 'desc')->get();
    $allposts = Post::orderBy('created_at', 'desc')->get();

    return view('home', [
        'posts' => $posts,
        'allposts' => $allposts,
        'totalPosts' => $totalPosts,
        'publishedPosts' => $publishedPosts,
        'draftPosts' => $draftPosts,
        // 'latestPost' => $latestPost,
    ]);
}

}
