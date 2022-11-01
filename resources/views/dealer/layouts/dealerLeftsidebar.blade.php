<?php

$shopsCount = (new \App\Globals\Smo($dealer->id))->shops();
$ordersCount = (new \App\Globals\Smo($dealer->id))->orders();


?>
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-light-indigo elevation-2">
    <!-- Brand Logo -->
    <a href="{{ url('/') }}" class="brand-link bg-indigo text-center">
      {{-- <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8"> --}}
           <img class="" style="max-width: 80px; max-height:80px" src="{{ asset('img/dhpl.jpg') }}" alt="">
      <span class="brand-text font-weight-light">{{ env('APP_NAME') }}</span>
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
                <a href="{{ route('dealer.dashboard', $dealer) }}" class="nav-link {{ session('lsbsm') == 'dashboard' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Dashboard') }}</p>
                </a>
              </li>


              <li class="nav-item ">
                <a href="{{ route('dealer.allAgents', $dealer) }}" class="nav-link {{ session('lsbsm') == 'allAgents' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All SR') }}</p>
                </a>
              </li>

              {{-- <li class="nav-item ">
                <a href="{{ route('dealer.allMarkets', $dealer) }}" class="nav-link {{ session('lsbsm') == 'allMarkets' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Markets') }}</p>
                </a>
              </li> --}}
            </ul>
          </li>
          <li class="nav-item has-treeview {{ session('lsbm') == 'shops' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
                <i class="nav-icon fas fa-industry"></i>
                <p>
                    {{ __('Shops') }}
                    <i class="right fas fa-angle-left"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item ">
                    <a href="{{ route('dealer.allShops',['dealer'=>$dealer,'dealer'=>$dealer,'type'=>'all']) }}"
                        class="nav-link {{ session('lsbsm') == 'allShops' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>{{ __('All Shops') }} <span class="badge bg-success">{{$shopsCount->total}}</span></p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a href="{{ route('dealer.allShops',['dealer'=>$dealer,'dealer'=>$dealer,'type'=>'active']) }}"
                        class="nav-link {{ session('lsbsm') == 'activeShops' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>{{ __('Actived Shop') }} <span class="badge bg-success">{{$shopsCount->active}}</span></p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a href="{{ route('dealer.allShops',['dealer'=>$dealer,'dealer'=>$dealer,'type'=>'inactive']) }}"
                        class="nav-link {{ session('lsbsm') == 'inActiveShops' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>{{ __('Inactived Shops') }} <span class="badge bg-danger">{{$shopsCount->inActive}}</span></p>
                    </a>
                </li>

            </ul>
        </li>
        <li class="nav-item has-treeview {{ session('lsbm') == 'orders' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-shopping-bag w3-text-blue"></i>
              <p>
                Order Management
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item">
                <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'all']) }}" class="nav-link {{ session('lsbsm') == 'allOrders' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Orders <span class="badge bg-success">{{$ordersCount->total}}</span></p>
                </a>
              </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'pending']) }}" class="nav-link {{ session('lsbsm') == 'pendingOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Pending Orders <span class="badge bg-warning">{{$ordersCount->pending}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'confirmed']) }}" class="nav-link {{ session('lsbsm') == 'confirmedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Confirmed Orders <span class="badge bg-success">{{$ordersCount->confirmed}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'processing']) }}" class="nav-link {{ session('lsbsm') == 'processingOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Processing Orders <span class="badge bg-success">{{$ordersCount->processing}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'shipped']) }}" class="nav-link {{ session('lsbsm') == 'shippedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Shipped Orders <span class="badge bg-success">{{$ordersCount->shipped}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'collected']) }}" class="nav-link {{ session('lsbsm') == 'collectedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Collected Orders <span class="badge bg-success">{{$ordersCount->collected}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'delivered']) }}" class="nav-link {{ session('lsbsm') == 'deliveredOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Delivered Orders <span class="badge bg-success">{{$ordersCount->delivered}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'cancelled']) }}" class="nav-link {{ session('lsbsm') == 'cancelledOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Cancelled Orders <span class="badge bg-success">{{$ordersCount->cancelled}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'returned']) }}" class="nav-link {{ session('lsbsm') == 'returnedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Returned Orders <span class="badge bg-danger">{{$ordersCount->returned}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'undelivered']) }}" class="nav-link {{ session('lsbsm') == 'undeliveredOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Undelivered Orders <span class="badge bg-danger">{{$ordersCount->undelivered}}</span></p>
                    </a>
                </li>


            </ul>
          </li>
          {{-- <li class="nav-item has-treeview {{ session('lsbm') == 'lead' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tag"></i>
              <p>
                {{ __('Lead') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('dealer.allLeads', ['status'=>'pending', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allLeadspending' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Pending Leads') }}</p>
                </a>
              </li>


              <li class="nav-item ">
                <a href="{{ route('dealer.allLeads', ['status'=>'published', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allLeadspublished' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Published Leads') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allLeadOrders', ['dealer'=>$dealer, 'status'=>'confirmed']) }}" class="nav-link {{ session('lsbsm') == 'allLeadOrdersconfirmed' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Confirmed Lead Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allLeadOrders', ['dealer'=>$dealer, 'status'=>'processing']) }}" class="nav-link {{ session('lsbsm') == 'allLeadOrdersprocessing' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Processing Lead Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allLeadOrders', ['dealer'=>$dealer, 'status'=>'ready_to_ship']) }}" class="nav-link {{ session('lsbsm') == 'allLeadOrdersready_to_ship' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Ready to Ship Lead Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allLeadOrders', ['dealer'=>$dealer, 'status'=>'shipped']) }}" class="nav-link {{ session('lsbsm') == 'allLeadOrdersshipped' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Shipped Lead Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allLeadOrders', ['dealer'=>$dealer, 'status'=>'collected']) }}" class="nav-link {{ session('lsbsm') == 'allLeadOrderscollected' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Collected Lead Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allLeadOrders', ['dealer'=>$dealer, 'status'=>'delivered']) }}" class="nav-link {{ session('lsbsm') == 'allLeadOrdersdelivered' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Delivered Lead Orders') }}</p>
                </a>
              </li>

            </ul>
          </li> --}}

          {{-- <li class="nav-item has-treeview {{ session('lsbm') == 'order' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-th"></i>
              <p>
                {{ __('Order') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('dealer.allOrders', ['status'=>'pending', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allOrderspending' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Pending Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allOrders', ['status'=>'confirmed', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allOrdersconfirmed' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Confirmed Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allOrders', ['status'=>'processing', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allOrdersprocessing' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Processing Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allOrders', ['status'=>'ready_to_ship', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allOrdersready_to_ship' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Ready Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allOrders', ['status'=>'shipped', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allOrdersshipped' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Shipped Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allOrders', ['status'=>'collected', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allOrderscollected' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Collected Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allOrders', ['status'=>'delivered', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allOrdersdelivered' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Delivered Orders') }}</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('dealer.allOrders', ['status'=>'cancelled', 'dealer'=>$dealer]) }}" class="nav-link {{ session('lsbsm') == 'allOrderscancelled' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Cancelled Orders') }}</p>
                </a>
              </li>

            </ul>
          </li> --}}

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
