@extends('admin.layouts.adminMaster')

@push('css')
<style>

</style>
@endpush

@section('content')

    <div class="card">
        <div class="card-header w3-purple h3">
            Payment Collection # {{ $collection->id }}
        </div>

        <div class="card-body w3-medium">

            @include('alerts.alerts')

            <div>
                Shop Name: {{ $collection->source->name }}
            </div>
            <div>
                Mobile: {{ $collection->source->mobile }}

            </div>

            <div>
                Collection Date: {{ now()->parse($collection->trans_date)->format('d M Y') }}
            </div>
            <div>
                @if ($collection->status == 'varified')
                    Paid Amount: {{ $collection->paid_amount }}
                @else
                    Payable Amount: {{ $collection->paid_amount }}
                @endif

            </div>
            <div>
                @if ($collection->status == 'varified')
                    Due Amount: {{ $collection->source->current_sale  }}
                @else
                    Due Amount: {{ $collection->source->current_sale -  $collection->paid_amount }}
                @endif

            </div>
            <div class="d-flex">
                Status: <span class="badge @if($collection->status == 'varified') badge-success @endif">{{ Str::ucfirst($collection->status) }}</span>
                @if ( $collection->status == 'pending')

                    <form action="{{ route('admin.collection.varify', $collection) }}" method="post">
                        @csrf
                        <button class="btn btn-success btn-sm mx-4">Varify</button>
                    </form>

                    Or <form action="{{ route('admin.collection.reject', $collection) }}" method="post">
                        @csrf
                        <button class="btn btn-danger btn-sm mx-4">Reject</button>
                    </form>
                @endif
            </div>
            <div>
                Collection Type: {{ Str::ucfirst($collection->collection_type) }}
            </div>
            @if ($collection->payment_type_id && $collection->paymentType)
                <fieldset>
                    <legend>Payment Via:</legend>

                    {{$collection->paymentType->account_number}} ({{$collection->paymentType->account_name}})

                </fieldset>


            @endif



            @if ($collection->note)
                <div>
                    Note: {{ $collection->note }}
                </div>
            @endif
            @if ($collection->image)
                <div>
                    Image: <br>
                    <img style="max-width: 100%;" src="{{ $collection->image }}" alt="">
                </div>
            @endif

        </div>
    </div>


@endsection


@push('js')
<script>
function updatePrice(url,id) {
    $(`#price_button_${id}`).html(`<i class="fa fa-save"></i> <i class="fas fa-spinner fa-spin"></i>`)
    let minQty = $(`#min_qty_${id}`).val()
    let purchaseRate = $(`#purchase_rate_${id}`).val()
    let saleRate = $(`#sale_rate_${id}`).val()
    if (minQty && purchaseRate && saleRate) {
        axios.post(url,{
            'min_unit' : minQty,
            'purchase_price' : purchaseRate,
            'sale_price' : saleRate,
        }).then(res =>{
            if (res.status == 200) {
                $(`#price_button_${id}`).html(`<i class="fa fa-save"></i> <i class="fas fa-check"></i>`)
            }else{
                $(`#price_button_${id}`).html(`<i class="fa fa-save"></i> <i class="fas fa-exclamation-triangle text-red"></i>`)
            }
        })
    }else{
        $(`#price_button_${id}`).html(`<i class="fa fa-save"></i> <i class="fas fa-exclamation-triangle text-red"></i>`)
    }
}

var priceFieldsCount = 0
function addPriceField(addNewPriceUrl) {
    priceFieldsCount++
    $(`#priceFields`).append(`
        <div class="row my-2 pb-3 border-bottom">
            <div class="col-md-3">
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">Min Qty.</span>
                    </div>
                    <input type="text" class="form-control" id="new_min_qty_${priceFieldsCount}" placeholder="ex. 100">
                </div>
            </div>
            <div class="col-md-4">
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">Purchase Rate &#2547; </span>
                    </div>
                    <input type="text" class="form-control" id="new_purchase_rate_${priceFieldsCount}" placeholder="ex. 150.50">
                </div>
            </div>
            <div class="col-md-4">
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">Sale Rate &#2547; </span>
                    </div>
                    <input type="text" class="form-control" id="new_sale_rate_${priceFieldsCount}" placeholder="ex 180.00">
                </div>
            </div>
            <div class="col-md-1">
                <button class="btn btn-success" id="new_price_button_${priceFieldsCount}" onclick="addNewPrice('${addNewPriceUrl}',${priceFieldsCount})"><i class="fa fa-save"></i> </button>
            </div>
        </div>
    `)
}
function addNewPrice(url,id) {
    $(`#new_price_button_${id}`).html(`<i class="fa fa-save"></i> <i class="fas fa-spinner fa-spin"></i>`)
    let minQty = $(`#new_min_qty_${id}`).val()
    let purchaseRate = $(`#new_purchase_rate_${id}`).val()
    let saleRate = $(`#new_sale_rate_${id}`).val()
    if (minQty && purchaseRate && saleRate) {
        axios.post(url,{
            'min_unit' : minQty,
            'purchase_price' : purchaseRate,
            'sale_price' : saleRate,
        }).then(res =>{
            if (res.status == 200) {
                $(`#new_price_button_${id}`).html(`<i class="fa fa-save"></i> <i class="fas fa-check"></i>`)
            }else{
                $(`#new_price_button_${id}`).html(`<i class="fa fa-save"></i> <i class="fas fa-exclamation-triangle text-red"></i>`)
            }
        })
    }else{
        $(`#new_price_button_${id}`).html(`<i class="fa fa-save"></i> <i class="fas fa-exclamation-triangle text-red"></i>`)
    }
}
</script>
@endpush
