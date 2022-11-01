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

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>

                        <small>Admin Dashboard</small>
                    </h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                        <li class="breadcrumb-item active">Payment Type</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>


    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <h4>Payment Types <a href="{{route('admin.paymentAdd')}}" class="btn btn-info"> <i class="fas fa-plus"></i></a></h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover nowrap">
                            <thead>
                            <tr>
                                <th>Payment Type</th>
                                <th>Account Number</th>
                                <th>Account Name</th>
                                <th>Active</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse($paymentTypes as $payment)
                                <tr>
                                    <td>{{$payment->payment_type}}</td>
                                    <td>{{$payment->account_number}}</td>
                                    <td>{{$payment->account_name}}</td>
                                    <td>
                                        @if ($payment->active)
                                            <span class="text-success">Activated</span>
                                        @else
                                            <span class="text-danger">InActivated</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{route('admin.paymentEdit',$payment)}}" class="btn btn-info">Edit</a>
{{--                                        <a href="" class="btn btn-info">Delete</a>--}}
{{--                                        <a href="" class="btn btn-info">View</a>--}}
                                    </td>

                                </tr>
                            @empty

                            @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </section>


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
