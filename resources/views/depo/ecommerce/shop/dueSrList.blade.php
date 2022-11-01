@extends('depo.layouts.depoMaster')
@section('title')
Due Lists
@endsection
@push('css')
<link rel="stylesheet" href="{{asset('cp/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{asset('cp/plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
<style>

</style>
@endpush

@section('content')

<div class="card">
    <div class="card-header w3-purple h3">
       Sr Due Lists
    </div>
    <div class="card-body">
        @include('depo.ecommerce.shop.shopDetails')
        <div class="table-responsive" style="min-height: 75vh;">
            <table id="shopTable" class="table table-bordered table-sm table-striped ">
                <thead>
                    <tr>
                        <th>Sr Id</th>
                        <th>Action</th>
                        <th>Sr Name</th>
                        <th>Total Sale</th>
                        <th>Total Collection</th>
                        <th>Total Due</th>
                        <th>Total Shop</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($srs as $sr)
                    <tr>
                        <td>{{$sr->id}}</td>
                        <td><a href="{{route('admin.SrDueList',['sr'=>$sr->id])}}" class="btn btn-info">Shops Due</a></td>
                        <td>{{$sr->name}}</td>
                        <td>{{$sr->sources_sum_total_sale}}</td>
                        <td>{{$sr->sources_sum_total_collection}}</td>
                        <td class="font-weight-bolder">{{$sr->sources_sum_current_sale}}</td>
                        <td>{{$sr->total_shop}}</td>
                    </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
        <div class="">
        </div>
    </div>
</div>


@endsection


@push('js')
<script src="{{asset('cp/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('cp/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('cp/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('cp/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
<script src="{{asset('cp/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
<script>
    $(function () {

    $('#shopTable').DataTable({
      "paging": true,
      "lengthChange": false,
      "pageLength": 50,
      "searching": true,
      "ordering": true,
      "order": [[ 6, "desc" ]],
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>
@endpush
