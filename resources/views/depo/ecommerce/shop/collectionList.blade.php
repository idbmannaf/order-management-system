@extends('depo.layouts.depoMaster')
@section('title')
    Payment Collection List
@endsection
@push('css')
<style>

</style>
@endpush

@section('content')

<div class="card">
    <div class="card-header w3-purple h3">
        Payment Collection List
    </div>
    <div class="card-body">
        @include('depo.ecommerce.shop.shopDetails')
        <div class="table-responsive" style="min-height: 75vh;">
            <table class="table table-bordered table-sm table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Action</th>
                        <th>Date</th>
                        <th>SR</th>
                        <th>Shop</th>
                        <th>Amount</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($collections as $collection)
                        <tr>
                            <td>{{ $collection->id }}</td>
                            <td>
                                {{-- {{ route('admin.collection.edit', $collection) }} --}}
                                <a class="btn btn-primary btn-sm" href="{{ route('depo.collection.collectionEdit', ['depo'=>$depo,'collection'=>$collection]) }}">Details</a>    
                            </td>
                            <td>{{ now()->parse($collection->trans_date)->format('d M Y') }}</td>
                            <td>{{ $collection->agent->name }}</td>
                            <td>{{ $collection->source->name }} ({{ $collection->source->mobile }})</td>
                            <td>{{ $collection->paid_amount }}</td>
                            <td>{{ Str::ucfirst($collection->status) }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="">
            {{ $collections->links() }}
        </div>
    </div>
</div>


@endsection


@push('js')
<script>
</script>
@endpush
