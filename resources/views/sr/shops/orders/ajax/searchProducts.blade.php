<div class="table-responsive">
    <div>
        <table id="-shopTable" class="table table-bordered -table-head-fixed text-nowrap"
               style="white-space: nowrap;">
            <thead>
            <tr>
                <th>Select</th>
                <th>ID</th>
                <th>Name</th>
                <th>Unit</th>
                <th>Type</th>
                <th>Bonus</th>
                <th>Rate</th>
                <th>Percent</th>

            </tr>
            </thead>
            <tbody class="">
            @foreach ($catProducts as $key=> $catProduct)

                <tr>
                    <th colspan="4">{{$key}}</th>
                </tr>
                @foreach ($catProducts[$key] as $product)
                    <tr>

                        <td>
                            <input type="checkbox" class="input-select-item" id="id{{ $product->id }}"
                                   data-select-url="{{route('sr.selectProduct',['product'=>$product->id,'shop'=>$shop->id,'sr'=>$sr])}}"
                                   data-unselect-url="{{route('sr.unSelectProduct',['product'=>$product->id,'shop'=>$shop->id,'sr'=>$sr])}}"
                                   name="ids" value="{{$product->id}}"
                                   {{$product->hasOrderPTemp($shop->id) ? 'checked' : ''}} data-id="{{$product->id}}">
                        </td>
                        <td>{{$product->id}}</td>
                        <td>{{Str::limit($product->name,20,"..")}}</td>
                        <td>{{round($product->unit_value) . $product->unit}}</td>
                        <td>{{$product->type_value . " ".$product->type}}</td>
                        <td>
                            @if ($product->bonus)
                                {{$product->bonus}}for {{$product->pice}}
                            @endif

                        </td>
                        <td>{{$product->sale_price}}</td>
                        <td>{{round($product->shopCommissionPercent($shop->id))}}</td>

                    </tr>
                @endforeach
            @endforeach


            </tbody>
            <tfoot>
            <tr>
                <th>Select</th>
                <th>ID</th>
                <th>Name</th>
                <th>Unit</th>
                <th>Type</th>
                <th>Bonus</th>
                <th>Rate</th>
                <th>Percent</th>
            </tr>
            </tfoot>
        </table>
        <div class="paginationToggle">{{$products->appends(['q'=>$q])->links()}}</div>
    </div>
</div>
