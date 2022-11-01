@extends('sr.layouts.agentMaster')

@push('css')
<style>
    td {
    padding: 3px !important;
}
</style>
@endpush

@section('content')
<br>
<section class="content">
    <div class="card">
        <div class="card-header h4 w3-deep-orange">
            Order # {{$order->id}}
            Details/Edit
        </div>
        <div class="card-body">
            <div class="h6">
                Placed at: {{ \Carbon\Carbon::parse($order->created_at)->format('d M, Y') }}
            </div>
            <div class="h6">
                Amount: ৳{{$order->total_price}}
            </div>
            <div class="h6">
                Collected Amount: ৳{{$order->total_collection_amount}}
            </div>
            <div class="h6">
                Total Items: {{count($order->items)}}
            </div>
            <div class="h6"><b>Order For:</b> <br>
                Mobile: {{$shop->mobile}} <br>
                Shop: {{$shop->name}} <br></div>
            <div class="h6">
                Status :
                @if ($order->order_status == 'pending')
                <span class="badge w3-red">{{$order->order_status}}</span>
                @elseif ($order->order_status == 'confirmed')
                <span class="badge badge-warning">{{$order->order_status}}</span>
                @elseif ($order->order_status == 'processing')
                <span class="badge w3-teal">{{$order->order_status}}</span>
                @elseif ($order->order_status == 'ready_to_ship')
                <span class="badge w3-deep-purple">{{$order->order_status}}</span>
                @elseif ($order->order_status == 'shipped')
                <span class="badge w3-green">{{$order->order_status}}</span>
                @elseif ($order->order_status == 'collected')
                <span class="badge w3-light-green">{{$order->order_status}}</span>
                @elseif ($order->order_status == 'delivered')
                <span class="badge w3-green">{{$order->order_status}}</span>
                @elseif ($order->order_status == 'returned')
                <span class="badge w3-red">{{$order->order_status}}</span>
                @elseif ($order->order_status == 'undelivered')
                <span class="badge w3-deep-orange">{{$order->order_status}}</span>
                @endif


            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header bg-info">
            <h3 class="card-title">Order Items of ({{$order->id}}) {{$shop->name}} ({{$shop->mobile}})</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="shopTable" class="table table-bordered" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>Product Id</th>
                        <th>Name</th>
                        <th>Unit</th>
                        <th>Type</th>
                        <th>Bonus Qty</th>
                        <th>Qty</th>
                        <th>Shipment Qty</th>
                        <th>Total Qty</th>
                        <th>Price</th>
                        <th>Total Price</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($order->items as $item)
                    <tr>
                        <td>{{$item->product_id}} </td>
                        <td> {{$item->product->name}}</td>
                        <td> {{round($item->product->unit_value) . $item->product->unit}}</td>
                        <td> {{ $item->product->type_value. $item->product->type}}</td>
                        <td class="bonus"> {{$item->bonus ?:''}}</td>
                        <td>
                            @if ($order->order_status == 'pending')
                            <input type="number" class="quantity" value="{{$item->total_quantity}}" style="width: 60px" data-url = "{{route('sr.updateItemQuantity',['order'=>$order->id,'sr'=>$sr,'shop'=>$shop->id,'item'=>$item->id])}}">
                            @else
                            {{$item->total_quantity}}
                            @endif

                        </td>
                        <td> {{$item->total_shipped_quantity}}</td>
                        <td class="totalQty">

                        @if($item->total_shipped_quantity)
                        {{$item->bonus + $item->total_shipped_quantity}}
                        @else
                         {{$item->bonus + $item->total_quantity}}
                        @endif
                        </td>
                        <td> {{$item->bonus + $item->product->shopAmount($shop->id)}}</td>
                        <td class="totalPrice"> {{$item->collection_amount}}</td>



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
                        <th></th>
                        <th></th>

                    </tr>

                    @endforelse

                <tfoot>
                    <tr>
                        <th>Product Id</th>
                        <th>Name</th>
                        <th>Unit</th>
                        <th>Type</th>
                        <th>Bonus Qty</th>
                        <th>Qty</th>
                        <th>Total Qty</th>
                        <th>Price</th>
                        <th>Total Price</th>
                    </tr>
                </tfoot>
            </table>
        </div>
        @if (count($order->shipments->load('items')) > 0)
        <div class="card">
            <div class="card-header w3-teal">Shipment for order #id {{$order->id}}</div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-borderd table-sm">
                        <thead>
                            <tr>
                                <th>Shipped Date</th>
                                <th>Item Qty</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($order->shipments->load('items') as $shipmentItem)

                            <tr>
                                <td>{{\Carbon\Carbon::parse($shipmentItem->shipped_at)->format('d M, Y')}}</td>
                                <td>
                                    @foreach ($shipmentItem->items as $item)

                                    <table class="table-sm">
                                        <tr>
                                            <td>{{$item->product_id}}| {{$item->product_name}} </td>
                                            <td>{{$item->shipment_quantity}}</td>
                                            {{-- <td>{{$item->total_quantity > 0 ?  $item->total_quantity  : $item->shipment_quantity}}</td> --}}
                                        </tr>
                                    </table>
                                    @endforeach

                                </td>
                                <td>

                                    @if ($shipmentItem->order_status == 'shipped')
                                    <form action="{{route('sr.orderShipmentUpdate',['order'=>$order->id,'shop'=>$shop->id,'sr'=>$sr,'shipment'=>$shipmentItem->items()->first()->shipment_id,'type'=>'collected'])}}" method="POST">
                                        @csrf
                                        <button type="submit"class="btn btn-warning m-2 btn-sm">Collected</button>
                                    </form>

                                    @endif
                                    @if ($shipmentItem->order_status == 'collected')
                                    <form action="{{route('sr.orderShipmentUpdate',['order'=>$order->id,'shop'=>$shop->id,'sr'=>$sr,'shipment'=>$shipmentItem->items()->first()->shipment_id,'type'=>'delivered'])}}" method="POST">
                                        @csrf
                                        <button type="submit"class="btn btn-success m-2 btn-sm">Delivered</button>
                                    </form>

                                    @endif
                                    @if ($shipmentItem->order_status == 'delivered')
                                    <a href="{{route('sr.shipmentReturn',['order'=>$order->id,'shop'=>$shop->id,'sr'=>$sr,'shipment'=>$shipmentItem->items()->first()->shipment_id])}}" class="btn btn-danger m-2 btn-sm"> Return</a>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        @endif
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
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>
<script>
    $(document).on('change keyup','.quantity', function(){
        var that = $(this);
        var qty = that.val();
        if(qty < 1){
            that.val(1);
            return;
        }
        var url = that.attr('data-url');
        var fullUrl = url+"?qty="+qty;
        $.ajax({
            url:fullUrl,
            method:'GET',
            success:function(response){
                if(response.bonus < 1){
                    that.closest('tr').find('.bonus').text('')
                }else{
                    that.closest('tr').find('.bonus').text(response.bonus)
                }
                that.closest('tr').find('.totalPrice').text(response.totalPrice)
                that.closest('tr').find('.totalQty').text(response.totalQty)
            }
        });
    })
</script>
@endpush
