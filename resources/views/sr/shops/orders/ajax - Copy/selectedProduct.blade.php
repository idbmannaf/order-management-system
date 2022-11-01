<div class="card-body selectedProductM">
    <div class="table-responsive">
        <table class="table table-borderd" style="white-space: nowrap">
            <thead>
                <tr>
                    <th></th>
                    <th>Name</th>
                    <th>Qty</th>
                    <th>Total Price</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <?php
            $totalPrice= 0;
            ?>
                @foreach ($tempProducts as $tp)
                <tr>
                    <td><input type="checkbox" class="input-select-unselect-temp" data-stock-id="{{$tp->product_id}}"
                            data-unselect-url="{{route('sr.unSelectProduct',['product'=>$tp->product_id,'shop'=>$shop->id,'sr'=>$sr])}}"
                            name="ids" value="{{$tp->product_id}}" checked> </td>
                    <td data-toggle="tooltip" data-placement="top" title="{{$tp->product->name}}">({{$tp->product_id}}) {{Str::limit($tp->product->name,10)}} </td>
                    <td>
                        <input type="hidden" name="product[]" value="{{$tp->product_id}}">

                        <div class="incrementbtn">
                            @if (Agent::isMobile())
                                <div class="row">
                                    <div class="col-sm-12">
                                        <input type="number" name="qty[]" class="quantity_update form-control"
                                            value="{{$tp->quantity}}" step="1"
                                            data-url="{{route('sr.updateQuanity',['shop'=>$shop->id,'sr'=>$sr,'temp'=>$tp->id])}}"
                                            data_min_qty="{{$tp->product->min_order_quantity}}">
                                    </div>
                                    <div class="col-12 pt-1">
                                        <div class="d-flex justify-content-between py-1">
                                            <div class="input-group-prepend">
                                                <button type="button" class="btn btn-danger btn-sm minus">
                                                    <i class="fa fa-minus"></i>
                                                </button>
                                            </div>
                                            <div class="input-group-append">
                                                <button type="button" class="btn btn-primary btn-sm plus">
                                                    <i class="fa fa-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @else
                                <div class="input-group input-spinner ">
                                    <div class="input-group-prepend">
                                        <button type="button" class="btn btn-danger btn-sm minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="number" name="qty[]" class="quantity_update form-control text-center"
                                        value="{{$tp->quantity}}" step="1" min="1"
                                        data-url="{{route('sr.updateQuanity',['shop'=>$shop->id,'sr'=>$sr,'temp'=>$tp->id])}}"
                                        data_min_qty="{{$tp->product->min_order_quantity}}" style="width: 80px;">

                                    <div class="input-group-append">
                                        <button type="button" class="btn btn-primary btn-sm plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            @endif



                            {{-- <input type="number" name="qty[]" class="quantity_update" value="{{$tp->quantity}}"
                                step="1" min="1"
                                data-url="{{route('sr.updateQuanity',['shop'=>$shop->id,'sr'=>$sr,'temp'=>$tp->id])}}"
                                data_min_qty="{{$tp->product->min_order_quantity}}" style="width: 80px"> --}}

                    </td>
                    <td>{{$tp->shop_price * $tp->quantity}}</td>
                    <td>{{$tp->shop_price}}</td>
                </tr>
                <?php $totalPrice += $tp->shop_price * $tp->quantity; ?>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@csrf
<h4 class="text-center totalPrice"><b>Total Price {{$totalPrice}}</b></h4>
<h4 class="text-center m-0 p-0 pt-2"><button class="btn w3-purple  px-3 py-2" type="submit"><i class="fas fa-save"></i>
        Order</button></h4>
