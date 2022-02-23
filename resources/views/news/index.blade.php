@extends('ui.ui')
@section('main')
<!-- ======= Breadcrumbs Section ======= -->
<section class="breadcrumbs">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center">
        <h2>Berita {{$datas->first()->category->category_name}}</h2>
        <ol>
          <li><a href="index.html">Home</a></li>
          <li><a href="#">{{$datas->first()->category->category_name}}</a></li>
        </ol>
      </div>
    </div>
  </section><!-- Breadcrumbs Section -->
  <!-- ======= Portfolio Details Section ======= -->
  <section id="pricing" class="pricing">
    <div class="container" data-aos="fade-up">
        <div class="section-title">
            <h2>Berita</h2>
            <h3>{{$datas->first()->category->category_name}}</h3>
            <p>Lingkup berita seputar kegiatan tentang Pendidikan di <span>Politeknik Negeri Bali</span></p>
        </div>
        <div class="row">
            @foreach ($datas as $data)
            <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
                <div class="card border-0 shadow-lg" data-aos="flip-right">
                    <img src="{{asset('foto_post')}}/{{ $data->url_photo }}" class="card-img-top" alt="brt-01">
                    <div class="card-body m-3">
                        <p class="badge bg-success" style="font-size: 11px" >{{ ucwords($data->category->category_name) }}  </p>
                        <h5 class="card-title">{{ ucwords($data->title) }}</h5>
                        <p style="font-size: 12px">{{ substr(strip_tags($data->content),0,100) }}...</p>
                        <a href="{{ route('detailPosts.show',$data->id) }}" class="btn btn-primary w-100">Baca Selengkapnya</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection