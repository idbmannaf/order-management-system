@php
$ordersCount = (new \App\Globals\Admin())->orders();
$incomplete_order = \App\Models\Ecommerce\EcommerceOrder::whereIn('order_status', ['shipped', 'collected', 'delivered'])->where('completed', '<>', true)->count();
$deliverd = \App\Models\Ecommerce\EcommerceOrder::whereIn('order_status', ['delivered', 'collected'])->count();
$shipped = \App\Models\Shipment::where('order_status', 'shipped')->count();
$ready_to_ship = \App\Models\Shipment::where('order_status', 'ready_to_ship')->count();
$processing = \App\Models\Shipment::where('order_status', 'processing')->count();
@endphp
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-light-primary elevation-4" style="overflow: scroll;">
    <!-- Brand Logo -->
    <a href="{{ url('/') }}" class="brand-link bg-primary- w3-green text-center">
      {{-- <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8"> --}}
           <img class="" style="max-width: 80px; max-height:80px" src="{{ asset('img/dhpl.jpg') }}" alt="{{ env('APP_NAME') }}">
      {{-- <span class="brand-text font-weight-light">{{ env('APP_NAME') }}</span> --}}
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      {{-- <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('cp/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
        </div>
      </div>
 --}}
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-legacy nav-compact" data-widget="treeview" role="menu" data-accordion="true">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

          <li class="nav-item has-treeview {{ session('lsbm') == 'dashboard' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('Dashboard') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('factory.dashboard') }}" class="nav-link {{ session('lsbsm') == 'dashboard' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Dashboard') }}</p>
                </a>
              </li>

              {{-- <li class="nav-item ">
                <a href="{{ route('agent.allLeads', $agent) }}" class="nav-link {{ session('lsbsm') == 'allLeads' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Leads') }}</p>
                </a>
              </li> --}}

              {{-- <li class="nav-item ">
                <a href="" class="nav-link {{ session('lsbsm') == 'newOrder' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Create New Order') }}</p>
                </a>
              </li> --}}

              {{-- <li class="nav-item ">
                <a href="" class="nav-link {{ session('lsbsm') == 'allOrders' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Orders') }}</p>
                </a>
              </li> --}}

              {{-- <li class="nav-item ">
                <a href="" class="nav-link {{ session('lsbsm') == 'allDeliverredOrders' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Deliverred Orders') }}</p>
                </a>
              </li> --}}


            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'products' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('Products') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('factory.products') }}" class="nav-link {{ session('lsbsm') == 'all' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Product List') }}</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview {{ session('lsbm') == 'readyProducts' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('Ready Products') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('factory.readyProducts') }}" class="nav-link {{ session('lsbsm') == 'readyProducts' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Ready Product List') }}</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'orders' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('Orders') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('factory.orders') }}" class="nav-link {{ session('lsbsm') == 'confirmed' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Confirmed Orders') }}  <span class="badge bg-success">{{$ordersCount->confirmed}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('factory.orders.processing') }}" class="nav-link {{ session('lsbsm') == 'processing' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Processing Orders') }}  <span class="badge bg-success">{{$processing}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('factory.orders.readyToShip') }}" class="nav-link {{ session('lsbsm') == 'readyToShip' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Ready to Ship Orders') }} <span class="badge bg-success">{{$ready_to_ship}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('factory.orders.shipped') }}" class="nav-link {{ session('lsbsm') == 'shipped' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Shipped Orders') }} <span class="badge bg-success">{{$shipped }}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('factory.orders.delivered') }}" class="nav-link {{ session('lsbsm') == 'delivered' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Delivered Orders') }} <span class="badge bg-success">{{$deliverd}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('factory.orders.incomplete') }}" class="nav-link {{ session('lsbsm') == 'incomplete' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Incomplete Orders') }} <span class="badge bg-success">{{$incomplete_order }}</span></p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'replacements' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('Replacements') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('factory.replacements',['type'=>'all']) }}" class="nav-link {{ session('lsbsm') == 'allReplacements' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Replacement') }}</p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('factory.replacements',['type'=>'pending']) }}" class="nav-link {{ session('lsbsm') == 'pendingReplacements' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Pending Replacement') }}</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
