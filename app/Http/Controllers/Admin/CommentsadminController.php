<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductRating;
use Illuminate\Support\Facades\Session;
class CommentsadminController extends Controller
{
  public function comments(){
    $data['comments'] = ProductRating::get();
    return view('admin/comments/comments',$data);
  }
  public function delete($id)
    {
      try {
        ProductRating::destroy($id);
        toastr()->success('Xóa thành công !');
        return redirect()->route('ht.comments'); 
      } catch (\Throwable $th) {
  
        return redirect()->route('ht.comments'); 
      }
    }


    public function deleteSelected(Request $request)
    {
        $commentIds = $request->input('comment_ids');
        ProductRating::whereIn('id', $commentIds)->delete();
    
        toastr()->success('Xóa thành công !');
        return response()->json(['success' => true]);
    }
  }
