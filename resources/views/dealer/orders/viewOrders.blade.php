@extends('dealer.layouts.dealerMaster')

@push('css')
    <style>

    </style>
@endpush

@section('content')
    <div class="card">
        <div class="card-header w3-deep-orange h3">
            Orders
        </div>
        <div class="card-body">
            <section class="content w3-white">
                <br>
                <div class="container">
                    @include('alerts.alerts')
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <h5>From:</h5>
                                        <address>
                                            <strong>{{ config('app.name') }}</strong><br>
                                            abc,abcdefg<br>
                                            London, United Kingdom<br>
                                            <strong title="Phone">Phone:</strong> (123) 456-789
                                        </address>
                                    </div>

                                    <div class="col-sm-6 text-right">
                                        <h4 class="border rounded py-2 px-4">Order Number: {{ $order->id }}</h4>
                                        <span>To:</span>
                                        <address>
                                            <strong>Shop: {{ $order->orderForSource->name }} </strong><br>
                                            <strong>Owner: {{ $order->orderForSource->owner_name }} </strong><br>
                                            {{ $order->address }}
                                            <br>
                                            <abbr title="Phone">Mobile:</abbr> {{ $order->mobile }} <br>
                                        </address>
                                        <p>
                                            <span><strong>Invoice Date:</strong>
                                                {{ $order->created_at->toDateString() }}</span><br />
                                            <span><strong>{{ ucfirst($order->order_status) }} Date:</strong>
                                                @if ($orderS = $order->order_status)
                                                    {{ $order->created_at->toDateString() }}
                                                @endif
                                            </span>
                                        </p>
                                    </div>
                                </div>
                                <div class="h5">
                                    Order by SR : {{ $order->orderByAgent ? 'Yes' : 'No' }}
                                </div>
                                @if ($order->orderByAgent)
                                    <div class="table-responsive m-t">
                                        <table class="table invoice-table table-sm table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>SR Id</th>
                                                    <th>SR Name</th>
                                                    <th>Contact</th>
                                                    <th>Dealer</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        {{ $order->orderByAgent->id }}
                                                    </td>
                                                    <td>
                                                        {{ $order->orderByAgent->user->name }}
                                                        ({{ $order->orderByAgent->name }})
                                                    </td>
                                                    <td>
                                                        {{ $order->orderByAgent->user->mobile }} <br>
                                                        {{ $order->orderByAgent->user->email }}
                                                    </td>
                                                    <td>
                                                        {{ $order->orderByAgent->dealer->user->name }}
                                                        ({{ $order->orderByAgent->dealer->name }})
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                @endif
                                <!-- /table-responsive -->
                            </div>
                        </div>
                    </div>
                </div>

                <br>

                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header w3-blue">
                                    <h3 class="card-title ">
                                        Manage Product | Order Status : <span
                                            class="badge @if ($order->order_status == 'confirmed') badge-success @else badge-primary @endif ">{{ Str::ucfirst($order->order_status) }}</span>
                                    </h3>
                                </div>
                                <!-- /.card-header -->

                                <div class="card-body p-0">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive table-sm table-bordered">
                                                <table class="table">
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
                                                                <td>{{ $item->product_id }} </td>
                                                                <td> {{ $item->product->name }}</td>
                                                                <td> {{ round($item->product->unit_value) . $item->product->unit }}</td>
                                                                <td> {{ $item->product->type_value . $item->product->type }}</td>
                                                                <td class="bonus"> {{ $item->bonus ?: '' }}</td>
                                                                <td>
                                                                    {{ $item->total_quantity }}

                                                                </td>
                                                                <td> {{ $item->total_shipped_quantity }}</td>
                                                                <td class="totalQty">

                                                                    @if ($item->total_shipped_quantity)
                                                                        {{ $item->bonus + $item->total_shipped_quantity }}
                                                                    @else
                                                                        {{ $item->bonus + $item->total_quantity }}
                                                                    @endif
                                                                </td>
                                                                <td> {{ $item->bonus + $item->product->shopAmount($item->order->source_id) }}
                                                                </td>
                                                                <td class="totalPrice"> {{ $item->collection_amount }}</td>



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
                                                            <th>Shipment Qty</th>
                                                            <th>Total Qty</th>
                                                            <th>Price</th>
                                                            <th>Total Price</th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!-- /.card-body -->
                            </div>

                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
@endsection


@push('js')
    <script>
        function removeProduct(id) {
            $('#order_qty_' + id).val(0)
        }
    </script>
@endpush
