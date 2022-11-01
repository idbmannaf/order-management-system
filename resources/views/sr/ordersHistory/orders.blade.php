@extends('sr.layouts.agentMaster')

@push('css')
<style>
    /* td {
        padding: 3px !important;
    } */
</style>
@endpush

@section('content')
<br>
<section class="content">
    <div class="card">
        <div class="card-header bg-info">
            <h3 class="card-title">{{ucfirst($type)}} Orders</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="shopTable" class="table table-sm table-bordered table-striped" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>Order</th>
                        <th>Action</th>
                        <th>Status</th>
                        <th>Shop</th>
                        <th>Place On</th>
                        <th>Price</th>
                        <th>Item</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($orders as $order)
                    <tr>
                        <td>{{$order->id}} </td>
                        <td><div class="btn-group btn-sm m-0 p-0">
                            <button type="button" class="btn btn-primary"><i class="fas fa-cart-arrow-down"></i> Action</button>
                            <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                class="btn btn-primary dropdown-toggle dropdown-toggle-split"><span
                                    class="sr-only">Toggle Dropdown</span></button>
                            <div id="dd_1" class="dropdown-menu">
                                <a href="{{route('sr.viewShopSingleOrder',['shop'=>$order->source_id,'sr'=>$sr,'order'=>$order->id,'type'=>'all'])}}" class="dropdown-item"> Details
                                </a>
                                @if ($order->order_status == 'pending')
                                <a href="{{route('sr.deleteShopSingleOrder',['shop'=>$order->source_id,'sr'=>$sr,'order'=>$order->id])}}" class="dropdown-item">Delete
                                </a>
                                <a href="{{route('sr.viewShopSingleOrder',['shop'=>$order->source_id,'sr'=>$sr,'order'=>$order->id,'type'=>'all'])}}" class="dropdown-item">Edit
                                </a>
                                @endif
                            </div>

                        </div></td>
                        <td>{{$order->order_status}} </td>
                        <td>{{$order->orderForSource->name}} </td>
                        <td>{{\Carbon\Carbon::parse($order->created_at)->format('d M,Y')}} </td>
                        <td>{{$order->total_collection_amount}}</td>
                        <td>{{count($order->items)}}</td>



                    </tr>
                    @empty
                    <tr>
                        <td class="text-danger h5">No Orders Details Found</td>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>

                    </tr>

                    @endforelse

                <tfoot>
                    <th>Order</th>
                        <th>Action</th>
                        <th>Status</th>
                        <th>Shop</th>
                        <th>Place On</th>
                        <th>Price</th>
                        <th>Item</th>
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

    $('#shopTable').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "order": [[ 0, "desc" ]],
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>

@endpush
