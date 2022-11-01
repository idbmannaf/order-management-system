@extends('dealer.layouts.dealerMaster')


@push('css')
    <style>

    </style>
@endpush

@section('content')


    <div class="card">
        <div class="card-header w3-deep-orange h3">
            <div class="row">
                <div class="col-md-7">
                    {{ ucfirst($type) }} Orders List
                </div>
                @if ($type == 'all')
                    <div class="col-md-5 float-right">
                        <div class="input-group mb-2">
                            {{-- <input type="text" class="form-control" name="query" id="searchQuery"
                                placeholder="ID, Shop Name, Shop Mobile, SR Name">

                            <input type="hidden" name="url" id="url" value="{{ route('admin.search', ['order']) }}">
                            <div class="input-group-prepend">
                                <button class="btn btn-primary"><i class="fa fa-search" id="searchIcon"></i></button>
                            </div> --}}
                        </div>
                    </div>
                @endif
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive" style="min-height: 75vh;">
                <table class="table bordered table-bordered table-sm">
                    <thead>
                        <tr>
                            <th>ID #</th>
                            <th>Action</th>
                            <th>Ordered at</th>
                            @if ($type == 'pending')
                                <th>Pending at</th>
                            @elseif ($type == 'confirmed')
                                <th>Confirmed at</th>
                            @elseif ($type == 'processing')
                                <th>Processing at</th>
                            @elseif ($type == 'shipped')
                                <th> Shipped at</th>
                            @elseif ($type == 'collected')
                                <th> Collected at</th>
                            @elseif ($type == 'delivered')
                                <th>Delivered at</th>
                            @elseif ($type == 'cancelled')
                                <th>Cancelled at</th>
                            @elseif ($type == 'returned')
                                <th>Returned at</th>
                            @elseif ($type == 'undelivered')
                                <th>Undelivered At</th>
                            @endif
                            <th>Items</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Order For</th>
                            <th>Order By</th>
                        </tr>
                    </thead>
                    <tbody id="tableBody">
                        @if (isset($orders) && $orders->count() > 0)
                            @foreach ($orders as $order)
                                <tr>
                                    <td class="text-center">{{ $order->id }}</td>
                                    <td>
                                        <a class="btn btn-primary btn-sm " href="{{ route('dealer.viewOrder', ['order'=>$order, 'dealer'=>$dealer]) }}"><i class="fas fa-eye"></i> View</a>
                                    </td>
                                    <td>{{ now()->parse($order->created_at)->format('d-M-Y h:m A') }}</td>
                                    @if ($type == 'pending')
                                        <td> {{ now()->parse($order->pending_at)->format('d-M-Y h:m A') }}</td>
                                    @elseif ($type == 'confirmed')
                                        <td> {{ now()->parse($order->confirmed_at)->format('d-M-Y h:m A') }}</td>
                                    @elseif ($type == 'processing')
                                        <td> {{ now()->parse($order->processing_at)->format('d-M-Y h:m A') }}</td>
                                    @elseif ($type == 'shipped')
                                        <td> {{ now()->parse($order->shipped_at)->format('d-M-Y h:m A') }}</td>
                                    @elseif ($type == 'collected')
                                        <td> {{ now()->parse($order->collected_at)->format('d-M-Y h:m A') }}</td>
                                    @elseif ($type == 'delivered')
                                        <td> {{ now()->parse($order->delivered_at)->format('d-M-Y h:m A') }}</td>
                                    @elseif ($type == 'cancelled')
                                        <td> {{ now()->parse($order->cancelled_at)->format('d-M-Y h:m A') }}</td>
                                    @elseif ($type == 'returned')
                                        <td> {{ now()->parse($order->returned_at)->format('d-M-Y h:m A') }}</td>
                                    @elseif ($type == 'undelivered')
                                        <td> {{ now()->parse($order->undelivered_at)->format('d-M-Y h:m A') }}</td>
                                    @endif
                                    <td class="text-center">{{ $order->items->count() }}</td>
                                    <td>
                                        &#2547; {{ $order->total_collection_amount }}
                                    </td>
                                    <td
                                        class="text-center @if ($order->order_status == 'pending') w3-blue @elseif($order->order_status == 'canceled') w3-red @else w3-green @endif">
                                        {{ Str::ucfirst($order->order_status) }}</td>
                                    <td>
                                        {{ $order->orderForSource->name }}
                                    </td>
                                    <td>
                                        @if ($order->agent_id)
                                            {{ $order->orderByAgent->name }}
                                        @else
                                            Self
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="15" class="text-center text-danger h3">No result found.</td>
                            </tr>
                        @endif

                    </tbody>
                </table>
            </div>
            <div class="responsive" id="pagination">
                {{ $orders->links() }}
            </div>
        </div>
    </div>


@endsection


@push('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"
        integrity="sha512-bZS47S7sPOxkjU/4Bt0zrhEtWx0y0CRkhEp8IckzK+ltifIIE9EMIMTuT/mEzoIMewUINruDBIR/jJnbguonqQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        $('#searchQuery').on('keyup', function() {
            $('#searchIcon').toggleClass('fa fa-search')
            $('#searchIcon').toggleClass('fas fa-spinner fa-spin')
            var query = $('#searchQuery').val()
            var url = $('#url').val()
            axios.get(url + '?q=' + query).then(res => {
                $('#pagination').hide()
                $('#tableBody').html(res.data)
                $('#searchIcon').toggleClass('fa fa-search')
                $('#searchIcon').toggleClass('fas fa-spinner fa-spin')
            });
        });
    </script>
@endpush
