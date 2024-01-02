@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center mb-4">
                <h3>List Web Artikel</h3>
                <hr>
            </div>

            <div class="card border-0 shadow-sm rounded">
                <div class="card-body">
                    <a href="{{ route('posts.create') }}" class="btn btn-success mb-3"><i class="fas fa-plus"></i> Tambah Post</a>

                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Gambar</th>
                                <th scope="col">Kategori</th>
                                <th scope="col">Judul</th>
                                <th scope="col">Status Publish</th>
                                <th scope="col">Author</th>
                                <th scope="col">AKSI</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($posts as $post)
                                <tr>
                                    <td class="text-center">
                                        <img src="{{ asset('/storage/posts/'.$post->image) }}" class="rounded" style="width: 150px">
                                    </td>
                                    <td>{{ $post->category }}</td>
                                    <td>{{ $post->title }}</td>
                                    <td class="text-black">
                                        @if ($post->is_published == '1')
                                            <span class="badge rounded-pill bg-success">Publish</span>
                                        @else
                                            <span class="badge rounded-pill bg-warning">Draft</span>
                                        @endif
                                    </td>
                                    <td>{{ $post->author }}</td>
                                    <td class="text-center">
                                        <form onsubmit="return confirm('Apakah Anda Yakin ?');" action="{{ route('posts.destroy', $post->id) }}" method="POST">
                                            <a href="{{ route('posts.show', $post->id) }}" class="btn btn-dark"><i class="fa-solid fa-file-lines"></i></a>
                                            <a href="{{ route('posts.edit', $post->id) }}" class="btn btn-primary"><i class="far fa-edit"></i></a>
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger"><i class="fas fa-trash"></i></button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="4">
                                        <div class="alert alert-danger text-center">
                                            Data Post belum Tersedia.
                                        </div>
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>

                    {{ $posts->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
