<!doctype html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Admin</title>
  <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Favicon -->
  <link rel="shortcut icon" href="{{asset('public')}}/admin/assets/images/favicon.ico">
  <!-- Library / Plugin Css Build -->
  <link rel="stylesheet" href="{{asset('public')}}/admin/assets/css/core/libs.min.css">
  <!-- Dark Css -->
  <link rel="stylesheet" href="{{asset('public')}}/admin/assets/css/dark.min.css">
  <link rel="stylesheet" href="{{asset('public')}}/admin/assets/css/style.css">
  <link rel="stylesheet" href="{{asset('public')}}/admin/assets/css/hope-ui.css">
  <script src="{{asset('public')}}/editor/ckeditor/ckeditor.js"></script>


</head>

<body class="  ">
  <!-- loader Start -->
  <!-- <div id="loading">
      <div class="loader simple-loader">
          <div class="loader-body">
          </div>
      </div>    </div> -->
  <!-- loader END -->

  <aside class="sidebar sidebar-default sidebar-white sidebar-base navs-rounded-all ">
    <div class="sidebar-header d-flex align-items-center justify-content-start">
      <a href="{{route('ht.admin')}}" class="navbar-brand">
        <h4 class="logo-title">Admin</h4>
      </a>
      <div class="sidebar-toggle" data-toggle="sidebar" data-active="true">
        <i class="icon">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="4.25" y="5.77539" width="15.5" height="2.44824" rx="1.22412" fill="currentColor" />
            <rect x="4.25" y="11.7754" width="15.5" height="2.44824" rx="1.22412" fill="currentColor" />
            <rect x="4.25" y="17.7754" width="15.5" height="2.44824" rx="1.22412" fill="currentColor" />
          </svg>

        </i>
      </div>
    </div>
    <div class="sidebar-body pt-0 data-scrollbar">
      <div class="sidebar-list">
        <!-- Sidebar Menu Start -->
        <ul class="navbar-nav iq-main-menu" id="sidebar-menu">
          <li class="nav-item static-item">
            <a class="nav-link static-item disabled" href="#" tabindex="-1">
              <span class="default-icon">Home</span>
              <span class="mini-icon">-</span>
            </a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{route('ht.admin')}}">
              <i class="icon">
                <i class="fa-solid fa-chart-column" width="20"></i>
              </i>
              <span class="item-name">Trang chủ</span>
            </a>
          </li> -->
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{route('ht.account')}}">
              <i class="icon">
                <i class="fa-solid fa-user" width="20"></i>

              </i>
              <span class="item-name">Tài khoản</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{route('ht.categorie')}}">
              <i class="icon">
                <i class="fa-solid fa-bars" width="20"></i>

              </i>
              <span class="item-name">Danh mục tour</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{route('ht.products')}}">
              <i class="icon">
                <i class="fa-solid fa-map-location-dot" width="20"></i>
              </i>
              <span class="item-name">Tour</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{route('ht.schedule')}}">
              <i class="icon">
                <i class="fa-solid fa-calendar-days" width="20"></i>
              </i>
              <span class="item-name">Lịch trình</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{route('blog.admin.index')}}">
              <i class="icon">
          
                <i class="fas fa-blog" width="20"></i>
              </i>
              <span class="item-name">Tin tức</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{route('admin.contact.index')}}">
              <i class="icon">
          
                <i class="fas fa-headset"  width="20"></i>
              </i>
              <span class="item-name">Liên hệ</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {" aria-current="page"
              href="{{ route('ht.comments') }}">
              <i class="icon">
              
                <i class="fas fa-comment"  width="20"></i>
              </i>
              <span class="item-name">Bình luận</span>
            </a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link {{ Request::is('admin/guide*') ? 'active' : '' }}" aria-current="page"
              href="{{ route('ht.guideindex') }}">
              <i class="icon">
                <i class="fa-solid fa-calendar-days" width="20"></i>
              </i>
              <span class="item-name">Guide</span>
            </a>
          </li>  -->

          <li class="nav-item">
            <a href="{{ route('ht.ordermomo') }}" aria-current="page" class="nav-link">
              <i class="icon">
                <i class="fa-solid fa-money-bill" width="20"></i>
             
              </i>
              <span class="item-name">Đơn hàng</span>
            </a>
          </li>
        </ul>
     
      </div>
    </div>
    <div class="sidebar-footer"></div>
  </aside>
  <main class="main-content">
    <div class="position-relative iq-banner">
      <!-- Nav Start -->
      <nav class="nav navbar navbar-expand-lg navbar-light iq-navbar">
        <div class="container-fluid navbar-inner">
          <a href="../dashboard/index.html" class="navbar-brand">
            <h4 class="logo-title">Admin</h4>
          </a>
          <div class="sidebar-toggle" data-toggle="sidebar" data-active="true">
            <i class="icon">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <rect x="4.25" y="5.77539" width="15.5" height="2.44824" rx="1.22412" fill="currentColor" />
                <rect x="4.25" y="11.7754" width="15.5" height="2.44824" rx="1.22412" fill="currentColor" />
                <rect x="4.25" y="17.7754" width="15.5" height="2.44824" rx="1.22412" fill="currentColor" />
              </svg>

            </i>
          </div>
          <!-- <div class="input-group search-input">
            <span class="input-group-text" id="search-input">
              <svg class="icon-18" width="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="11.7669" cy="11.7666" r="8.98856" stroke="currentColor" stroke-width="1.5"
                  stroke-linecap="round" stroke-linejoin="round"></circle>
                <path d="M18.0186 18.4851L21.5426 22" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                  stroke-linejoin="round"></path>
              </svg>
            </span>
            <input type="search" class="form-control" placeholder="Search...">
          </div> -->
          <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon">
                  <span class="mt-2 navbar-toggler-bar bar1"></span>
                  <span class="navbar-toggler-bar bar2"></span>
                  <span class="navbar-toggler-bar bar3"></span>
                </span>
            </button> -->
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="mb-2 navbar-nav ms-auto align-items-center navbar-list mb-lg-0">



              <li class="nav-item dropdown">
                <a class="py-0 nav-link d-flex align-items-center" href="#" id="navbarDropdown" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">

                  <img src="{{asset('public/admin/assets')}}/images/unnamed.png" alt="User-Profile"
                    class=" img-fluid avatar avatar-35 avatar-rounded">
                  <div class="caption ms-3 d-none d-md-block ">
                    @if(Auth::check())
                    <h6 class="mb-0 caption-title">{{ Auth::user()->fullname}}</h6>
                    @endif
                    <p class="mb-0 caption-sub-title"> Quản trị viên</p>
                  </div>
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">


                  <li><a class="dropdown-item" href="{{route('ht.logout')}}">Thoát</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav> <!-- Nav Header Component Start -->
      <!-- content -->
      @yield('content')
      <!-- end content -->


  </main>
 

  <!-- Wrapper End-->
 

  <!-- Slider-tab Script -->
  <script src="{{asset('public')}}/admin/assets/js/plugins/slider-tabs.js"></script>
  <!-- Library Bundle Script -->
  <script src="{{asset('public')}}/admin/assets/js/core/libs.min.js"></script>
  <!-- External Library Bundle Script -->
  <script src="{{asset('public')}}/admin/assets/js/core/external.min.js"></script>
  <script src="{{asset('public')}}/admin/assets/js/charts/dashboard.js"></script>
  <!-- Settings Script -->
  <script src="{{asset('public')}}/admin/assets/js/plugins/setting.js"></script>
  <!-- App Script -->
  <script src="{{asset('public')}}/admin/assets/js/hope-ui.js" defer></script>


</body>

</html>