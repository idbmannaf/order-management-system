@extends('sr.layouts.agentMaster')

@push('css')
@endpush

@section('content')
<br>
<section class="content">
    <div class="card">
        <div class="card-header bg-info">
            <h3 class="card-title">All Orders Of {{$shop->name}} ({{$shop->mobile}})</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="shopTable" class="table table-bordered" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>Order Id</th>
                        <th>Action</th>
                        <th>Date</th>
                        <th>Items</th>
                        <th>Price</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($orders as $order)
                    <tr>
                        <td>{{$order->id}}</td>
                        <td class="p-1">
                            <div class="btn-group btn-sm m-0 p-0">
                                <button type="button" class="btn btn-primary"><i class="fas fa-cart-arrow-down"></i> Action</button>
                                <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    class="btn btn-primary dropdown-toggle dropdown-toggle-split"><span
                                        class="sr-only">Toggle Dropdown</span></button>
                                <div id="dd_1" class="dropdown-menu">
                                    <a href="{{route('sr.viewShopSingleOrder',['shop'=>$shop->id,'sr'=>$sr,'order'=>$order->id,'type'=>'all'])}}" class="dropdown-item"> Details
                                    </a>
                                    @if ($order->order_status == 'pending')
                                    <a href="{{route('sr.deleteShopSingleOrder',['shop'=>$shop->id,'sr'=>$sr,'order'=>$order->id])}}" class="dropdown-item">Delete
                                    </a>
                                    <a href="{{route('sr.viewShopSingleOrder',['shop'=>$shop->id,'sr'=>$sr,'order'=>$order->id,'type'=>'all'])}}" class="dropdown-item">Edit
                                    </a>
                                    @endif
                                </div>

                            </div>
                        </td>
                        <td> {{\Carbon\Carbon::parse($order->created_at)->format('d M, Y')}}</td>
                        <td> {{count($order->items)}}</td>
                        <td> {{$order->total_price}}</td>
                        <td> {{$order->order_status}}</td>



                    </tr>
                    @empty
                    <tr>
                        <td class="text-danger h5">No Orders Found</td>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>

                    </tr>

                    @endforelse

                <tfoot>
                    <tr>
                        <th>Order Id</th>
                        <th>Action</th>
                        <th>Date</th>
                        <th>Items</th>
                        <th>Price</th>
                        <th>Status</th>
                    </tr>
                </tfoot>
            </table>
        </div>
        {{$orders->render()}}
        <!-- /.card-body -->
    </div>

</section>
@endsection


@push('js')
<script>
    $(function () {

    $('#-shopTable').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>
@endpush
