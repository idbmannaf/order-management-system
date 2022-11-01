@extends('factory.layouts.factoryMaster')

@section('title')
    Product List
@endsection

@push('css')
<style>
    td{
        white-space: nowrap;
    }
    th{
        white-space: nowrap;
    }
</style>
@endpush

@section('content')
  <section class="content p-2">
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
                                <td colspan="6">
                                    <div class="collapse" id="collapseExample{{ $product->id }}">
                                        <div class="table-responsive">
                                            <table class="table table-sm table-bordered text-nowrap">
                                                <thead>
                                                    <tr>
                                                        <th>Batch No</th>
                                                        <th>Batch ID</th>
                                                        <th>Unit</th>
                                                        <th>Unit_value</th>
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
                                                            <td>{{ $item->packaging_quantity }}
                                                            </td>
                                                        </tr>
                                                        @php
                                                            $i++;
                                                        @endphp
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
  </section>
@endsection


@push('js')

@auth

@else

 @endauth

@endpush

