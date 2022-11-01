@extends('sr.layouts.agentMaster')

@push('css')
@endpush

@section('content')
    <br>
    <section class="content">
        <div class="card">
            <div class="card-header h5 w3-deep-orange">
                {{ ucfirst($type) }} Payment Collections
            </div>

            <!-- /.card-header -->
            <div class="card-body">
                <table id="shopTable" class="table table-bordered" style="white-space: nowrap;">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Date</th>
                            <th>Shop</th>
                            <th>Amount</th>
                            <th>Commission</th>
                            <th>Collection Type</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($collections as $item)
                            <tr>
                                <td>{{ $item->id }}</td>
                                <td>{{ \Carbon\Carbon::parse($item->trans_date)->format('d M,Y') }}</td>
                                <td>{{ $item->source->name }}({{ $item->source->mobile }})</td>
                                <td>{{ $item->paid_amount }}</td>
                                <td>{{ $item->sr_commission_amount }}</td>
                                <td>{{ $item->collection_type }}
                                    @if ($item->payment_type_id)
                                        ({{ $item->paymentType->account_number }})
                                </td>
                        @endif
                        <td>
                            @if ($item->status == 'varified')
                                <span class="badge badge-success">Verified</span>
                            @elseif ($item->status == 'rejected')
                                <span class="badge badge-danger"> Rejected</span>
                                @else
                                <span class="badge badge-warning">Pending</span>
                            @endif
                        </td>
                        </tr>
                    @empty
                        <tr>
                            <td class="text-danger h5">No Orders Found</td>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>

                        </tr>
                        @endforelse

                    <tfoot>
                        <th>Id</th>
                        <th>Date</th>
                        <th>Shop</th>
                        <th>Amount</th>
                        <th>Commission</th>
                        <th>Collection Type</th>
                        <th>Status</th>
                    </tfoot>
                </table>
            </div>
            <!-- /.card-body -->
        </div>


    </section>
@endsection


@push('js')
    <script>
        $(function() {

            $('#shopTable').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": true,
                "ordering": true,
                "order": [
                    [0, "desc"]
                ],
                "info": true,
                "autoWidth": false,
                "responsive": true,
            });

        });
    </script>
@endpush
