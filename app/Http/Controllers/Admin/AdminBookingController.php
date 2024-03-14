<?php

namespace App\Http\Controllers\Admin;

use App\Models\Booking;
use App\Models\Guide;
use App\Http\Controllers\Controller;
use App\Notifications\PackageApproveConfirmation;
use Carbon\Carbon;
use Illuminate\Http\Request;
use DB;
use App\Models\Order_momo;
class AdminBookingController extends Controller
{
  

public function tourhistory($id = null){
    $data["booking"] = Booking::where('order_id', '=', $id)->get();
    return view("admin/booking/historyList", $data);
}
public function ordermomo(){
    $data["booking"] = Order_momo::get();
    return view("admin/booking/ordermomo", $data);
}


public function deleteorder($id)
  {
    try {
      if (Booking::where('order_id', $id)->exists()) {

        toastr()->error('Vui lòng xóa chi tiết hóa đơn trước');
        return redirect()->route('ht.ordermomo');
      }
   
      Order_momo::destroy($id);
      toastr()->success('Delete success !');
      return redirect()->route('ht.ordermomo'); //chuyen ve trang category
    } catch (\Throwable $th) {
  
      return redirect()->route('ht.ordermomo'); //chuyen ve trang category
    }
}


public function deletebookings($id)
  {
    try {
      Booking::destroy($id);
      toastr()->success('Delete success !');
      return redirect()->route('ht.ordermomo'); //chuyen ve trang category
    } catch (\Throwable $th) {
  
      return redirect()->route('ht.ordermomo'); //chuyen ve trang category
    }
}
}