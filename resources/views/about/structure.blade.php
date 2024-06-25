@extends('ui.ui')
@section('main')
<!-- ======= Breadcrumbs Section ======= -->
<section class="breadcrumbs">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center">
        <h2>Tentang P4MP</h2>
        <ol>
          <li><a href="index.html">Home</a></li>
          <li>Tentang P4MP / Struktur Organisasi P4MP </li>
        </ol>
      </div>
    </div>
  </section><!-- Breadcrumbs Section -->
  <!-- ======= Portfolio Details Section ======= -->
  <section id="portfolio-details" class="portfolio-details">
    <div class="container">
      <div class="row gy-4">
        {{-- <div class="col-lg-12">
          <div class="portfolio-details-slider swiper-container">
            <div class="swiper-wrapper align-items-center">
              <div class="swiper-slide">
                <img src="{{asset('img/portfolio/portfolio-details-1.jpg')}}" alt="">
              </div>
              <div class="swiper-slide">
                <img src="{{asset('img/portfolio/portfolio-details-2.jpg')}}" alt="">
              </div>
              <div class="swiper-slide">
                <img src="{{asset('img/portfolio/portfolio-details-3.jpg')}}" alt="">
              </div>
            </div>
            <div class="swiper-pagination"></div>
          </div>
        </div> --}}
        <div class="container">
            <h1>Struktur Organisasi P4MP</h1>
            {{-- <p>Ditulis Oleh : Surjay</p> --}}
            <hr>
            <p><?= $data['text'] ?></p>
        </div>
      </div>
    </div>
  </section><!-- End Portfolio Details Section -->
@endsection