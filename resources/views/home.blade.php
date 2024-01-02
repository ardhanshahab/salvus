@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h2 class="mb-4">Admin Dashboard</h2>

            <!-- Quick Stats -->
            <div class="card mb-4">
                <div class="card-body">
                    <h5>Quick Stats</h5>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card bg-primary text-white text-center p-3">
                                <span class="h3">{{ $totalPosts }}</span>
                                <div class="text-uppercase">Total Articles</div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card bg-success text-white text-center p-3">
                                <span class="h3">{{$publishedPosts}}</span>
                                <div class="text-uppercase">Published Articles</div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card bg-warning text-white text-center p-3">
                                <span class="h3">{{$draftPosts}}</span>
                                <div class="text-uppercase">Draft Articles</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-body">
                    <h5>Recent Activity (Last 7 days)</h5>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Date & Time</th>
                                <th scope="col">Type</th>
                                <th scope="col">Title</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($allposts as $post)
                            <tr>
                                <td>{{ \Carbon\Carbon::parse($post->created_at)->format('M d, Y') }},
                                    <abbr title="{{$post->created_at}}">
                                    {{ Carbon\Carbon::parse($post->created_at)->diffForHumans() }}
                                    </abbr></td>
                                    <td>@if ($post->is_published == 1) Published @else Draft @endif</td>
                                    <td><a href="/posts/{{$post->id}}" target="_blank">{{$post
                                    ->title}}</a></td>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card mb-4 text-center">
                <div class="card-body">
                    <a href="{{ route('posts.create') }}" class="btn btn-primary mr-2">Tambah Artikel</a>
                    <a href="{{ route('posts.index') }}" class="btn btn-secondary">List Artikel</a>
                </div>
            </div>


            <!-- Latest Articles -->
            <div class="card mb-4">
                <div class="card-body">
                    <h5>Latest Articles</h5>
                    <ul class="list-group">
                        @foreach($posts as $latest)
                            <li class="list-group-item">
                                <a href="#">{{ $latest->title }}</a>
                                <span class="float-right">Published on: {{ \Carbon\Carbon::parse($latest->created_at)->format('M d, Y') }}</span>
                            </li>
                        @endforeach
                    </ul>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
