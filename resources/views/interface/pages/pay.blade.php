@extends('interface/layout_interface')
@section('content')

@if(session()->has('booking'))
@php
$booking = session('booking');
@endphp

<div class="container-xxl" style="max-width: 1200px; margin-bottom: 200px; margin-top: 100px;">

    <div class="row my-4 text-center">
        <h3 class="text-muted">Tổng số tiền cần thanh toán:</h3>
        <p class="total-price">{{ number_format($booking['total_price'], 0, ',', '.') }} VNĐ</p>

        <div class="table-responsive">
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th><b>Tên khách hàng</b></th>
                        <th><b>Email</b></th>
                        <th><b>Số điện thoại</b></th>
                        <th><b>Địa chỉ</b></th>
                        <th><b>Điểm đi</b></th>
                        <th><b>Điểm đến</b></th>
                        <th><b>Ngày đi</b></th>
                        <th><b>Ngày về</b></th>
                        <th><b>Phương tiện di chuyển</b></th>
                        <th><b>Tổng</b></th>
                        <th>Phương thức thanh toán</th>
               
                    </tr>
                    <tr>
                        <td>{{$booking['fullname']}}</td>
                        <td>{{$booking['email']}}</td>
                        <td>{{$booking['phone']}}</td>
                        <td>{{$booking['address']}}</td>
                        <td>{{$booking['departurelocation']}}</td>
                        <td>{{$booking['arrivallocation']}}</td>
                        <td>{{$booking['date_start']}}</td>
                        <td>{{$booking['date_end']}}</td>
                        <td>{{$booking['vehicle']}}</td>
                        <td>{{ number_format($booking['total_price'], 0, ',', '.') }}</td>
                        <td>

                            <form action="{{ route('gd.momo_payment') }}" method="POST">
                                @csrf
                                <input type="hidden" name="total_momo" value="{{ $booking['total_price'] }}">
                                <button type="submit" class="btn btn-primary" name="payUrl">Thanh toán MoMo</button>
                            </form>
                        </td>
                       
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

@endif
<style>
    .total-price {
        font-size: 24px;
        font-weight: bold;
        color: #007bff;
        /* Set the color you prefer */
    }
</style>
@endsection