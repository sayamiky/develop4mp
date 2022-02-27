@extends('ui.dashboard')

@section('content')

<div class="card">
    <div class="card-body">

        <form action="{{ route('users.store') }}" method="post" >
            @csrf
            <div class="m-3">
                <div class="form-group row">
                    <label for="exampleInputEmail1" class="form-label">Nama</label>
                    <input name="name" type="text" class="form-control @error('name') is-invalid @enderror" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="form-group row">
                    <label for="exampleInputEmail1" class="form-label">Email</label>
                    <input name="email" type="email" class="form-control @error('email') is-invalid @enderror" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="form-group row">
                    <label for="exampleInputEmail1" class="form-label">Role</label>
                    <select class="form-control mb-3" aria-label="Default select example" name="role" required>
                        <option value="" selected>Pilih Kategori</option>
                            <option value="admin">{{ ucwords('Admin') }}</option>
                            <option value="user">{{ ucwords('User') }}</option>
                    </select>
                </div>

                <div class="form-group row">
                    <button type="submit" class="btn btn-lg btn-primary w-100 mt-3">Tambah</button>
                </div>

          </form>
          <a href="{{ route('users.index') }}">
            {{-- kembali --}}
            <div class="form-group row">
                <button type="button" class="btn btn-lg btn-danger w-100">Kembali</button>
            </div>
        </a>
    </div>
</div>

@endsection

@section('push')
{{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> --}}
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
@endsection
