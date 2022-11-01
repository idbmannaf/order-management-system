@extends('admin.layouts.adminMaster')

@section('title')
    Admin Dashboard
@endsection

@push('css')
    <!-- include summernote css/js -->
    {{-- <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> --}}

    {{-- <link rel="stylesheet" type="text/css" href="{{ asset('css/summernote.css') }}"> --}}

@endpush

@section('content')
    <br>
    <!-- Main content -->
    @include('alerts.alerts')
   <div class="container">
       <section class="content">
           <div class="container-fluid">
               <div class="card">
                   <div class="card-header">
                       <h4>Add Payment Types </h4>
                   </div>
                   <div class="card-body">
                       <form action="{{route('admin.paymentStore')}}" method="post">
                           @csrf
                           <div class="form-group">
                               <label for="payment_type">Payment Type</label>
                               <select name="payment_type" id="payment_type" class="form-control">
                                   <option value="">Select Payment Type</option>
                                   <option value="bank">Bank</option>
                                   <option value="mobile_bank">Mobile Banking</option>
                               </select>
                           </div>
                           <div class="form-group">
                               <label for="account_number">Account Number</label>
                               <input type="number" name="account_number" id="account_number" class="form-control")>
                           </div>
                           <div class="form-group">
                               <label for="account_name">Account Details</label>
                               <input type="text" name="account_name" id="account_name" class="form-control">
                           </div>
                           <div class="form-group">
                               <label for="active"> <input type="checkbox" name="active" id="active">&nbsp;Active</label>

                           </div>
                           <div class="form-group">

                               <input type="submit" class="btn btn-info">
                           </div>
                       </form>

                   </div>
               </div>
           </div>

       </section>
   </div>


    {{-- @include('welcome.includes.modals.modalLg') --}}

@endsection



@push('js')

    {{-- <script src="{{ asset('js/summernote.js') }}"></script> --}}
    {{-- <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    <script>
      $(function () {
        $('.summernote').summernote();
      })

    </script> --}}

    <!-- ChartJS -->
    <script src="{{ asset('chart.js/Chart.min.js') }}"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"
            integrity="sha512-bZS47S7sPOxkjU/4Bt0zrhEtWx0y0CRkhEp8IckzK+ltifIIE9EMIMTuT/mEzoIMewUINruDBIR/jJnbguonqQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

@endpush
