@extends('ui.dashboard')

@section('content')

<div class="container">

    <div class="card">
        <div class="card-body m-5">
           
                <h3 class="font-weight-bold"> Selamat Datang, <span class="text-capitalize  "> {{Auth::user()->name}} </span> &#128075;  </h3>
                <p class="my-4"></p>
                <div class="row">
                    
                </div>

        </div>
    </div>

</div>


    
@endsection