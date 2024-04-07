
@extends ('admin.layout_admin')
@section ('content')


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
<div class="iq-navbar-header" style="height: 215px;">
    <div class="container-fluid iq-container">
        <div class="row">
            <div class="col-md-12">
                <div class="flex-wrap d-flex justify-content-between align-items-center">
                    <div>
                        <h2 class="text-dark">Bình luận</h2>
                        <small class="text-dark">Hệ thống<a class="text-primary" href="">/Bình luận</a></small>

                    </div>
                   
                </div>
            </div>
        </div>
    </div>
    <div class="iq-header-img">
        <!-- <img src="{{asset('public')}}/webadmin/assets/images/dashboard/top-header.png" alt="header"
            class="theme-color-default-img img-fluid w-100 h-100 animated-scaleX">
    -->
    </div>
</div> <!-- Nav Header Component End -->
<!--Nav End-->
</div>
<div class="conatiner-fluid content-inner mt-n5 py-0">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <div class="header-title">
                      
                    </div>
                </div>
                <div class="card-body">

                    <div class="table-responsive">
                   
                  
                        <table id="datatable" class="table " data-toggle="data-table">
                        <button  onclick="confirmation(event)" id="deleteSelected" class="btn btn-light mb-3" data-delete-route="{{ route('comments.delete-selected-contact') }}" data-csrf-token="{{ csrf_token() }}">
    <i class="fa-regular fa-trash-can" style="color: red;"></i></button>
                            <thead>
                            
                                <tr>
                                
                                    <th><input type="checkbox" id="checkAll"></th>
                                    <th>STT</th>
                                    <th>Tên</th>
                                    <th>Email</th>
                                    <th>Tin Nhắn</th>
                                    <th>Số Điện Thoại</th>
                                    <th>Ngày Gửi</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php     
                                foreach ($contact as $contact) {  
                                    ?>


                                <tr>

                                <td><input type="checkbox" class="comment-checkbox" data-id="{{ $contact['id'] }}"></td>
                                <td>{{ $contact->id }}</td>
                                    <td scope="row">{{ $contact->name }}</td>
                                    <td>{{ $contact->email }}</td>
                                    <td>{{ $contact->comment }}</td>
                                    <td class="text-break">{{ $contact->phone }}</td>

                                    
                                    <td>{{ $contact->created_at }}</td>


                                    <td>

                                        <a href="" class="btn"
                                            onclick="confirmation(event)"><i class="fa-regular fa-trash-can"
                                                style="color: red;"></i></a>
                                    </td>
                                </tr>


                                <?php  }?>
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






<script>
    var deleteSelectedRoute = "{{ route('comments.delete-selected-contact') }}";
    var csrfToken = "{{ csrf_token() }}";
</script>
<script src="{{asset('public')}}/admin/assets/js/checkAll.js"></script>

<script src="http://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
{!! Toastr::message() !!}
@endsection

