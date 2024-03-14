@extends ('admin.layout_admin')

@section('content')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">

              	@include('partial.successMessage')

                <div class="card my-5 mx-4">
                <div class="card-header bg-white">
                    <h3 class="card-title float-left p-0 m-0"><strong>Hóa đơn ({{ $booking->count() }})</strong></h3>
                </div>
                <!-- card-header -->
                @if ($booking->count() > 0)
                <div class="card-body">
                    <div class="table-responsive">
                    <table id="datatable" class="table " data-toggle="data-table">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Mã thanh toán</th>
                                    <th>Mã đơn hàng</th>
                                    <th>Giá</th>
                                    <th>Phương thức thanh toán</th>
                                    <th>Ngày thanh toán</th>
                                    
                                    <th style="width:150px;"></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($booking as $value)
                                <tr>
                                    <td>{{ $value["id"]}}</td>
                                    <td>{{ $value-> partner_code}}</td>
                                    <td>{{ $value-> order_id}}</td>
                                    <td>{{ number_format($value['amount'], 0, ',', '.') }} VNĐ</td>
                                    <td>{{ $value-> order_info}}</td>
                                    <td>{{ $value-> created_at}}</td>
                           
                                    <td class="td-table">
                                    
                                    <a href="{{route('ht.ordermomodel',$value['id'])}}" class="btn"  onclick="confirmation(event)"><i
                                            class="fa-regular fa-trash-can" style="color: red;" ></i></a>
                                    <a href="{{route('ht.ordermomodetail',$value['id'])}}" class="btn "> <i class="fa-solid fa-eye" style="color: #1663e9;"></i></a>

                           </td>
                                </tr>

                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                @else
                <h2 class="text-center text-info font-weight-bold m-3">No payment Found</h2>
                @endif

                <!-- /.card-body -->
            </div>
                  <!-- /.card -->
            </div>
        </div>
    </div><!-- /.container -->
    <script>
    function confirmation(ev) {
        ev.preventDefault();
        var urlToRedirect = ev.currentTarget.getAttribute('href');
        console.log(urlToRedirect);

        Swal.fire({
            title: 'Bạn có chắc muốn xóa không?',
            text: 'Dữ liệu sẽ bị mất vĩnh viễn!',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#009900',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Đồng ý',
            cancelButtonText: 'Hủy',
            customClass: {
                container: 'custom-swal'
            }
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = urlToRedirect;
            }
        });
    }
</script>
<script src="http://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
{!! Toastr::message() !!}
 @endsection