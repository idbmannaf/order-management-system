@if (isset($shops) && $shops->count() > 0)
@foreach ($shops as $shop)
<tr class="nowrap">
    <td>
   {{$shop->id}}
    <td>
        <div class="btn-group">
            <a  class="btn btn-success text-white" href="{{ route('depo.shop.edit', ['depo'=>$depo,'shop'=>$shop]) }}"><i class="fa fa-edit"></i></a>
            <button type="button" class="btn w3-deep-orange dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="{{ route('depo.shop.orders', ['depo'=>$depo,'shop'=>$shop]) }}">Orders</a>
                <a class="dropdown-item" href="{{ route('depo.shop.collections', ['depo'=>$depo,'shop'=>$shop]) }}">Collections</a>
                <a class="dropdown-item" href="{{ route('depo.shop.returns', ['depo'=>$depo,'shop'=>$shop]) }}">Returns</a>
                <a class="dropdown-item" href="{{ route('depo.shop.comissions', ['depo'=>$depo,'shop'=>$shop]) }}">Commissions</a>
            </div>
          </div>
    </td>
    <td>{{ $shop->active ? 'Active' : 'Inactive' }}</td>
    <td>
        <ul class="list-group p-0">
          <li class="list-group-item p-0">Total sale: {{ $shop->total_sale }}</li>
          {{-- <li class="list-group-item p-0">Total sale Commission: {{ $shop->total_sale_commission }}</li> --}}
          {{-- <li class="list-group-item p-0">Current sale : {{ $shop->current_sale }}</li> --}}
          {{-- <li class="list-group-item p-0">Current sale Commission: {{ $shop->current_sale_commission }}</li> --}}
          <li class="list-group-item p-0">Total Collection : {{ $shop->total_collection }}</li>
          {{-- <li class="list-group-item p-0">Total Collection Commission: {{ $shop->total_collection_commission }}</li> --}}
          {{-- <li class="list-group-item p-0">Current Collection: {{ $shop->current_collection }}</li> --}}
          {{-- <li class="list-group-item p-0">Current Collection Commission: {{ $shop->current_commission }}</li> --}}
        </ul>
      </td>
    <td>{{ $shop->name }}</td>
    <td>{{ $shop->owner_name }}</td>
    <td>{{$shop->agent? $shop->agent->name : ''}}</td>
    <td>{{$shop->smo? $shop->smo->name : ''}}</td>
    <td>{{ $shop->mobile }}</td>
    <td> {{ $shop->description }}</td>
    <td>{{ $shop->address }}</td>
    <td>{{ Str::ucfirst($shop->type) }}</td>
    <td></td>
</tr>
@endforeach
@else
    <tr>
        <td colspan="7">No Result Found.</td>
    </tr>
@endif
