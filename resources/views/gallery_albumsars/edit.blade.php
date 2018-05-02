@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Gallery Albumsar
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($galleryAlbumsar, ['route' => ['galleryAlbumsars.update', $galleryAlbumsar->id], 'method' => 'patch' ,'files' => true,'enctype' => 'multipart/form-data'  ]) !!}

                        @include('gallery_albumsars.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection