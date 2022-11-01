@extends('sr.layouts.agentMaster')

@push('css')
@endpush

@section('content')
<br>
<section class="content">
    <div class="card">
        <div class="card-header bg-info">
            <h3 class="card-title">{{ucfirst($type)}} Shops <a href="{{route('sr.newShop',['sr'=>$sr])}}"
                    class="btn w3-purple"><i class="fas fa-plus"></i></a></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="shopTable" class="table table-bordered" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Shop Name</th>
                        <th>Action</th>
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
                        <td>
                            <div class="btn-group btn-sm m-0 p-0">
                                <form action="{{route('sr.createOrder',['shop'=>$shop->id,'sr'=>$sr])}}" method="GET">
                                    <button type="submit" {{$shop->active ?:'disabled'}} class="btn {{$shop->active == false ? 'bg-danger' : 'w3-blue'}}" ><i class="fas fa-cart-arrow-down"></i> Order</button>
                                </form>
                                <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    class="btn btn-primary dropdown-toggle dropdown-toggle-split"><span
                                        class="sr-only">Toggle Dropdown</span></button>
                                <div id="dd_1" class="dropdown-menu">

                                    <a href="{{route('sr.paymentCollection',['shop'=>$shop->id,'sr'=>$sr])}}" class="dropdown-item"> Payment Collection
                                    </a>

                                    <a href="{{route('sr.shopWiseOrders',['sr'=>$sr,'shop'=>$shop->id])}}"
                                        class="dropdown-item"> All Orders</a>

                                    @if ($shop->active == false)
                                        <a href="{{route('sr.editShop',['sr'=>$sr,'shop'=>$shop->id])}}"
                                            class="dropdown-item"> Edit Shop</a>
                                            <a href="{{route('sr.destroyShop',['sr'=>$sr,'shop'=>$shop->id])}}"
                                                class="dropdown-item" onclick="return confirm('Are you sure? You want to delete this Shop?');"> Delete Shop</a>

                                        </form>
                                    @endif

                                </div>
                            </div>
                        </td>

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
