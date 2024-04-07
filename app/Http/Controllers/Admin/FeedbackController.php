<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Models\Contact;

class FeedbackController extends Controller
{
    public function index()
    {
        $contact = Contact::get();

        return view('admin.contact.index', compact('contact'));
    }
    public function deleteSelected(Request $request)
    {
        $commentIds = $request->input('comment_ids');
        Contact::whereIn('id', $commentIds)->delete();
    
        toastr()->success('Xóa thành công !');
        return response()->json(['success' => true]);
    }
}
