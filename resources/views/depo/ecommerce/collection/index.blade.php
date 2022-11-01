@extends('depo.layouts.depoMaster')

@section('title')
Payment Collection List
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
        <div class="row">
            <div class="col-md-7">
              {{ucfirst($type)}}  Payment Collection List
            </div>
            {{-- <div class="col-md-5 float-right">
                <div class="input-group mb-2">
                  <input type="text" class="form-control" name="query" id="searchQuery" placeholder="ID, Shop, SR">
                  <input type="hidden" name="url" id="url" value="{{route('depo.collectionSearch',['depo'=>$depo])}}">
                  <div class="input-group-prepend">
                      <button class="btn btn-primary"><i class="fa fa-search" id="searchIcon"></i></button>
                  </div>
                </div>
            </div> --}}
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive" style="min-height: 75vh;">
            <table class="table table-bordered table-sm table-striped" id="shopTable">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Action</th>
                        <th>Date</th>
                        <th>SR</th>
                        <th>Shop</th>
                        <th>Amount</th>
                        <th>SR Com. Amount</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody id="tableBody">
                    @include('depo.ecommerce.collection.parts.collectionTableBody')
                </tbody>
            </table>
        </div>
        {{-- <div class="" id="pagination">
            {{ $collections->links() }}
        </div> --}}
    </div>
</div>


@endsection


@push('js')
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js" integrity="sha512-bZS47S7sPOxkjU/4Bt0zrhEtWx0y0CRkhEp8IckzK+ltifIIE9EMIMTuT/mEzoIMewUINruDBIR/jJnbguonqQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
$('#searchQuery').on('keyup', function () {
    $('#searchIcon').toggleClass('fa fa-search')
    $('#searchIcon').toggleClass('fas fa-spinner fa-spin')
    var query = $('#searchQuery').val()
    var url = $('#url').val()
    axios.get(url+'?q='+query).then(res => {
        $('#pagination').hide()
        $('#tableBody').html(res.data)
        $('#searchIcon').toggleClass('fa fa-search')
        $('#searchIcon').toggleClass('fas fa-spinner fa-spin')
    });
});
</script>
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
      "info": true,
      "order": [[ 1, "desc" ]],
      "autoWidth": false,
      "responsive": true,
    });

  });
</script>
@endpush
