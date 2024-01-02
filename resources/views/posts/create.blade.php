@extends('layouts.app')

@section('content')
<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card bg-white border-0 shadow-sm rounded">
                <div class="card-body">
                    <h2 class="mb-4">Tambah Artikel Baru</h2>
                    <form action="{{ route('posts.store') }}" method="POST" enctype="multipart/form-data">

                        @csrf

                        <div class="form-group">
                            <label for="image" class="font-weight-bold">Gambar</label>
                            <input type="file" class="form-control-file @error('image') is-invalid @enderror" name="image">
                            @error('image')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="title" class="font-weight-bold">Judul</label>
                            <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Masukkan Judul Post">
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="content" class="font-weight-bold">Konten</label>
                            <textarea class="form-control @error('content') is-invalid @enderror" name="content" rows="5" placeholder="Masukkan Konten Post">{{ old('content') }}</textarea>
                            @error('content')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="category" class="font-weight-bold">Kategori</label>
                            <select class="form-control" name="category">
                                <option value="technology">Teknologi</option>
                                <option value="travel">Travel</option>
                                <option value="food">Makanan</option>
                                <!-- Tambahkan kategori lainnya sesuai kebutuhan -->
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="author" class="font-weight-bold">Penulis</label>
                            <input type="text" class="form-control" name="author" value="{{ Auth::user()->name }}" readonly>
                        </div>

                        <button type="submit" class="btn btn-md btn-primary">Simpan</button>
                        <button type="reset" class="btn btn-md btn-warning">Reset</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
