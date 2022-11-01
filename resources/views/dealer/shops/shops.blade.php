@extends('dealer.layouts.dealerMaster')

@push('css')
@endpush

@section('content')
<br>
<section class="content">
    <div class="card">
        <div class="card-header bg-info">
            <h3 class="card-title">{{ucfirst($type)}} Shops </h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="shopTable" class="table table-bordered" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Shop Name</th>
                        {{-- <th>Action</th> --}}
                        <th>Owner</th>
                        <th>Due</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Type</th>
                        <th>Status</th>

                    </tr>
                </thead>
                <tbody>
                    @forelse ($shops as $shop)
                    <tr>
                        <td>{{$shop->id}}</td>
                        <td>{{$shop->name}}</td>
                        {{-- <td>
                            <div class="btn-group btn-sm m-0 p-0">

                                <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    class="btn btn-primary dropdown-toggle dropdown-toggle-split"><span
                                        class="sr-only">Toggle Dropdown</span></button>
                                <div id="dd_1" class="dropdown-menu">

                                    <a href="{{route('sr.paymentCollection',['shop'=>$shop->id,'sr'=>$shop->agent_id])}}" class="dropdown-item"> Payment Collection
                                    </a>

                                    <a href="{{route('sr.shopWiseOrders',['sr'=>$shop->agent_id,'shop'=>$shop->id])}}"
                                        class="dropdown-item"> All Orders</a>
                                </div>
                            </div>
                        </td> --}}

                        <td>{{$shop->owner_name}}</td>
                        <td>{{$shop->current_sale}}</td>
                        <td>{{$shop->address}}</td>
                        <td>{{$shop->mobile}}</td>
                        <td>{{$shop->type}}</td>
                        <td>
                            @if ($shop->active)
                            <span class="badge badge-success">Actived</span>
                            @else
                            <span class="badge badge-danger">Inactived</span>
                            @endif
                        </td>

                    </tr>
                    @empty
                    <tr>
                        <td class="text-danger h5">No Shop Found</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                    @endforelse

                <tfoot>
                    <tr>
                        {{-- <th>Shop ID</th> --}}
                        <th>Shop Name</th>
                        <th>Action</th>
                        <th>Owner</th>
                        <th>Due</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Type</th>
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
      "order": [[ 1, "desc" ]],
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>
@endpush
