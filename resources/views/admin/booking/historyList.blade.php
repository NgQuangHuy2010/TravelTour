@extends ('admin.layout_admin')

@section('content')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-12">

            @include('partial.successMessage')
            @foreach ($booking as $order)
            <div class="card my-5 mx-4">
                <div class="card-header bg-white d-flex justify-content-between ">
                    <h3 class="card-title float-left p-0 m-0"><strong>Chi tiết hóa đơn</strong></h3>
                    <a href="{{route('ht.deletebookings',$order['id'])}}" class="btn"  onclick="confirmation(event)"><i
                                            class="fa-regular fa-trash-can" style="color: red;" ></i></a>
                </div>

                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead class="table-primary">
                                <tr>
                                <th scope="col">Hóa đơn số </th>

                                    <th scope="col">Tên</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Số điện thoại</th>
                                    <th scope="col">Địa chỉ</th>
                                    <th scope="col">Điểm đi</th>
                                    <th scope="col">Điểm đến</th>
                                    <th scope="col">Ngày đi</th>
                                    <th scope="col">Ngày về</th>
                                    <th scope="col">Phương tiện di chuyển</th>
                                  
                                </tr>
                            </thead>
                            <tbody>
                         
                                <tr>
                                <td>{{ $order->order_id_momo }}</td>
                                    <td>{{ $order->fullname }}</td>
                                    <td>{{ $order->email }}</td>
                                    <td>{{ $order->phone }}</td>
                                    <td>{{ $order->address }}</td>
                                    <td>{{ $order->departurelocation }}</td>
                                    <td>{{ $order->arrivallocation }}</td>
                                    <td>{{ date('d-m-Y H:i', strtotime($order->date_start)) }}</td>
                                    <td>{{ date('d-m-Y ', strtotime($order->date_end)) }}</td>
                                    <td>{{ $order->vehicle }}</td>
                                    <!-- Add more columns here if needed -->
                                </tr>
                                <tr class="table-primary">
                                    <th scope="col">Mã tour</th>
                                    <th scope="col">Thời gian đi</th>
                                    <th scope="col">Người lớn</th>
                                    <th scope="col">Trẻ em</th>
                                    <th scope="col">Trẻ nhỏ</th>
                                    <th scope="col">Giá người lớn</th>
                                    <th scope="col">Giá trẻ em</th>
                                    <th scope="col">Giá trẻ nhỏ</th>
                                    <th scope="col">Giá tour</th>
                                    <th scope="col" style="color:red;">Tổng tiền</th>
                                </tr>
                                <tr>
                                    <td>{{ $order->tour_code }}</td>
                                    <td>{{ $order->keyword }}</td>
                                    <td>{{ $order->person1 }}</td>
                                    <td>{{ $order->person2 }}</td>
                                    <td>{{ $order->person3 }}</td>
                                    <td>{{ $order->price1 }}</td>
                                    <td>{{ $order->price2 }}</td>
                                    <td>{{ $order->price3 }}</td>
                                    <td>{{ $order->price0 }}</td>
                                    <td>{{ number_format($order['total_price'], 0, ',', '.') }} VNĐ</td>
                                </tr>
                               
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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