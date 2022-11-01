@extends('sr.layouts.agentMaster')

@push('css')
@endpush

@section('content')
<br>
<section class="content">
    <div class="card">
        <div class="card-header h5 w3-deep-orange">
            My Salary Statement
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="shopTable" class="table table-bordered" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Income</th>
                        <th>Paid Amount</th>
                        <th>Remaining Income</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($salaries as $salary)
                    <tr>
                        <td>{{\Carbon\Carbon::parse($salary->trans_date)->format('d M,Y')}}</td>
                        <td>৳{{$salary->previous_income}}</td>
                        <td>৳{{$salary->paid_amount}}</td>
                        <td>৳{{$salary->current_income}}</td>
                    </tr>
                    @empty
                    <tr>
                        <td class="text-danger h5">No Orders Found</td>
                        <th></th>
                        <th></th>
                        <th></th>

                    </tr>

                    @endforelse

                <tfoot>
                    <th>Date</th>
                        <th>Income</th>
                        <th>Paid Amount</th>
                        <th>Remaining Income</th>
                </tfoot>
            </table>
        </div>
        <!-- /.card-body -->
    </div>


</section>
@endsection


@push('js')
<script>
    $(function () {

    $('#shopTable').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "order": [[ 0, "desc" ]],
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>
@endpush
