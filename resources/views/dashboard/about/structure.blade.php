@extends('ui.dashboard')

@section('content')

<div class="card">
    <div class="card-body"><h3 class="my-3 fw-bolder" style="font-weight: 600"> Struktur Organisasi P$MP</h3>
        <form action="{{ route('structure') }}" method="post" enctype="multipart/form-data">
            @csrf
           
            <div class="mb-3">
                <textarea name="content" class="ckeditor" id="wysiwyg" placeholder="Masukan isi post disini" style="height: 100px" required><?= $data['text'] ?></textarea>
            <button type="submit" class="btn btn-lg w-100 my-2 btn-primary">Update</button>
          </form>
    </div>
</div>

@endsection

@section('push')
{{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> --}}
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
@endsection