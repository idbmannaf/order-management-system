@extends('admin.layouts.adminMaster')
@section('title')
    Change Price
@endsection
@push('css')
@endpush

@section('content')
    <br>
    @include('alerts.alerts')
    <div class="card">
        <form action="{{ route('admin.updatePrice') }}" method="POST">
            @csrf
            <div class="row">
                <div class="col-12 col-lg-5 m-auto" id="formData">
                    <div class="form-group">
                        <label for="category">Category</label>
                        <select name="category" id="category" class="form-control"
                            data-url="{{ route('admin.getData', ['type' => 'type']) }}">
                            <option value="">Select Category</option>
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group" id="typeShow">

                    </div>
                    <div class="form-group" id="type_value_show">

                    </div>
                    <div class="form-group" id="unit_show">

                    </div>

                    <div class="form-group" id="unit_value_show">

                    </div>
                    <div class="submitBtn">

                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection


@push('js')
    <script>
        $(document).on('change', '#category', function(e) {
            var that = $(this);
            var category = that.val();
            var url = that.attr('data-url');

            if (category == '') {
                $("#typeShow").hide();
                $("#type_value_show").hide();
                $("#unit_show").hide();
                $("#unit_value_show").hide();
                $(".submitBtn").hide();
                alert('please select Category')
                return;
            }
            var fullUrl = url + "?category=" + category;
            $.ajax({
                url: fullUrl,
                method: 'GET',
                success: function(res) {
                    $("#typeShow").show()
                    $("#typeShow").html(res.html)

                }
            })
        });

        $(document).on('change', '#type', function(e) {
            var that = $(this);
            var category = $('#category').val();
            var type = that.val();

            if (category == '') {

                alert("First Select Category")
                return;
            }

            if (type == '') {
                $("#type_value_show").hide();
                $("#unit_show").hide();
                $("#unit_value_show").hide();
                $(".submitBtn").hide();
                alert("First Select Type")
                return;
            }

            var url = that.attr('data-url');
            var fullUrl = url + "?category=" + category + "&product_type=" + type;
            $.ajax({
                url: fullUrl,
                method: 'GET',
                success: function(res) {
                    $("#type_value_show").show();
                    $("#type_value_show").html(res.html)
                }
            })
        });

        $(document).on('change', '#type_value', function(e) {

            var that = $(this);
            var category = $('#category').val();
            var type = $('#type').val();
            var type_value = that.val();
            if (category == '') {
                alert("First Select Category")
                return;
            }
            if (type_value == '') {
                $("#unit_show").hide();
                $("#unit_value_show").hide();
                $(".submitBtn").hide();
                alert("First Select type");
                return;
            }
            var url = that.attr('data-url');
            var fullUrl = url + "?category=" + category + "&product_type=" + type + "&type_value=" + type_value;
            $.ajax({
                url: fullUrl,
                method: 'GET',
                success: function(res) {
                    $("#unit_show").show();
                    $("#unit_show").html(res.html)
                }
            })
        });

        $(document).on('change', '#getUnit', function(e) {
            var that = $(this);
            var category = $('#category').val();
            var type = $('#type').val();
            var type_value = $("#type_value").val();
            var unit = that.val();
            if (category == '') {
                alert("First Select Category")
                return;
            }
            if (type == '') {
                alert("First Select type")
                return;
            }
            if (type_value == '') {
                alert("First Select type")
                return;
            }
            if (unit == '') {
                $("#unit_value_show").hide();
                $(".submitBtn").hide();
                alert("First Select type")
                return;
            }
            var url = that.attr('data-url');
            var fullUrl = url + "?category=" + category + "&product_type=" + type + "&type_value=" + type_value +
                "&unit=" + unit;
            $.ajax({
                url: fullUrl,
                method: 'GET',
                success: function(res) {
                    $("#unit_value_show").show();
                    $("#unit_value_show").html(res.html)

                }
            })
        })

        $(document).on('change', '#unit_value', function(e) {
            var that = $(this);
            var category = $('#category').val();
            var type = $('#type').val();
            var type_value = $("#type_value").val();
            var unit = $("#getUnit").val();
            var unit_value = that.val();
            // alert(unit_value);

            if (category == '') {
                alert("First Select Category")
                return;
            }
            if (type == '') {
                alert("First Select type")
                return;
            }
            if (type_value == '') {
                alert("First Select type_value")
                return;
            }
            if (unit == '') {
                alert("First Select unit")
                return;
            }
            if (unit_value == '') {
                $(".submitBtn").hide();
                alert("First Select unit_value")
                return;
            }
            var url = that.attr('data-url');
            var fullUrl = url + "?category=" + category + "&product_type=" + type + "&type_value=" + type_value +
                "&unit=" + unit + "&unit_value=" + unit_value;
            $.ajax({
                url: fullUrl,
                method: 'GET',
                success: function(res) {
                    $(".submitBtn").show();
                    $(".submitBtn").html(res.html)
                }
            })
        })
    </script>
@endpush
