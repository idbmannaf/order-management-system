@extends('sr.layouts.agentMaster')

@push('css')
@endpush
<style>
    .mybg {
        background-color: #f0f8ff !important;
    }
</style>
@section('content')
<br>
<section class="content px-0 mybg">
    <div class="card mybg">
        <div class="card-header bg-info">
            <h3 class="card-title">Create Shop <a href="{{route('sr.shopList',['sr'=>$sr,'type'=>'all'])}}" class="btn w3-purple"><i
                        class="fas fa-eye"></i></a></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <form action="{{route('sr.saveShop',['sr'=>$sr])}}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="name">Shop Name <span class="text-danger">*</span></label>
                    <input type="text" class="form-control @error('name') border-danger @enderror" name="name"
                        id="name">
                    @error('name')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="owner_name">Shop Owner <span class="text-danger">*</span></label>
                    <input type="text" class="form-control @error('owner_name') border-danger @enderror"
                        name="owner_name" id="owner_name">
                    @error('owner_name')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="description">Description (optional)</label>
                    <textarea name="description" id="description" cols="30" rows="3" class="form-control"></textarea>

                </div>
                <div class="form-group">
                    <label for="address">Shop Address <span class="text-danger">*</span></label>
                    <textarea name="address" id="address" cols="30" rows="2"
                        class="form-control @error('address') border-danger @enderror "></textarea>
                    @error('address')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile number <span class="text-danger">*</span></label>
                    <input type="text" name="mobile" id="mobile"
                        class="form-control @error('mobile') border-danger @enderror">
                    @error('mobile')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="type">Shop Type <span class="text-danger">*</span></label>
                    <select class="form-control @error('type') border-danger @enderror" id="type" name="type">
                        <option value="" selected disabled="disabled">Select one</option>
                        <option value="distributor">Distributor</option>
                        <option value="flagship_distributor">Flagship Distributor</option>
                    </select>
                    @error('type')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="due_amount">Initial/Due Amount </label>
                    <input type="number" style="any" min="0" name="due_amount"
                        class="form-control @error('due_amount') border-danger @enderror" placeholder="0.00">
                    @error('due_amount')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group text-center">
                    <button type="submit" class="btn w3-purple"><i class="fas fa-save"></i> Save Shop</button>
                </div>
            </form>
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
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });


  });
</script>
@endpush
