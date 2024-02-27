@extends('interface.layout_interface')

@section('content')
<div class="container-xxl py-5 mt-5">
    <div class="container">
 

        <div class="row">
       
            <div class="col-lg-8">
                <h1><strong>{{$blogDetail->title}}</strong></h1>
                <div class="mt-5">
                    {!! $blogDetail->description !!}
                </div>
            </div>
           
            <div class="col-lg-4">
                <h4>Tin khác</h4>
            @foreach ($random as $randomm)
            <ul class="mt-3">
                <li>
                <a  href="{{ route('blog.detail', $randomm->id) }}"><h5 class="title-hover">{{$randomm->title}}</h5></a>
                </li>
            </ul>
   
            @endforeach
            </div>
           
        </div>
    </div>
</div>


@endsection