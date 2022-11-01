@extends('admin.layouts.adminMaster')
@section('title')
Ready Products
@endsection
@push('css')
<link rel="stylesheet" href="{{asset('cp/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{asset('cp/plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
<style>

</style>
@endpush

@section('content')

<div class="card">
    <div class="card-header w3-green w3-large">
       Ready Product List
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered text-nowrap">
                <thead>
                    <th>#ID</th>
                    <th>Product Name</th>
                    <th>Unit</th>
                    <th>Unit Value</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </thead>
                <tbody>
                    @foreach ($readyProducts as $product)
                        <?php
                        $gropProducts = \App\Models\Factory\FactoryProduct::where('product_id', $product->product_id)
                            ->where('unit', $product->unit)
                            ->where('status','in_stocked')
                            ->where('unit_value', $product->unit_value);
                        ?>
                        <tr>
                            <td>{{ $product->id }}</td>
                            <td>{{ $product->product_material->sample->name }}</td>
                            <td>{{ $product->unit }}</td>
                            <td>{{ $product->unit_value }}</td>
                            <td>{{ $product->unit_price }}</td>
                            <td>{{ $gropProducts->sum('packaging_quantity') }}</td>

                            <td>
                                @if (count($gropProducts->get()) > 0)
                                    <a class="btn btn-primary btn-xs" data-toggle="collapse"
                                        href="#collapseExample{{ $product->id }}" role="button"
                                        aria-expanded="false" aria-controls="collapseExample">
                                        Details
                                    </a>
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <div class="collapse" id="collapseExample{{ $product->id }}">
                                    <div class="table-responsive">
                                        <table class="table table-sm table-bordered text-nowrap">
                                            <thead>
                                                <tr>
                                                    <th>Batch No</th>
                                                    <th>Batch ID</th>
                                                    <th>Unit</th>
                                                    <th>Unit_value</th>
                                                    <th>Unit_Price</th>
                                                    <th>Qty</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $batchProducts = $gropProducts->get();
                                                    $i = 1;
                                                    ?>

                                                @foreach ($batchProducts as $item)
                                                    <tr>
                                                        <td><b> {{$i}}</b></td>
                                                        <td><b>{{$item->id}}</b></td>
                                                        <td>{{ $item->unit }}</td>
                                                        <td>{{ $item->unit_value }}</td>
                                                        <td>{{ $item->unit_price }}</td>
                                                        <td>{{ $item->packaging_quantity }}
                                                        </td>
                                                        @php
                                                            $i++;
                                                        @endphp
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
</div>


@endsection


@push('js')
<script src="{{asset('cp/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('cp/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('cp/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('cp/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
<script src="{{asset('cp/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
<script>
    $(function () {

    $('#shopTable').DataTable({
      "paging": true,
      "lengthChange": false,
      "pageLength": 50,
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
