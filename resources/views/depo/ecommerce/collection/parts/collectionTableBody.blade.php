@if (isset($collections) && $collections->count() > 0)
@foreach ($collections as $collection)
@if ($collection->agent)
    @if ($collection->agent->depo_id == $depo->id)
    <tr>
        <td>{{ $collection->id }}</td>
        <td>
            <a class="btn btn-primary btn-sm" href="{{ route('depo.collection.edit',[ 'depo'=>$depo,'collection'=>$collection]) }}">Details</a>    
        </td>
        <td>{{ now()->parse($collection->trans_date)->format('d M Y') }}</td>
        <td>{{ $collection->agent->name }}</td>
        <td>{{ $collection->source->name }} ({{ $collection->source->mobile }})</td>
        <td>{{ $collection->paid_amount }}</td>
        <td>{{ $collection->sr_commission_amount }}</td>
        <td>{{ Str::ucfirst($collection->status) }}</td>
    </tr>
    @else

    @endif

@endif
@endforeach
@else
    <tr>
        <td colspan="7">No Result Found.</td>
    </tr>
@endif