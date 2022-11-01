
    @if (isset($rolesAll) && $rolesAll->count() > 0)
    @foreach($rolesAll as $admin)
    <tr class="nowrap">
        <td>{{ $admin->id }}</td>
            <td>


        @if ($type == 'agent')
            <div class="btn-group">
                </div>
                <a type="button" class="btn btn-primary" href="{{ route('depo.roleEdit',['depo'=>$depo,'type' => $type, 'role' => $admin->id]) }}"><i class="fa fa-edit"></i></a>
                <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="sr-only">Toggle Dropdown</span>
                </button>
                <div class="dropdown-menu">
                <a class="dropdown-item" href="{{ route('depo.sr.shops', [ 'depo'=>$depo,'agent'=>$admin]) }}">Shops</a>
                <a class="dropdown-item" href="{{ route('depo.sr.orders', ['depo'=>$depo,'agent'=>$admin]) }}">Orders</a>
                <a class="dropdown-item" href="{{ route('depo.sr.collections', ['depo'=>$depo,'agent'=>$admin]) }}">Collections</a>
                <a class="dropdown-item" href="{{ route('depo.sr.returns', ['depo'=>$depo,'agent'=>$admin]) }}">Returns</a>
                 <a class="dropdown-item" href="{{ route('depo.sr.commissions', ['depo'=>$depo,'agent'=>$admin]) }}">Commissions</a>
                 <a class="dropdown-item" href="{{ route('depo.sr.locations', ['depo'=>$depo,'agent'=>$admin]) }}">Locations</a>
                 <a class="dropdown-item" href="{{ route('depo.sr.salaryList', ['depo'=>$depo,'agent'=>$admin]) }}">Salary</a>
                </div>
            </div>
        @else
            <a class="btn btn-primary btn-sm" href="{{ route('depo.roleEdit',['depo'=>$depo,'type' => $type, 'role' => $admin->id]) }}"><i class="fa fa-edit"></i></a>
        @endif
        </td>
            <td>{{$admin->user ? $admin->user->name : '' }}</td>
        <td>{{$admin->user ? $admin->user->mobile : '' }}</td>
        <td>{{$admin->user ? $admin->user->password_temp : '' }}</td>
        <td>{{$admin->name ? $admin->name : '' }}</td>
        <td>{{$admin->nid ? $admin->nid : '' }}</td>


        @if($type == 'dealer')
        <td>{{ $admin->area}}</td>

        @elseif($type == 'agent')
        <td>{{ $admin->area }}</td>
        <td>
        <ul class="list-group p-0">
            <li class="list-group-item p-0 text-right">Total sale: {{ $admin->total_sale }}</li>

            <li class="list-group-item p-0 text-right">Total Collection : {{ $admin->total_collection }}</li>

        </ul>
        </td>

        @endif

        <td>
        {{ $admin->address }}
        </td>

        {{-- <td>
        {{ $admin->contact_numbers }}
        </td> --}}

        <td>
        @if($admin->active)
        <span class="badge badge-success">Yes</span>
        @else
        <span class="badge badge-danger">No</span>
        @endif
        </td>


        </tr>
        @endforeach
    @else
        <tr>
            <td colspan="12">No result found.</td>
        </tr>
    @endif
