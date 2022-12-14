  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-indigo navbar-dark border-bottom-0" >
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>

      <li class="nav-item d-none d-sm-inline-block">
        <a href="" class="nav-link text-white">GM: {{ $depo->name }}</a>
      </li>

      <li class="nav-item d-none d-sm-inline-block">
        <a href="" class="nav-link text-white">Balance: {{ env('CURRENCY_SYMBLE') }} {{ number_format($depo->balance,2) }}</a>
      </li>
      {{-- <li class="nav-item d-none d-sm-inline-block">
        <a href="" class="nav-link text-white">Order Balance: {{ env('CURRENCY_SYMBLE') }} {{ number_format($dealer->orderBalance(),2) }}</a>
      </li> --}}
    </ul>

    <!-- SEARCH FORM -->
    {{-- <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form> --}}

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      @include('welcome.layouts.roleDashboardLinks')

    </ul>
  </nav>
  <!-- /.navbar -->
