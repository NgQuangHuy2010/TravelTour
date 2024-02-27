@extends('interface.layout_interface')

@section('content')
<style>
     .rounded-image {
        border-top-left-radius: 1rem !important;
        border-bottom-left-radius: 1rem !important;
    }
</style>
<div class="container-xxl py-5 my-3">
    <div class="container">
        <div class="row justify-content-center py-5">
            <h1><strong>Tin tức du lịch</strong></h1>
        </div>

        <div class="row g-4 justify-content-center">
            @if(count($blog) > 0)
            <!-- Hiển thị bài viết mới nhất -->
            <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="">
                    <div class="overflow-hidden rounded-image" style="height: 300px; object-fit: cover;">
                        <img class="img-fluid" style="min-height: 300px;"
                            src="{{ asset('public/file/img/img_blog/'.$blog[0]->image) }}" alt="Blog Image">
                    </div>
                    <div class=" p-4 ">
                    <a href="{{ route('blog.detail', $blog[0]->id) }}"><h4 class="mb-0 d-flex title-hover">{{ $blog[0]->title }}</h4></a>    
                        <div class="d-flex"
                            style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; -webkit-line-clamp: 1; -webkit-box-orient: vertical; display: -webkit-box;">
                                {{ date('d-m-Y', strtotime($blog[0]->created_at)) }}</div>
                        
                    </div>
                </div>
            </div>
            <!-- Hiển thị các bài viết cũ hơn -->
            <div class="col-lg-6 col-md-6">
                @foreach($blog->slice(1) as $item)
                <div class=" d-flex mb-3">
                    <div class="overflow-hidden rounded-image"
                        style="height: 130px; width: 150px; object-fit: cover; flex-shrink: 0;">
                        <img class="img-fluid" style="height: 100%; width: 100%;"
                            src="{{ asset('public/file/img/img_blog/'.$item->image) }}" alt="Blog Image">
                    </div>
                    <div class="px-4">
                     <a href="{{ route('blog.detail', $item->id) }}"><h4 class="title-hover mb-0 text-break">{{ $item->title }}</h4></a>   
                        <div class="d-flex"
                            style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; -webkit-line-clamp: 1; -webkit-box-orient: vertical; display: -webkit-box;">
                                {{ date('d-m-Y', strtotime($item->created_at)) }}</div>
                        
                    </div>


                </div>
                @endforeach
            </div>
            @endif
        </div>

    </div>
</div>




@endsection