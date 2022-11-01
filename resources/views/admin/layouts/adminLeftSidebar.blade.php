<?php
$shopsCount = (new \App\Globals\Admin())->shops();
$ordersCount = (new \App\Globals\Admin())->orders();
$collectionCount = (new \App\Globals\Admin())->collection();
$returnCount = (new \App\Globals\Admin())->return();
?>
<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-light-primary elevation-4 " style="overflow: scroll;">
    <!-- Brand Logo -->
    <a href="{{ url('/') }}" class="brand-link bg-primary- w3-green text-center">
      {{-- <img src="{{ asset('img/dhpl.jpg') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8"> --}}
           <img class="" style="max-width: 80px; max-height:80px" src="{{ asset('img/dhpl.jpg') }}" alt="{{ env('APP_NAME') }}">
      {{-- <span class="brand-text font-weight-light">{{ env('APP_NAME') }}</span> --}}
    </a>

    <!-- Sidebar -->
    <div class="sidebar" >

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
               <li class="nav-item text-center">
                {{-- <img class="" style="max-width: 80px; max-height:80px" src="{{ asset('img/dhpl.jpg') }}" alt=""> --}}
               </li>
          <li class="nav-item has-treeview {{ session('lsbm') == 'dashboard' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt w3-text-blue"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('admin.dashboard') }}" class="nav-link {{ session('lsbsm') == 'dashboard' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard</p>
                </a>
              </li>

            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'roles' ? 'menu-open' : '' }}">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-user-circle w3-text-blue"></i>
              <p>
                Role
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="{{ route('admin.adminsAll') }}" class="nav-link  {{ session('lsbsm') == 'adminsAll' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Admins</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('admin.factoryAll') }}" class="nav-link  {{ session('lsbsm') == 'factoryAll' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Factory</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('admin.rolesAll', 'depo') }}" class="nav-link  {{ session('lsbsm') == 'depo' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All GM</p>
                </a>
              </li>

              {{-- <li class="nav-item ">
                <a href="{{ route('admin.rolesAll', 'distributor') }}" class="nav-link  {{ session('lsbsm') == 'distributor' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Distributors</p>
                </a>
              </li> --}}

              <li class="nav-item ">
                <a href="{{ route('admin.rolesAll', 'dealer') }}" class="nav-link  {{ session('lsbsm') == 'dealer' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All SMO</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('admin.rolesAll', 'agent') }}" class="nav-link  {{ session('lsbsm') == 'agent' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All SR</p>
                </a>
              </li>
            </ul>
          </li>


          {{-- <li class="nav-item has-treeview {{ session('lsbm') == 'projects' ? 'menu-open' : '' }}">
            <a href="{{ route('admin.projects') }}" class="nav-link ">
              <i class="nav-icon fas fa-user-circle"></i>
              <p>
                Projects
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
          </li> --}}


          <li class="nav-item has-treeview {{ session('lsbm') == 'ecommerce' ? 'menu-open' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-inbox w3-text-blue"></i>
              <p>
                Product Management
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('admin.productCategories') }}" class="nav-link  {{ session('lsbsm') == 'productCategories' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Product Categories</p>
                </a>
              </li>

              {{-- <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.salesLists') }}" class="nav-link {{ session('lsbsm') == 'salesList' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Sales Lists</p>
                </a>
              </li> --}}

              <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.products') }}" class="nav-link {{ session('lsbsm') == 'products' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Products</p>
                </a>
              </li>

              <li class="nav-item ">
                <a href="{{ route('admin.changeMultiplePrice') }}" class="nav-link {{ session('lsbsm') == 'changeMultiplePrice' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Change Products Price</p>
                </a>
              </li>

              {{-- <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.orders') }}" class="nav-link {{ session('lsbsm') == 'orders' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Orders</p>
                </a>
              </li> --}}
              {{-- <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.shipment.returns') }}" class="nav-link {{ session('lsbsm') == 'returns' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Returns</p>
                </a>
              </li> --}}
              {{-- <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.users') }}" class="nav-link {{ session('lsbsm') == 'users' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Users</p>
                </a>
              </li> --}}
              {{-- <li class="nav-item ">
                <a href="{{ route('admin.shops') }}" class="nav-link {{ session('lsbsm') == 'sources' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Shops</p>
                </a>
              </li> --}}
              {{-- <li class="nav-item ">
                <a href="{{ route('admin.collections') }}" class="nav-link {{ session('lsbsm') == 'collections' ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Collections</p>
                </a>
              </li> --}}


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
                <a href="{{ route('admin.ecommerce.orders',['type'=>'all']) }}" class="nav-link {{ session('lsbsm') == 'allOrders' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Orders <span class="badge bg-success">{{$ordersCount->total}}</span></p>
                </a>
              </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'pending']) }}" class="nav-link {{ session('lsbsm') == 'pendingOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Pending Orders <span class="badge bg-warning">{{$ordersCount->pending}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'confirmed']) }}" class="nav-link {{ session('lsbsm') == 'confirmedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Confirmed Orders <span class="badge bg-success">{{$ordersCount->confirmed}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'processing']) }}" class="nav-link {{ session('lsbsm') == 'processingOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Processing Orders <span class="badge bg-success">{{$ordersCount->processing}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'shipped']) }}" class="nav-link {{ session('lsbsm') == 'shippedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Shipped Orders <span class="badge bg-success">{{$ordersCount->shipped}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'collected']) }}" class="nav-link {{ session('lsbsm') == 'collectedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Collected Orders <span class="badge bg-success">{{$ordersCount->collected}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'delivered']) }}" class="nav-link {{ session('lsbsm') == 'deliveredOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Delivered Orders <span class="badge bg-success">{{$ordersCount->delivered}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'cancelled']) }}" class="nav-link {{ session('lsbsm') == 'cancelledOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Cancelled Orders <span class="badge bg-success">{{$ordersCount->cancelled}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'returned']) }}" class="nav-link {{ session('lsbsm') == 'returnedOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Returned Orders <span class="badge bg-danger">{{$ordersCount->returned}}</span></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.ecommerce.orders',['type'=>'undelivered']) }}" class="nav-link {{ session('lsbsm') == 'undeliveredOrders' ? ' active ' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Undelivered Orders <span class="badge bg-danger">{{$ordersCount->undelivered}}</span></p>
                    </a>
                </li>


            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'shops' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-store-alt w3-text-blue"></i>
              <p>
                Shop Management
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('admin.shops') }}" class="nav-link {{ session('lsbsm') == 'allShops' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Shops <span class="badge bg-success">{{$shopsCount->total}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.shops','inactive') }}" class="nav-link {{ session('lsbsm') == 'inactiveShops' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>inactive Shops <span class="badge bg-danger">{{$shopsCount->inActive}}</span></p>
                </a>
              </li>

            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'collections' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-money-bill-wave w3-text-blue"></i>
              <p>
                Collection Management
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('admin.collections') }}" class="nav-link {{ session('lsbsm') == 'allCollections' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Collections <span class="badge bg-success">{{$collectionCount->total}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.collections','pending') }}" class="nav-link {{ session('lsbsm') == 'pendingCollections' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pending Collections <span class="badge bg-warning">{{$collectionCount->pending}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.collections','approved') }}" class="nav-link {{ session('lsbsm') == 'approvedCollections' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Approved Collections <span class="badge bg-success">{{$collectionCount->approved}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.collections','rejected') }}" class="nav-link {{ session('lsbsm') == 'rejectedCollections' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Rejected Collections <span class="badge bg-danger">{{$collectionCount->rejected}}</span></p>
                </a>
              </li>

            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'returns' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-exchange-alt w3-text-blue"></i>
              <p>
                Return Management
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.shipment.returns') }}" class="nav-link {{ session('lsbsm') == 'allReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>All Returns <span class="badge bg-success">{{$returnCount->total}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.shipment.returns','accepted') }}" class="nav-link {{ session('lsbsm') == 'acceptedReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Accepted Returns <span class="badge bg-success">{{$returnCount->accepted}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.shipment.returns','pending') }}" class="nav-link {{ session('lsbsm') == 'pendingReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pending Returns <span class="badge bg-warning">{{$returnCount->pending}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.shipment.returns','rejected') }}" class="nav-link {{ session('lsbsm') == 'rejectedReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Rejected Returns <span class="badge bg-danger">{{$returnCount->rejected}}</span></p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.shipment.returns','itemWise') }}" class="nav-link {{ session('lsbsm') == 'itemWiseReturns' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>ItemWise Returns <span class="badge bg-success">{{$returnCount->itemWise}}</span></p>
                </a>
              </li>



            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'commissions' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-coins w3-text-blue"></i>
              <p>
                Commissions
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('admin.commissionList') }}" class="nav-link {{ session('lsbsm') == 'allCommissions' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Commission List</p>
                </a>
              </li>

            </ul>
          </li>
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
                                <a href="{{ route('admin.dueList') }}" class="nav-link {{ session('lsbsm') == 'dueList' ? ' active ' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    Due List
                                </a>
                            </li>

                        </ul>
                    </li>
                      {{-- Due Section End --}}
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
                <a href="{{ route('admin.report', 'order') }}" class="nav-link {{ session('lsbsm') == 'order' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  Order
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.report', 'collection') }}" class="nav-link {{ session('lsbsm') == 'collection' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  Collection
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.report', 'return') }}" class="nav-link {{ session('lsbsm') == 'return' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  Return
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.report', 'product') }}" class="nav-link {{ session('lsbsm') == 'product' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  Product Sales Report
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.report', 'sr') }}" class="nav-link {{ session('lsbsm') == 'sr' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  SR Report
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.report', 'shop') }}" class="nav-link {{ session('lsbsm') == 'shop' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  Shop Report
                </a>
              </li>
              <li class="nav-item ">
                <a href="{{ route('admin.report', 'daily') }}" class="nav-link {{ session('lsbsm') == 'daily' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  Daily Report
                </a>
              </li>

            </ul>
          </li>

          <li class="nav-item has-treeview {{ session('lsbm') == 'users' ? ' menu-open ' : '' }}">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-users w3-text-blue"></i>
              <p>
                Users
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item ">
                <a href="{{ route('admin.ecommerce.users') }}" class="nav-link {{ session('lsbsm') == 'all' ? ' active ' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>User List</p>
                </a>
              </li>

            </ul>
          </li>
            <li class="nav-item has-treeview {{ session('lsbm') == 'payment' ? ' menu-open ' : '' }}">
                <a href="#" class="nav-link ">
                    <i class="nav-icon fas fa-users w3-text-blue"></i>
                    <p>
                        Payment Type
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item ">
                        <a href="{{ route('admin.paymentType') }}" class="nav-link {{ session('lsbsm') == 'paymentType' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Payment Type List</p>
                        </a>
                    </li>

                </ul>
            </li>

            <li class="nav-item has-treeview {{ session('lsbm') == 'readyProducts' ? ' menu-open ' : '' }}">
                <a href="#" class="nav-link ">
                    <i class="nav-icon fas fa-users w3-text-blue"></i>
                    <p>
                        Ready Products
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item ">
                        <a href="{{ route('admin.readyProducts') }}" class="nav-link {{ session('lsbsm') == 'readyProductsList' ? ' active ' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Ready Products List</p>
                        </a>
                    </li>

                </ul>

            </li>

          {{-- <li class="nav-header">LABELS</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Important</p>
            </a>
          </li> --}}

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

