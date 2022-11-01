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
        <div class="card-header h4 w3-deep-orange">
            Order Shipment# {{$shipment->id}}
        </div>
        <div class="card-body">
            <div class="h6">
                Order Placed at: {{ \Carbon\Carbon::parse($order->created_at)->format('d M, Y') }}
            </div>
            <div class="h6">
                Order Placed at: {{ \Carbon\Carbon::parse($order->delivered_at)->format('d M, Y') }}
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
            <h3 class="card-title">Shipment Items</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <form
                action="{{route('sr.shipmentReturnSave',['order'=>$order->id,'shop'=>$shop->id,'sr'=>$sr,'shipment'=>$shipment->id])}}"
                id="" method="POST">
                @csrf
                <table id="shopTable" class="table table-sm table-bordered table-striped" style="white-space: nowrap;">
                    <thead>
                        <tr>
                            <th>Product Id</th>
                            <th>Name</th>
                            <th>Orderd Qty</th>
                            <th>Shipment Qty</th>
                            <th>Return Quantity</th>
                            <th>Return Type</th>
                            <th>Return Reason</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($shipment->items as $item)
                        <tr>
                            <td>{{$item->product_id}} </td>
                            <td> {{$item->product->name}}</td>
                            <td> {{$item->total_quantity}}</td>
                            <td> {{ $item->shipment_quantity}}</td>
                            <td>
                                <div class="form-group" style="width: 100%">
                                    <input type="number" step="1" data-orderd-qty="{{$item->total_quantity}}"
                                        class="form-control quantity" name="quantities[{{$item->id}}]">
                                </div>
                                <span class="text-danger qtyMsg"></span>
                            </td>
                            <td>
                                <div class="form-group">
                                    <select class="form-control return_type" name="return_types[{{$item->id}}]">
                                        {{-- <option value="">Select Return Type</option> --}}
                                        <option value="replace">Product Replacement</option>
                                        <option value="refund">Refund Payment</option>
                                    </select>
                                    <span class="text-danger returnMsg"></span>
                                </div>
                            </td>
                            <td>
                                <div class="form-group">
                                    <textarea rows="3" name="reasons[{{$item->id}}]" class="form-control textarea">
                                        </textarea>
                                </div>
                            </td>

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
                        <th>Product Id</th>
                        <th>Name</th>
                        <th>Orderd Qty</th>
                        <th>Shipment Qty</th>
                        <th>Return Quantity</th>
                        <th>Return Type</th>
                        <th>Return Reason</th>
                    </tfoot>
                </table>
                <button type="submit" class="btn w3-purple text-center returnBtn">Return</button>
            </form>
        </div>

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
        var qty = Number(that.val());
        var returnType = that.closest("tr").find('.return_type').val();
        var orderQty = Number(that.attr('data-orderd-qty'));
        var qtyMsg= that.closest("tr").find('.qtyMsg')
        var returnMsg= that.closest("tr").find('.returnMsg')
        //IF return quantity less then 1 errro
        // if(qty < 1){
        //     that.val(1);
        //     $(".returnBtn").attr('disabled',true);
        //     return;
        // }

        //IF return quantity getter then Order quantity then errro
        if (qty > orderQty) {
            qtyMsg.text('Quantity Must be less then Ordered Quantity')
            $(".returnBtn").attr('disabled',true);
            return;
        }else{
            qtyMsg.text('')
            $(".returnBtn").attr('disabled',false);
        }
        if(qty >=1 && qty < orderQty){
            if (returnType == '') {
                returnMsg.text('please select return type')
                $(".returnBtn").attr('disabled',true);
                return;
            }else{
                returnMsg.text('')
                $(".returnBtn").attr('disabled',false);
            }
        }

    })
    // $(document).on('change','.return_type',function(e){
    //     var that = $(this);
    //     var returnType = that.val();
    //     var qty = that.closest("tr").find('.quantity').val();
    //     var orderQty = that.closest("tr").find('.quantity').attr('data-orderd-qty');
    //     var qtyMsg= that.closest("tr").find('.qtyMsg')
    //     var returnMsg= that.closest("tr").find('.returnMsg')
    //     // alert(returnType)
    //     if (returnType == '') {
    //         returnMsg.text('please select return type')
    //         $(".returnBtn").attr('disabled',false);
    //         return;
    //     }
    //     if (returnType == 'replace' || returnType == 'refund'){
    //         if (qty <=0) {
    //         qtyMsg.text('Quantity Must be getter then 0')
    //         $(".returnBtn").attr('disabled',true);
    //         return;
    //              }
    //         if (qty > orderQty) {
    //         qtyMsg.text('Quantity Must be less then Ordered Quantity')
    //         $(".returnBtn").attr('disabled',true);
    //         return;
    //     }
    //     returnMsg.text(' ')
    //         $(".returnBtn").attr('disabled',false);
    //     }






    // })

</script>
@endpush
