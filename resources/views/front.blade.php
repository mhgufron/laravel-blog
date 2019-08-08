@extends('template.app')
@push('nav')
    <ul class="nav-menu nav navbar-nav">
        @foreach ($categori as $key => $value)
            <li class="cat-{{ $loop->iteration }}">
                <a href="{{ route('artikel.kategori', $value->slug) }}">{{ $value->nama_kategori}}</a>
            </li>
        @endforeach
    </ul>
@endpush
@section('content')
    <!-- section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">

                <!-- post Atas -->
                @foreach ($artikel as $key => $value)
                    <div class="col-md-6">
                        <div class="post post-thumb">
                            <a class="post-img" alt="" width="300" height="300"></a>
                            <div class="post-body">
                                <div class="post-meta">
                                    <a class="post-category cat-2" href="#">{{ $value->kategori->nama_kategori }}</a>
                                    <span class="post-date">{{ $value->created_at->diffForHumans()}}</span>
                                </div>
                                <h3 class="post-title">
                                    <a href="{{ route('artikel.detail', $value->judul) }}">
                                        {{ $value->judul }}
                                    </a>
                                </h3>
                            </div>
                        </div>
                    </div>
                @endforeach
                <!-- /post Atas -->
            </div>
            <!-- /row -->

            <!-- row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h2>Recent Posts</h2>
                    </div>
                </div>
                <div class="clearfix visible-md visible-lg"></div>
            </div>
            <!-- /row -->

            <!-- row -->
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="clearfix visible-md visible-lg"></div>

                        <!-- post Content-->
                        @foreach ($artikelAll as $key => $value)
                            <div class="col-md-6">
                                <div class="post">
                                    <a class="post-img" href="#"><img src="{{ '/uploads/' . $value->gambar }}"
                                    alt="" height="240"></a>
                                    <div class="post-body">
                                        <div class="post-meta">
                                            <a class="post-category cat-2" href="{{ route('artikel.detail', $value->judul) }}">
                                                {{ $value->kategori->nama_kategori }}
                                            </a>
                                            <span class="post-date">{{ $value->created_at->diffForHumans() }}</span>
                                        </div>
                                        <h3 class="post-title">
                                            <a href="{{ route('artikel.detail', $value->judul) }}">
                                                {{ $value->judul }}
                                            </a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        <!-- /post Content -->

                        <div class="clearfix visible-md visible-lg"></div>
                    </div>
                </div>

                <div class="col-md-4">
                    <!-- post widget Terkait -->
                    <div class="aside-widget">
                        <div class="section-title">
                            <h2>Most Read</h2>
                        </div>
                        @foreach ($artikelMostRead as $key => $value)
                            <div class="post post-widget">
                                <a class="post-img" href="{{ route('artikel.detail', $value->judul) }}"><img src="{{ '/uploads/' . $value->gambar }}" height="80"
                                alt=""></a>
                                <div class="post-body">
                                    <h3 class="post-title">
                                        <a href="{{ route('artikel.detail', $value->judul) }}">
                                            {{ $value->judul }}
                                        </a>
                                    </h3>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <!-- /row Terkait -->
        </div>
        <!-- /container -->
    </div>
    <!-- /section -->

@push('categories')
    <ul class="footer-links">
        @foreach ($categori as $key => $value)
            <li><a href="{{ route('artikel.kategori', $value->slug) }}">{{ $value->nama_kategori}}</a></li>
        @endforeach
    </ul>
@endpush
@endsection
