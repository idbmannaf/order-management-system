  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-primary navbar-dark border-bottom-0 w3-green" >
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
    </ul>
    <ul class="navbar-nav">
        <li class="nav-item d-flex justify-items-center">
          Balance: ৳ {{$sr->current_income}}
        </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        
      @include('sr.layouts.roleDashboardLinks')

    </ul>
  </nav>
  <!-- /.navbar -->
