@extends('layouts.app')
@section('title','Kategori')
@section('page-title','Edit')
@section('content')
    <div class="row">
        <!-- left column -->
        <div class="col-md-8">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Edit Kategori</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form role="form" action="{{ route('categori.update',$categori->id) }}" method="post">
                    @method('put')
                    {{ csrf_field() }}
                    <div class="box-body">
                        <div class="form-group">
                            @if ($errors->has('nama_kategori'))
                                <div class="alert alert-danger">
                                    <strong>{{ $errors->first('nama_kategori') }}</strong>
                                </div>
                            @endif
                            <label for="exampleInputEmail1">Nama Kategori</label>
                            <input type="text" class="form-control" name="nama_kategori" placeholder="Nama Kategori"  value="{{ $categori->nama_kategori }}">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            @if ($errors->has('nama_kategori'))
                                <div class="alert alert-danger">
                                    <strong>{{ $errors->first('nama_kategori') }}</strong>
                                </div>
                            @endif
                            <label for="exampleInputEmail1">Slug Kategori</label>
                            <input type="text" class="form-control" name="slug" placeholder="Slug Kategori"  value="{{ $categori->slug }}">
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <a href="{{ route('categori.index') }}" class="btn btn-danger">Kembali</a>

                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- /.box -->

@endsection
