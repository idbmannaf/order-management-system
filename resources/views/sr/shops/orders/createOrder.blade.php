@extends('sr.layouts.agentMaster')

@push('css')
<style>
    /* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
</style>
@endpush

@section('content')
    <br>
    <section class="content">
        <div class="card">
            <div class="card-header bg-info">
                <h3 class="card-title">Create Order</h3>
            </div>
            <!-- /.card-header -->

            <div class="card-body">
                <input class="form-control my-2" style="border: 2px  solid green;" type="text" id="search"
                       placeholder="Search for names.."
                       data-search-url="{{route('sr.productSearchAjax',['sr'=>$sr,'shop'=>$shop])}}">
                {{--            <div class="table-responsive">--}}
                {{--                <div>--}}
                {{--                    <table id="-shopTable" class="table table-bordered -table-head-fixed text-nowrap"--}}
                {{--                        style="white-space: nowrap;">--}}
                {{--                        <thead>--}}
                {{--                            <tr>--}}
                {{--                                <th>Select</th>--}}
                {{--                                <th>ID</th>--}}
                {{--                                <th>Name</th>--}}
                {{--                                <th>Unit</th>--}}
                {{--                                <th>Type</th>--}}
                {{--                                <th>Bonus</th>--}}
                {{--                                <th>Rate</th>--}}
                {{--                                <th>Percent</th>--}}

                {{--                            </tr>--}}
                {{--                        </thead>--}}
                {{--                        <tbody class="showProducts">--}}

                {{--                            @include('sr.shops.orders.ajax.products')--}}
                {{--                        </tbody>--}}
                {{--                        <tfoot>--}}
                {{--                            <tr>--}}
                {{--                                <th>Select</th>--}}
                {{--                                <th>ID</th>--}}
                {{--                                <th>Name</th>--}}
                {{--                                <th>Unit</th>--}}
                {{--                                <th>Type</th>--}}
                {{--                                <th>Bonus</th>--}}
                {{--                                <th>Rate</th>--}}
                {{--                                <th>Percent</th>--}}
                {{--                            </tr>--}}
                {{--                        </tfoot>--}}
                {{--                    </table>--}}
                {{--                    <div class="pagination">{{$products->links()}}</div>--}}
                {{--                </div>--}}
                {{--            </div>--}}
                <div class="showProducts">
                    @include('sr.shops.orders.ajax.searchProducts')
                </div>
                <div class="card">
                    <div class="card-header bg-info">
                        <h4>Selected Products</h4>
                    </div>
                    <form action="{{route('sr.orderPost',['shop'=>$shop->id,'sr'=>$sr])}}" class="tempProductShop"
                          method="POST">

                        @if (count($tempProducts) > 0)
                            @include('sr.shops.orders.ajax.selectedProduct')
                        @endif
                    </form>

                </div>
            </div>
            <!-- /.card-body -->
        </div>


    </section>
@endsection


@push('js')
    <script>
        $(function () {

            $('#shopTable2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
            });

        });


    </script>

    <script>
        $(document).ready(function () {
            $("#search").on("keyup", function () {
                var that = $(this);
                var value = $(this).val().toLowerCase();

                var url = that.attr('data-search-url');
                var search_url = url + "?q=" + value;
                $.ajax({
                    url: search_url,
                    method: "GET",
                    success: function (response) {
                        if (response.success) {
                            $('.showProducts').html(response.view);
                        }
                    }
                });
            });
        });
        var delay = (function () {
            var timer = 0;
            return function (callback, ms) {
                clearTimeout(timer);
                timer = setTimeout(callback, ms);
            };
        })();
    </script>
    <script>
        $(document).on('click', '.pagination a', function (e) {
            e.preventDefault();

            var url = $(this).attr('href');
            $.ajax({
                url: url,
                method: "GET",
                success: function (response) {
                    if (response.success) {
                        // $(".pagination").hide();
                        $('.showProducts').html(response.view);
                    }
                }
            });
        });
    </script>
    <script>
        $(document).on("change", ".input-select-item", function (e) {
            if (this.checked) {
                var that = $(this);
                var url = that.attr("data-select-url");
                $.ajax({
                    url: url,
                    type: 'GET',
                    cache: false,
                    dataType: 'json',
                    success: function (response) {

                        $('.tempProductShop').html(response.view);
                        //  $('id'+success.product).attr('checked',true);
                    },
                    error: function () {
                    }
                });

            } else {

                var that = $(this);
                var url = that.attr("data-unselect-url");

                // alert(url);

                $.ajax({
                    url: url,
                    type: 'GET',
                    cache: false,
                    dataType: 'json',
                    success: function (response) {
                        if (response.success) {
                            $('.tempProductShop').html(response.view);
                        }

                    },
                    error: function () {
                    }
                });

            }
        });

        $(document).on("change", ".input-select-unselect-temp", function (e) {

            var that = $(this);
            var dataId = that.attr("data-stock-id");
            if (!this.checked) {

                var url = that.attr("data-unselect-url");

                // alert(url);

                $.ajax({
                    url: url,
                    type: 'GET',
                    cache: false,
                    dataType: 'json',
                    success: function (response) {
                        if (response.success) {
                            $(".tempProductShop").empty().append(response.view);
                            $("#id" + dataId).prop("checked", false);
                        }

                    },
                    error: function () {
                    }
                });

            }
        });

        $(document).on("keyup", ".quantity_update", function (e) {
            var that = $(this);
            var val = that.val();
            var min_qty = that.attr('data_min_qty');

            var url = that.attr("data-url");
            var urls = url + '?qty=' + val;
            delay(function () {
                $.ajax({
                    url: urls,
                    type: 'GET',
                    cache: false,
                    dataType: 'json',
                    success: function (response) {
                        if (response.success) {
                            $('.tempProductShop').html(response.view);

                        }

                    },
                    error: function () {
                    }
                });
            }, 800);
        });


    </script>

    <script>
        // increment and decriment
        $(document).ready(function () {

            $(document).on('click', '.minus', function (e) {
                e.preventDefault();
                var that = $(this);
                var qty = parseInt(that.closest('.incrementbtn').find('.quantity_update').val());
                if (qty > 1) {
                    parseInt(that.closest('.incrementbtn').find('.quantity_update').val(qty - 1));
                    that.attr('disabled', false);
                } else {
                    that.attr('disabled', true);
                }
                that.closest('.incrementbtn').find('.quantity_update').trigger("keyup");
            })

            $(document).on('click', '.plus', function (e) {
                e.preventDefault();
                var that = $(this);
                var qty = parseInt(that.closest('.incrementbtn').find('.quantity_update').val());
                parseInt(that.closest('.incrementbtn').find('.quantity_update').val(qty + 1));
                that.closest('.incrementbtn').find('.quantity_update').trigger("keyup");
            })

            (function () {
                $('[data-toggle="tooltip"]').tooltip()
            })

        });
    </script>
    <script>

    </script>
@endpush
