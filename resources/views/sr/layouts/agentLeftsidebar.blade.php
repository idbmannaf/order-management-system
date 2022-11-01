
<?php
$shopsCount = (new \App\Globals\Sr($sr->id))->shops();
$ordersCount = (new \App\Globals\Sr($sr->id))->orders();
$collectionCount = (new \App\Globals\Sr($sr->id))->collection();
$returnCount = (new \App\Globals\Sr($sr->id))->return();
?>

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-light-primary elevation-2">
    <!-- Brand Logo -->
    <a href="javascrip:void(0)" class="brand-link w3-green">
        {{-- <img src="{{$sr->user->img_name}}" alt="{{$sr->user->name}}" class="brand-image img-circle elevation-3"
            style="opacity: .8"> --}}
        <span class="brand-text font-weight-light">{{$sr->user->name}}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column nav-legacy nav-compact" data-widget="treeview" role="menu"
                data-accordion="true">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                <li class="nav-item ">
                    <a href="{{ route('sr.dashboard', $sr) }}"
                        class="nav-link {{ session('lsbsm') == 'dashboard' ? ' active ' : '' }}">
                        <i class="nav-icon fa fa-home"></i>
                        <p>{{ __('Home') }}</p>
                    </a>
                </li>
                {{-- <li class="nav-item has-treeview {{ session('lsbm') == 'dashboard' ? ' menu-open ' : '' }}">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fa fa-home"></i>
                        <p>
                            {{ __('Home') }}
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">

                        <li class="nav-item ">
                            <a href="{{ route('sr.dashboard', $sr) }}"
                                class="nav-link {{ session('lsbsm') == 'dashboard' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Home') }}</p>
                            </a>
                        </li>

                    </ul>
                </li> --}}

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
                            <a href="{{ route('sr.shopList', ['sr'=>$sr,'type'=>'all']) }}"
                                class="nav-link {{ session('lsbsm') == 'allShops' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('All Shops') }} <span class="badge bg-success">{{$shopsCount->total}}</span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.shopList', ['sr'=>$sr,'type'=>'active']) }}"
                                class="nav-link {{ session('lsbsm') == 'activeShops' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Actived Shop') }} <span class="badge bg-success">{{$shopsCount->active}}</span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.shopList', ['sr'=>$sr,'type'=>'inactive']) }}"
                                class="nav-link {{ session('lsbsm') == 'inActiveShops' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Inactived Shops') }} <span class="badge bg-danger">{{$shopsCount->inActive}}</span></p>
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
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'all']) }}"
                                class="nav-link {{ session('lsbsm') == 'allOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('All Orders') }} <span class="badge bg-success">{{$ordersCount->total}}</span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'pending']) }}"
                                class="nav-link {{ session('lsbsm') == 'pendingOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Pending Orders') }}
                                    <span class="badge bg-success">{{$ordersCount->pending}}</span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'confirmed']) }}"
                                class="nav-link {{ session('lsbsm') == 'confirmedOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Confirmed Orders') }}
                                    <span class="badge bg-success">{{$ordersCount->confirmed}}</span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'processing']) }}"
                                class="nav-link {{ session('lsbsm') == 'processingOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Processing Orders') }}
                                    <span class="badge bg-success">{{$ordersCount->processing}}</span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'ready_to_ship']) }}"
                                class="nav-link {{ session('lsbsm') == 'ready_to_shipOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Ready To Shipped Orders') }}
                                    <span class="badge bg-success">{{$ordersCount->ready_to_ship}}</span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'shipped']) }}"
                                class="nav-link {{ session('lsbsm') == 'shippedOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Shipped Orders') }}
                                    <span class="badge bg-success">{{$ordersCount->shipped}}</span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'collected']) }}"
                                class="nav-link {{ session('lsbsm') == 'collectedOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Collected Orders') }}

                                    <span class="badge bg-success">{{$ordersCount->collected}}</span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'delivered']) }}"
                                class="nav-link {{ session('lsbsm') == 'deliveredOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Delivered Orders') }}
                                    <span class="badge bg-success">{{$ordersCount->delivered}}</span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.OrderHistory', ['sr'=>$sr,'type'=>'cancelled']) }}"
                                class="nav-link {{ session('lsbsm') == 'cancelledOrders' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Cancelled Orders') }}
                                    <span class="badge bg-success">{{$ordersCount->cancelled}}</span>
                                </p>
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="nav-item has-treeview {{ session('lsbm') == 'collections' ? ' menu-open ' : '' }}">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fas fa-money-check-alt"></i>
                        <p>
                            {{ __('Collections') }}
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item ">
                            <a href="{{ route('sr.collectionList', ['sr'=>$sr]) }}"
                                class="nav-link {{ session('lsbsm') == 'allCollection' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('All Collection') }} <span class="badge bg-success">{{$collectionCount->total}}</span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.collectionList', ['sr'=>$sr,'type'=>'varified']) }}"
                                class="nav-link {{ session('lsbsm') == 'varifiedCollection' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Varified Collection') }} <span class="badge bg-success">{{$collectionCount->approved}}</span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.collectionList', ['sr'=>$sr,'type'=>'pending']) }}"
                                class="nav-link {{ session('lsbsm') == 'pendingCollection' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Pending Collection') }} <span class="badge bg-warning">{{$collectionCount->pending}}</span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.collectionList', ['sr'=>$sr,'type'=>'rejected']) }}"
                                class="nav-link {{ session('lsbsm') == 'rejectedCollection' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Rejected Collection') }} <span class="badge bg-danger">{{$collectionCount->rejected}}</span></p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item has-treeview {{ session('lsbm') == 'salary' ? ' menu-open ' : '' }}">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fas fa-chart-line"></i>
                        <p>
                            {{ __('Salary Statement') }}
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item ">
                            <a href="{{ route('sr.salaryStatement', ['sr'=>$sr]) }}"
                                class="nav-link {{ session('lsbsm') == 'allsalary' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('All Salary') }}</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item has-treeview {{ session('lsbm') == 'returns' ? ' menu-open ' : '' }}">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fas fa-truck-loading"></i>
                        <p>
                            {{ __('Returns') }} </span>
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item ">
                            <a href="{{ route('sr.shipmentReturnList', ['sr'=>$sr,'type'=>'all']) }}"
                                class="nav-link {{ session('lsbsm') == 'allReturns' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('All Returns') }} <span class="badge bg-success">{{$returnCount->total}} </span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.shipmentReturnList', ['sr'=>$sr,'type'=>'pending']) }}"
                                class="nav-link {{ session('lsbsm') == 'pendingReturns' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Pending Returns') }} <span class="badge bg-warning">{{$returnCount->pending}} </span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.shipmentReturnList', ['sr'=>$sr,'type'=>'itemWise']) }}"
                                class="nav-link {{ session('lsbsm') == 'itemWiseReturns' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('ItemWise Returns') }} <span class="badge bg-success">{{$returnCount->itemWise}} </span></p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="{{ route('sr.shipmentReturnList', ['sr'=>$sr,'type'=>'rejected']) }}"
                                class="nav-link {{ session('lsbsm') == 'rejectedReturns' ? ' active ' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Rejected Returns') }} <span class="badge bg-danger">{{$returnCount->rejected}} </span></p>
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
