@extends('sr.layouts.agentMaster')

@push('css')
@endpush

@section('content')
<br>
<section class="content">

    <div class="card">
        <div class="card-header h4 w3-deep-orange">
            Return # {{$return->id}}
        </div>
        <div class="card-body">
            <div class="h6">
                Placed at: {{\Carbon\Carbon::parse($return->return_at)->format('d M,Y')}}
            </div>
            <div class="h6">
                Shop: {{$return->source->name}}
            </div>
            <div class="h6">
                Amount: ৳{{$return->total_return_price}}
            </div>
            <div class="h6">
                Total Items:{{count($return->items)}}
            </div>
            <div class="h6">
                <b>Order For:</b> <br>
                Mobile: {{$return->source->mobile}} <br>
                Address: {{$return->source->address}} <br></div>
            <div class="h6">
                Status : <span class="badge badge-primary">{{$return->return_status}}</span></div>
        </div>
    </div>
    <div class="card">
        <div class="card-header h5 bg-info">
            All Payment Collections
        </div>

        <!-- /.card-header -->
        <div class="card-body">
            <table id="shopTable" class="table table-bordered" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>Product #</th>
                        <th>Name</th>
                        <th>Return Qty</th>
                        <th>Return Type</th>
                        <th>Reason</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($return->items as $item)
                    <tr>
                        <td>{{$item->product_id}}</td>
                        <td>{{$item->product_name}}</td>
                        <td>{{$item->return_quantity}}</td>
                        <td>{{$item->return_type}}</td>
                        <td>{{$item->return_reason}}</td>
                        <td>{{$item->status}}</td>

                    </tr>
                    @empty
                    <tr>
                        <td class="text-danger h5">No Orders Found</td>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>

                    </tr>

                    @endforelse

                <tfoot>
                    <tr>
                        <th>Product #</th>
                        <th>Name</th>
                        <th>Return Qty</th>
                        <th>Return Type</th>
                        <th>Reason</th>
                        <th>Status</th>
                    </tr>
                </tfoot>
            </table>
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
@endpush
