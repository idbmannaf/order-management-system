@extends('sr.layouts.agentMaster')

@push('css')
@endpush

@section('content')
    <section class="content">
        <div class="card">
            <div class="card-body">
                <h1>Sr Dashboard</h1>

                <div class="row">
                    <div class="col-12 col-lg-6">
                        <div class="card w3-indigo">
                            <div class="card-body w3-text-white">
                                Monthly Target : ৳ {{ $sr->monthly_target }}
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="card w3-deep-orange">
                            <div class="card-body w3-text-white">
                                Current Month Sale : ৳ {{ $currentMonthSale }}
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="card w3-purple">
                            <div class="card-body w3-text-white">
                                Current Month Collection : ৳ {{ $currentMonthCollection }}
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="card w3-red">
                            <div class="card-body w3-text-white">
                                Total Sales : ৳ {{ $sr->total_sale }}
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="card w3-teal">
                            <div class="card-body w3-text-white">
                                Total Collection : ৳ {{ $sr->total_collection }}
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="card w3-blue-grey">
                            <div class="card-body w3-text-white">
                                Total Due : ৳ {{ $sr->total_due() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


@push('js')


    @auth
    @else
    @endauth
@endpush
