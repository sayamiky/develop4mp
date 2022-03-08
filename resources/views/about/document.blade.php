@extends('ui.ui')

@section('main')

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

          <div class="d-flex justify-content-between align-items-center">
            <h2>Tentang P4MP</h2>
            <ol>
              <li><a href="{{ route('index') }}">Home</a></li>
              <li>Dokumen Mutu</li>
            </ol>
          </div>

        </div>
      </section><!-- End Breadcrumbs -->
      <section class="inner-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 mb-5" data-aos="fade-up" data-aos-delay="100">
                    <div class="card border-0 shadow-lg" data-aos="flip-right">
                        <div class="card-body m-3">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                      <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Nama Dokumen</th>
                                        <th scope="col">Kategori</th>
                                        <th scope="col">Diuload Pada Tanggal</th>
                                        <th scope="col">Aksi</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach ($documents as $document)
                                        <tr>
                                          <th scope="row">{{ ++$i }}</th>
                                          <td>{{ $document->title }}</td>
                                          <td>{{ $document->categoryDocument->category_name }}</td>
                                          <td>{{ $document->created_at->format('Y-m-d') }}</td>
                                          <td><button type="button" class="btn btn-primary btn-sm" id="myBtn">Download</button></td>
                                          {{-- <td><a class="btn btn-primary btn-sm" href="{{route('document.download',['url' => $document->url_file ])}}">Download</a></td> --}}
                                        </tr>
                                      @endforeach
                                    </tbody>
                                  </table>
                                  <div class="d-flex justify-content-end">
                                    {{ $documents->links() }}
                                  </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </section>
        <!-- The Modal -->
        <div id="unamemodals" class="modalz">
          <!-- Modal content -->
          <div class="container">
            <div class="row">
              <div class="modalz-content">
                <span class="closez">&times;</span>
                <div class="login-wrapper my-auto">
                  <div style="padding-bottom : 12px;">
                    {{-- <img src="{{ asset('img/logo.png') }}" alt="" width="300" height="50"> --}}
                  </div>
                  <form action="{{route('document.download',['url' => $document->url_file ])}}">
                    <div class="form-group" id="con_email">
                      <label for="email">Email</label>
                      <input type="email" name="email" id="email" class="form-control @error('email') is-invalid @enderror" placeholder="email@example.com">
                      @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                      @enderror
                    </div>
                    <br>
                    <div class="form-group mb-4">
                      <label for="password">Password</label>
                      <input type="password" name="password" id="password" class="form-control @error('password') is-invalid @enderror" placeholder="enter your passsword">
                      @error('password')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                      @enderror
                    </div>
                    <input name="login" id="login" class="btn btn-primary  login-btn" type="submit" value="Download File" style="float: right">
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
    </main><!-- End #main -->


</main><!-- End #main -->
@endsection
