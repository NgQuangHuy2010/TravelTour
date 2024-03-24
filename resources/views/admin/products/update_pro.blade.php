@extends ('admin/layout_admin')
@section ('content')
<div class="container-fluid px-4 my-4">
    <div class="row justify-content-center">
        <div class="col-sm-12">
            <div
                style="background-color: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); margin: 0 auto;">
                <ol class="breadcrumb mb-4">
                    <h3 class="breadcrumb-item active">Cập nhật tour</h3>
                </ol>

                <form action="{{route('ht.productsupdate',$load->id)}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3 row">
                        <div class="col-sm-6 col-6 offset-sm">
                            <!-- Thêm lớp offset-sm-1 để tạo khoảng cách từ mép bên trái -->
                            <label for="inputPassword" class="col-form-label required-field">Tên tour</label>
                            <input type="text" class="form-control" name="name"
                                value="{{old('name',isset($load ->name)?$load ->name:null)}}">
                            {!! $errors->first('name', '<div class="has-error text-danger">:message</div>') !!}
                        </div>
                        <div class="col-sm-6 col-6 offset-sm">
                            <label for="inputPassword" class="col-sm-1 col-form-label ">Mô tả</label>

                            <input type="text" class="form-control" name="desc"
                                value="{{old('desc',isset($load ->desc)?$load ->desc:null)}}">
                            {!! $errors->first('desc', '<div class="has-error text-danger">:message</div>') !!}
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-sm-6 col-6 offset-sm">

                            <label for="inputPassword" class="col-sm-6 col-form-label required-field">Hình ảnh</label>

                            <input type="file" class="form-control" name="image"
                                value="{{old('image',isset($load ->image)?$load ->image:null)}}">
                            {!!$errors->first('image','<div class="has-error text-danger">:message</div>')!!}
                        </div>
                        <div class="col-sm-6 col-6 offset-sm">
                            <label for="inputPassword" class="col-sm-6 col-form-label">Hình ảnh*</label>

                            <input type="file" class="form-control" multiple="multiple" name="images[]">
                            {!!$errors->first('images.*','<div class="has-error text-danger">:message</div>')!!}
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-sm-4 col-6  offset-sm ">
                            <label for="inputPassword" class="col-sm-6 col-form-label">Danh mục</label>
                            <select class="form-control form-select" aria-label="Default select example" name="idcat"
                                id="">
                                @foreach($cate as $item)
                                <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>

                        </div>
                        <div class="col-sm-4 col-6 offset-sm">
                            <label for="inputPassword" class="col-sm-6 col-form-label required-field">Phương tiện di
                                chuyển</label>
                                <input type="text" class="form-control" name="vehicle"
                                value="{{old('vehicle',isset($load ->vehicle)?$load ->vehicle:null)}}">
                            {!! $errors->first('vehicle', '<div class="has-error text-danger">:message</div>') !!}

                        </div>
                        <!-- <disv class="col-sm-2 col-6 offset-sm">
                <label for="inputPassword" class="col-sm-6 col-form-label">Ngày đi</label>

                <input type="datetime-local" class="form-control"
                    value="{{old('departuredate',isset($load ->departuredate)?$load ->departuredate:null)}}"
                    name="departuredate" min="{{ now()->format('Y-m-d\TH:i') }}">
                {!!$errors->first('departuredate','<div class="has-error text-danger">:message</div>')!!}

            </disv> -->
                        <div class="col-sm-4 col-6 offset-sm">
                            <label for="inputPassword" class="col-sm-6 col-form-label">Thời gian đi</label>

                            <input type="text" class="form-control" name="keyword"
                                value="{{old('keyword',isset($load ->keyword)?$load ->keyword:null)}}">
                            {!!$errors->first('keyword','<div class="has-error text-danger">:message</div>')!!}
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-sm-6 offset-sm">
                            <label for="inputPassword" class="col-sm-6 col-form-label">Điểm khởi hành</label>

                            <input type="text" class="form-control" name="departurelocation"
                                value="{{old('departurelocation',isset($load ->departurelocation)?$load ->departurelocation:null)}}">
                            {!!$errors->first('departurelocation','<div class="has-error text-danger">:message</div>
                            ')!!}
                        </div>
                        <div class="col-sm-6 offset-sm">

                            <label for="inputPassword" class="col-sm-6 col-form-label required-field">Điểm đến </label>

                            <input type="text" class="form-control" name="arrivallocation"
                                value="{{old('arrivallocation',isset($load ->arrivallocation)?$load ->arrivallocation:null)}}">
                            {!!$errors->first('arrivallocation','<div class="has-error text-danger">:message</div>')!!}
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-sm-6 col-6 offset-sm">
                            <label for="inputPassword" class="col-sm-6 col-form-label required-field">Giá</label>

                            <input type="text" class="form-control"
                                value="{{old('price',isset($load ->price)?$load ->price:null)}}" name="price">
                            {!!$errors->first('price','<div class="has-error text-danger">:message</div>')!!}
                        </div>
                        <div class="col-sm-6 col-6 offset-sm">
                            <label for="inputPassword" class="col-sm-6 col-form-label required-field">Giá người lớn (từ
                                15 tuổi)</label>


                            <input type="text" class="form-control"
                                value="{{old('price1',isset($load ->price1)?$load ->price1:null)}}" name="price1">
                            {!!$errors->first('price1','<div class="has-error text-danger">:message</div>')!!}
                        </div>
                    </div>
                    <div class="mb-3 row">

                        <div class="col-sm-6 col-6 offset-sm">
                            <label for="inputPassword" class="col-sm-6 col-form-label required-field">Giá trẻ em từ (từ
                                5 - 14 tuổi)</label>

                            <input type="text" class="form-control"
                                value="{{old('price2',isset($load ->price2)?$load ->price2:null)}}" name="price2">
                            {!!$errors->first('price2','<div class="has-error text-danger">:message</div>')!!}
                        </div>
                        <div class="col-sm-6 col-6 offset-sm">
                            <label for="inputPassword" class="col-sm-6 col-form-label required-field">Giá trẻ nhỏ (từ 0
                                - 5 tuổi)</label>


                            <input type="text" class="form-control"
                                value="{{old('price3',isset($load ->price3)?$load ->price3:null)}}" name="price3">
                            {!!$errors->first('price3','<div class="has-error text-danger">:message</div>')!!}
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputPassword" class="col-sm-12 col-form-label">Lịch trình</label>
                        <div class="col-sm-12">
                            <textarea class="form-control" name="content" id="content" cols="30"
                                rows="10">{!!isset($load)? $load->content:null!!}</textarea>
                            <script>   CKEDITOR.replace('content');</script>


                        </div>
                    </div>


                    <!-- 
        <div class="mb-3 row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Điểm khởi hành</label>
    <div class="col-sm-5">
        <select class="form-select" name="departurelocation">
            <option value="">Chọn điểm khởi hành</option>
            <option value="location1" {{ old('departurelocation') == 'location1' ? 'selected' : '' }}>Điểm khởi hành 1</option>
            <option value="location2" {{ old('departurelocation') == 'location2' ? 'selected' : '' }}>Điểm khởi hành 2</option>
           
        </select>
        {!!$errors->first('departurelocation','<div class="has-error text-danger">:message</div>')!!}
    </div>
</div> -->


                    <div class="mb-3  ">
                        <label for="" class="col-sm-2 col-form-label">Status</label>
                        <div class="form-check form-check-inline ">
                            <input class="form-check-input" type="radio" name="status" <?php if($load-> status==1){echo
                            "checked";}else{echo"";} ?> value=1>
                            <label class="form-check-label">Mở</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="status" <?php if($load-> status==0){echo
                            "checked";}else{echo"";} ?> value=0>
                            <label class="form-check-label">Khóa</label>
                        </div>

                    </div>

                    <div class="mb-3 row">
                        <label for="inputPassword" class="col-sm-2 col-form-label"></label>
                        <div class="col-sm-12 text-center ">
                            <button class="btn btn-success" type="submit"><i
                                    class="fa fa-floppy-disk"></i>&nbsp;Lưu</button>
                            <a class="btn btn-secondary" href="{{route('ht.products')}}">Quay lại</a>

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection