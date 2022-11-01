@extends('admin.layouts.adminMaster')
@section('title')
Shop Due  Lists
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
       Due of sr: ({{$sr->name}})
    </div>
    <div class="card">
        <div class="card-body">
           <div class="h6">Name: {{$sr->name}}</div>
           <div class="h6">Mobile: {{$sr->contact_numbers}}</div>
           <div class="h6">Area: {{$sr->area}}</div>
           <div class="h6">Address: {{$sr->address}}</div>
           <div class="h6">GM: {{$sr->depo->name}}</div>
        </div>
    </div>
    <div class="card-body">
        @include('depo.ecommerce.shop.shopDetails')
        <div class="table-responsive" style="min-height: 75vh;">
            <table id="shopTable" class="table table-bordered table-sm table-striped ">
                <thead>
                    <tr>
                        <th>Shop Id</th>
                        <th>Shop Name</th>
                        <th>Totla Sale</th>
                        <th>Total Collection</th>
                        <th>Total Due</th>

                    </tr>
                </thead>
                <tbody>
                    @foreach ($sr->shops as $shop)
                    <tr>
                        <td>{{$shop->id}}</td>
                        <td>{{$shop->name}}</td>
                        <td>{{$shop->total_sale}}</td>
                        <td>{{$shop->total_collection}}</td>
                        <td class="font-weight-bolder">{{$shop->current_sale}}</td>
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
      "order": [[ 0, "desc" ]],
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>
@endpush
