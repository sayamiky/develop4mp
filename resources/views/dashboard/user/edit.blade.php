@extends('ui.dashboard')

@section('content')


        <form action="{{ route('users.update',$user->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
                <div class="card border-0 shadow-lg" data-aos="flip-right">
                    <div class="card-body m-3">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Nama</label>
                            <input name="name" type="text" value="{{$user->name}}" class="form-control @error('name') is-invalid @enderror" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            
                            <label for="exampleInputEmail1" class="form-label">Email</label>
                            <input name="email" value="{{$user->email}}"  type="email" class="form-control @error('email') is-invalid @enderror" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                </span>
                            @enderror

                            <label for="exampleInputEmail1" class="form-label">Role</label>
                            <select class="form-control mb-3" aria-label="Default select example" name="role" required>
                                <option value="" selected>Pilih Kategori</option>
                                    <option value="admin">{{ ucwords('Admin') }}</option>
                                    <option value="user">{{ ucwords('User') }}</option>
                            </select>

                            <label for="password1" class="form-label">Password</label>
                            <input name="password" type="password" class="form-control @error('password') is-invalid @enderror" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            
                        <button type="submit" class="btn btn-lg w-100 my-2 btn-success">Simpan</button>
                    <a href="{{ route('users.index') }}"><button type="button" class="btn btn-lg w-100 btn-danger">Kembali</button></a>
                    </div>
                </div>
            </div>
        </form>
@endsection

@section('push')
{{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> --}}
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
@endsection

