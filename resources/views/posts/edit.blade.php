@extends('layouts.app')

@section('content')
<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card border-0 shadow-sm rounded">
                <div class="card-body">
                    <form action="{{ route('posts.update', $post->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="form-group">
                            <label class="font-weight-bold">GAMBAR</label>
                            <input type="file" class="form-control" name="image">
                        </div>

                        <div class="form-group">
                            <label class="font-weight-bold">JUDUL</label>
                            <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title', $post->title) }}" placeholder="Masukkan Judul Post">
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label class="font-weight-bold">KATEGORI</label>
                            <select class="form-control" name="category">
                                <option value="technology" {{ $post->category == 'technology' ? 'selected' : '' }}>Teknologi</option>
                                <option value="travel" {{ $post->category == 'travel' ? 'selected' : '' }}>Travel</option>
                                <option value="food" {{ $post->category == 'food' ? 'selected' : '' }}>Makanan</option>
                                <!-- Tambahkan opsi kategori lainnya sesuai kebutuhan -->
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="font-weight-bold">KONTEN</label>
                            <textarea class="form-control @error('content') is-invalid @enderror" name="content" rows="5" placeholder="Masukkan Konten Post">{{ old('content', $post->content) }}</textarea>
                            @error('content')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label class="font-weight-bold">Status Publikasi</label>
                            <select class="form-control" name="is_published">
                                <option value="1" {{ $post->is_published ? 'selected' : '' }}>Publish</option>
                                <option value="0" {{ !$post->is_published ? 'selected' : '' }}>Draft</option>
                            </select>
                        </div>


                        <button type="submit" class="btn btn-md btn-primary">UPDATE</button>
                        <button type="reset" class="btn btn-md btn-warning">RESET</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
