@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Services A R
        </h1>
    </section>
    <div class="content">
        <div class="box box-primary">
            <div class="box-body">
                <div class="row" style="padding-left: 20px">
                    @include('services_a_rs.show_fields')
                    <a href="{!! route('servicesARs.index') !!}" class="btn btn-default">Back</a>
                </div>
            </div>
        </div>
    </div>
@endsection
