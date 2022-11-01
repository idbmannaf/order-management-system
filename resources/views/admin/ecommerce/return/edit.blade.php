@extends('admin.layouts.adminMaster')

@section('title')
Shipment Return # {{ $return->id }}
@endsection

@push('css')
<style>

</style>
@endpush

@section('content')

<div class="card">
    <div class="card-header w3-purple h3">
        Shipment Return # {{ $return->id }}
    </div>
    <div class="card-body">
        @include('alerts.alerts')
        <div>
            Return at : {{ now()->parse($return->placed_at)->format('d-M-Y') }}
        </div>
        <div>
            <p class="p-0 m-0"><b>Shop: </b>{{$return->source->name}}</p>
            <p class="p-0 m-0"><b>SR: </b>{{$return->sr->name}}</p>
        </div>
        <div class="d-flex">
            Status : <span class="badge w3-small @if($return->return_status == 'accepted') badge-success @endif">{{ Str::ucfirst($return->return_status) }} </span>
            @if ($return->return_status == "pending")

            <form action="{{ route('admin.ecommerce.shipment.return.statusUpdate', [$return, 'rejected']) }}" method="post">
                @csrf
                <button class="mx-3 my-1 btn btn-danger btn-sm">All Reject</button>
            </form>
            OR
            <form action="{{ route('admin.ecommerce.shipment.return.statusUpdate', [$return, 'accepted']) }}" method="post">
                @csrf
                <button class="mx-3 my-1 btn btn-success btn-sm">All Approve</button>
            </form>

            @if ($return->rejectedItems() || $return->approvedItems() )
            or
            <form action="{{ route('admin.ecommerce.shipment.return.statusUpdate', [$return, 'itemWise']) }}" method="post">
                @csrf
                <button class="mx-3 my-1 btn btn-success btn-sm">Approve Item Wise</button>
            </form>

            @endif

            @endif
            {{-- @if ($return->return_status != "rejected")

            <form action="{{ route('admin.ecommerce.shipment.return.statusUpdate', [$return, 'rejected']) }}" method="post">
                @csrf
                <button class="mx-3 my-1 btn btn-danger btn-sm">Reject</button>
            </form>
            @endif --}}
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header bold">
        Items List
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-sm table-striped table-bordered">
                <thead>
                    <th>#</th>
                    <th>Product Name</th>
                    <th>Shipment Qty</th>
                    <th>Return Qty</th>
                    <th>Return Amount</th>
                    <th>Return Type</th>
                    <th>Return Reason</th>
                    <th>Status</th>
                    <th>Approve Or Reject</th>
                </thead>
                <tbody>
                    @foreach ($return->items as $item)
                        <tr>
                            <td>{{ $item->product_id }}</td>
                            <td>{{ $item->product_name }}</td>
                            <td>{{ $item->shipment_quantity }}</td>
                            <td>{{ $item->return_quantity }}</td>
                            <td>{{ $item->return_amount }}</td>
                            <td>{{ Str::ucfirst($item->return_type) }}</td>
                            <td>{{ $item->return_reason }}</td>
                            <td>{{$item->status}}</td>
                            <td>
                            <div class="btn-group">
                                @if ($return->return_status == "pending")
                                <form action="{{route('admin.ecommerce.shipment.return.returnItemStatusUpdate',['return'=>$return->id,'item'=>$item->id,'status'=>'approved'])}}" method="POST">
                                    @csrf
                                    <button {{$item->status == 'approved'?'disabled' : ''}}  type="submit" class="btn btn-success">{{$item->status == 'approved'?'Approved' : 'Approve'}}</button>
                                </form>
                                <form action="{{route('admin.ecommerce.shipment.return.returnItemStatusUpdate',['return'=>$return->id,'item'=>$item->id,'status'=>'rejected'])}}" method="POST">
                                    @csrf
                                    <button {{$item->status == 'rejected'?'disabled' : ''}} type="submit" class="btn btn-danger">{{$item->status == 'rejected'?'Rejected' : 'Reject'}}</button>
                                </form>
                                @endif

                                {{-- <a href="{{route('admin.ecommerce.shipment.return.returnItemStatusUpdate',['return'=>$return->id,'item'=>$item->id,'status'=>'approved'])}}" class="btn btn-success">Approve</a>
                                <a href="{{route('admin.ecommerce.shipment.return.returnItemStatusUpdate',['return'=>$return->id,'item'=>$item->id,'status'=>'rejected'])}}" class="btn btn-danger">Reject</a> --}}
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
