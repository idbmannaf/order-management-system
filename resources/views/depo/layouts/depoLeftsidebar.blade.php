<?php
$shopsCount = (new \App\Globals\Gm($depo->id))->shops();
$ordersCount = (new \App\Globals\Gm($depo->id))->orders();
$returnCount = (new \App\Globals\Gm($depo->id))->return();
$returnColl = (new \App\Globals\Gm($depo->id))->collection();
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
              <i class="nav-icon w3-text-blue fas fa-tachometer-alt"></i>
              <p>
                {{ __('Dashboard') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('depo.dashboard', $depo) }}" class="nav-link {{ session('lsbsm') == 'dashboard' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Dashboard') }}</p>
                </a>
              </li>
            </ul>
          </li>

          {{-- order management --}}
          <li class="nav-item has-treeview {{ session('lsbm') == 'orders' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon w3-text-blue fa fa-shopping-bag"></i>
              <p>
                {{ __('Order Management') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'all']) }}" class="nav-link {{ session('lsbsm') == 'allOrders' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Order') }} <span title="{{$depo->OrderCount('all')}} All Orders" class="badge bg-success">{{$ordersCount->total}}</span></p>
                </a>
              </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'pending']) }}" class="nav-link {{ session('lsbsm') == 'pendingOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Pending Orders <span title="{{$ordersCount->pending}} Pending Orders" class="badge bg-danger">{{$ordersCount->pending}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'confirmed']) }}" class="nav-link {{ session('lsbsm') == 'confirmedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Confirmed Orders <span title="{{$ordersCount->confirmed}} Confirmed Orders" class="badge bg-success">{{$ordersCount->confirmed}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'processing']) }}" class="nav-link {{ session('lsbsm') == 'processingOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Processing Orders <span title="{{$ordersCount->processing}} Processing Orders" class="badge bg-success">{{$ordersCount->processing}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'shipped']) }}" class="nav-link {{ session('lsbsm') == 'shippedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Shipped Orders <span title="{{$ordersCount->shipped}} Shipped Orders" class="badge bg-success">{{$ordersCount->shipped}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'collected']) }}" class="nav-link {{ session('lsbsm') == 'collectedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Collected Orders <span title="{{$ordersCount->collected}} Collected Orders" class="badge bg-success">{{$ordersCount->collected}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'delivered']) }}" class="nav-link {{ session('lsbsm') == 'deliveredOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Delivered Orders <span title="{{$ordersCount->delivered}} Delivered Orders" class="badge bg-success">{{$ordersCount->delivered}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'cancelled']) }}" class="nav-link {{ session('lsbsm') == 'cancelledOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Cancelled Orders <span title="{{$ordersCount->cancelled}} Cancelled Orders" class="badge bg-success">{{$ordersCount->cancelled}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'returned']) }}" class="nav-link {{ session('lsbsm') == 'returnedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Returned Orders <span title="{{$ordersCount->returned}} Returned Orders" class="badge bg-success">{{$ordersCount->returned}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('depo.allOrders', ['depo'=>$depo,'type'=>'undelivered']) }}" class="nav-link {{ session('lsbsm') == 'undeliveredOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Undelivered Orders <span title="{{$ordersCount->undelivered}} Undelivered Orders" class="badge bg-success">{{$ordersCount->undelivered}}</span></p>
                    </a>
                </li>
            </ul>

          </li>
          {{-- ./order management --}}
          {{-- shop management --}}
          <li class="nav-item has-treeview {{ session('lsbm') == 'shops' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon w3-text-blue fa fa-store-alt "></i>
              <p>
                {{ __('Shops') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('depo.shops', ['depo'=>$depo,'type'=>'all']) }}" class="nav-link {{ session('lsbsm') == 'allShops' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Shop') }} <span class="badge bg-success">{{$shopsCount->total}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.shops', ['depo'=>$depo,'type'=>'active']) }}" class="nav-link {{ session('lsbsm') == 'activeShops' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Active Shop') }} <span class="badge bg-success">{{$shopsCount->active}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.shops', ['depo'=>$depo,'type'=>'inactive']) }}" class="nav-link {{ session('lsbsm') == 'inactiveShops' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Inactive Shop') }} <span class="badge bg-warning">{{$shopsCount->inActive}}</span></p>
                </a>
              </li>
            </ul>
          </li>
          {{-- ./shop management--}}
          {{-- collection management --}}
          <li class="nav-item has-treeview {{ session('lsbm') == 'collections' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon w3-text-blue fa fa-money-bill-wave "></i>
              <p>
                {{ __('Collection Management') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('depo.collections',['depo'=>$depo,'type'=>'all']) }}" class="nav-link {{ session('lsbsm') == 'allCollection' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Collection') }} <span class="badge bg-warning">{{$returnColl->total}}</span> </p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.collections',['depo'=>$depo,'type'=>'pending']) }}" class="nav-link {{ session('lsbsm') == 'pendingCollection' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Pending Collection')  }} <span class="badge bg-warning">{{$returnColl->pending}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.collections',['depo'=>$depo,'type'=>'varified']) }}" class="nav-link {{ session('lsbsm') == 'varifiedCollection' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Approved Collection') }} <span class="badge bg-success">{{$returnColl->approved}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.collections',['depo'=>$depo,'type'=>'rejected']) }}" class="nav-link {{ session('lsbsm') == 'rejectedCollection' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Rejected Collection') }} <span class="badge bg-danger">{{$returnColl->rejected}}</span></p>
                </a>
              </li>
            </ul>
          </li>
          {{-- ./collection management --}}

          {{-- return management  --}}

          <li class="nav-item has-treeview {{ session('lsbm') == 'returns' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon w3-text-blue fas fa-exchange-alt"></i>
              <p>
                {{ __('Return Management') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('depo.ecommerce.shipment.returns',['depo'=>$depo,'type'=>'all']) }}" class="nav-link {{ session('lsbsm') == 'allReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Return') }} <span class="badge bg-success">{{$returnCount->total}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.ecommerce.shipment.returns',['depo'=>$depo,'type'=>'accepted']) }}" class="nav-link {{ session('lsbsm') == 'acceptedReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Accepted Return') }} <span class="badge bg-success">{{$returnCount->accepted}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.ecommerce.shipment.returns',['depo'=>$depo,'type'=>'pending']) }}" class="nav-link {{ session('lsbsm') == 'pendingReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Pending Return') }} <span class="badge bg-warning">{{$returnCount->pending}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.ecommerce.shipment.returns',['depo'=>$depo,'type'=>'itemWise']) }}" class="nav-link {{ session('lsbsm') == 'itemWiseReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('ItemWise Return') }} <span class="badge bg-success">{{$returnCount->itemWise}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.ecommerce.shipment.returns',['depo'=>$depo,'type'=>'rejected']) }}" class="nav-link {{ session('lsbsm') == 'rejectedReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('Rejected Return') }} <span class="badge bg-danger">{{$returnCount->rejected}}</span></p>
                </a>
              </li>

            </ul>
          </li>
          {{-- ./return managemnet --}}
          {{-- role section --}}
          <li class="nav-item has-treeview {{ session('lsbm') == 'role' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="w3-text-blue  nav-icon fas fa-user-circle"></i>
              <p>
                {{ __('Role') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
{{--
              <li class="nav-item ">
                <a href="{{ route('depo.rolesAll',['depo'=>$depo,'type'=>'distributor']) }}" class="nav-link {{ session('lsbsm') == 'distributor' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All Distributors') }}</p>
                </a>
              </li> --}}

              <li class="nav-item ">
                <a href="{{ route('depo.rolesAll',['depo'=>$depo,'type'=>'dealer']) }}" class="nav-link {{ session('lsbsm') == 'dealer' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All SMO') }}</p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('depo.rolesAll', ['depo'=>$depo,'type'=>'agent']) }}" class="nav-link {{ session('lsbsm') == 'agent' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ __('All SR') }}</p>
                </a>
              </li>
            </ul>
          </li>
          {{-- ./end role section --}}

          {{-- Due Section Start --}}
          <li class="nav-item has-treeview {{ session('lsbm') == 'due' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
                <i class="nav-icon fas fa-print w3-text-blue"></i>
                <p>
                    Due
                    <i class="right fas fa-angle-left"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">

                <li class="nav-item ">
                    <a href="{{ route('gm.dueList', ['depo'=>$depo->id]) }}" class="nav-link {{ session('lsbsm') == 'dueList' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        Due List
                    </a>
                </li>

            </ul>
        </li>
          {{-- Due Section End --}}
{{--            Report Start--}}
            <li class="nav-item has-treeview {{ session('lsbm') == 'report' ? ' menu-open ' : '' }}">
                <a href="#" class="nav-link ">
                    <i class="nav-icon fas fa-print w3-text-blue"></i>
                    <p>
                        Report
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">

                    {{-- <li class="nav-item ">
                      <a href="{{ route('admin.report', 'shop') }}" class="nav-link {{ session('lsbsm') == 'shop' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        Shop
                      </a>
                    </li> --}}

                    <li class="nav-item ">
                        <a href="{{ route('gm.report', ['type'=>'order','depo'=>$depo->id]) }}" class="nav-link {{ session('lsbsm') == 'order' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            Order
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="{{ route('gm.report',['type'=>'collection','depo'=>$depo->id]) }}" class="nav-link {{ session('lsbsm') == 'collection' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            Collection
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="{{ route('gm.report',['type'=>'return','depo'=>$depo->id] ) }}" class="nav-link {{ session('lsbsm') == 'return' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            Return
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="{{ route('gm.report',['type'=>'product','depo'=>$depo->id]) }}" class="nav-link {{ session('lsbsm') == 'product' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            Product Sales Report
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="{{ route('gm.report',['type'=>'sr','depo'=>$depo->id] ) }}" class="nav-link {{ session('lsbsm') == 'sr' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            SR Report
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="{{ route('gm.report',['type'=>'shop','depo'=>$depo->id] ) }}" class="nav-link {{ session('lsbsm') == 'shop' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            Shop Report
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="{{ route('gm.report', ['type'=>'daily','depo'=>$depo->id]) }}" class="nav-link {{ session('lsbsm') == 'daily' ? ' active ' : '' }}">
                          <i class="far fa-circle nav-icon"></i>
                          Daily Report
                        </a>
                      </li>
                    {{-- <li class="nav-item ">
                        <a href="{{ route('gm.report',['type'=>'due','depo'=>$depo->id] ) }}" class="nav-link {{ session('lsbsm') == 'shop' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            Due Report
                        </a>
                    </li> --}}

                </ul>
            </li>
{{--           Report End--}}
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
