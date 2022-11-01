@extends('sr.layouts.agentMaster')

@push('css')
@endpush

@section('content')
<br>
<section class="content">
    <div class="card">
        <div class="card-header h5 w3-deep-orange">
           {{ucfirst($type)}} Shipment Return List
        </div>

        <!-- /.card-header -->
        <div class="card-body">
            <table id="shopTable" class="table table-bordered" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>#Id</th>
                        <th>Shop</th>
                        <th>Shipment Id</th>
                        <th>Return at</th>
                        <th>Item</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($returnList as $return)
                    <tr>
                        <td>{{$return->id}}</td>
                        <td>{{$return->source->name}}</td>
                        <td>{{$return->shipment_id}}</td>
                        <td>{{\Carbon\Carbon::parse($return->return_at)->format('d M,Y')}}</td>
                        <td>{{count($return->items)}}</td>
                        <td>{{$return->return_status}}</td>
                        <td><a href="{{route('sr.shipmentReturnDetails',['shipment'=>$return->id,'sr'=>$sr])}}" class="btn btn-sm btn-secondary">Details</a></td>
                    </tr>
                    @empty
                    <tr>
                        <td class="text-danger h5">No Orders Found</td>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>

                    </tr>

                    @endforelse

                <tfoot>
                    <th>Id</th>
                        <th>Date</th>
                        <th>Shop</th>
                        <th>Amount</th>
                        <th>Commission</th>
                        <th>Collection Type</th>
                        <th>Status</th>
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
      "order": [[ 0, "desc" ]],
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>
@endpush
