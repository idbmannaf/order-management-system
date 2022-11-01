@extends('dealer.layouts.dealerMaster')

@push('css')
@endpush

@section('content')
    <section class="content">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>
                        <small>SMO Dashboard</small>
                    </h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-6">
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3 class="w3-xlarge">{{ $dealer->agents()->count() }}</h3>
                        <p>Total Sr.</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="{{route('dealer.allAgents',$dealer)}}" class="small-box-footer">More info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <div class="col-lg-4 col-6">
                <div class="small-box bg-warning">
                    <div class="inner">
                        <h3 class="w3-xlarge">{{ $dealer->shops()->count() }}</h3>
                        <p>Total Shop</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="{{route('dealer.allShops',['dealer'=>$dealer,'type'=>'all'])}}" class="small-box-footer">More info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-4 col-6">
                <div class="small-box bg-danger">
                    <div class="inner">
                        <h3 class="w3-xlarge">{{ $dealer->orders()->count() }}</h3>
                        <p>Total Order</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="{{ route('dealer.orders',['dealer'=>$dealer,'type'=>'all']) }}" class="small-box-footer">More info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

        </div>
    </section>
@endsection

@push('js')
@endpush
