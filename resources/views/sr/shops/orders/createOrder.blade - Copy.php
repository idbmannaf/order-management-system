@extends('sr.layouts.agentMaster')

@push('css')
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
                placeholder="Search for names..">
            <div class="table-responsive">
                <div style="height: 400px; overflow: auto">
                    <table id="shopTable" class="table table-bordered table-head-fixed text-nowrap"
                        style="white-space: nowrap;">
                        <thead>
                            <tr>
                                <th>Select</th>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Unit</th>
                                <th>Type</th>
                                <th>Bonus</th>
                                <th>Rate</th>
                                <th>Percent</th>

                            </tr>
                        </thead>
                        <tbody>
                            @include('sr.shops.orders.ajax.products')
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Select</th>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Unit</th>
                                <th>Type</th>
                                <th>Bonus</th>
                                <th>Rate</th>
                                <th>Percent</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="card">
                <div class="card-header bg-info">
                    <h4>Selected Products</h4>
                </div>
                <form action="{{route('sr.orderPost',['shop'=>$shop->id,'sr'=>$sr])}}" class="tempProductShop" method="POST">

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
    $(document).ready(function(){
      $("#shopTable").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function() {
          $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
      });
    });
</script>
<script>
    $(document).ready(function(){
          $("#search").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#shopTable tbody tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          });
        });
</script>

<script>
    $(document).on("change", ".input-select-item", function(e){
			if(this.checked) {
				var that = $( this );
				var url = that.attr("data-select-url");
                    $.ajax({
                    	url: url,
                    	type: 'GET',
                    	cache: false,
                    	dataType: 'json',
                    	success: function(response)
                    	{

                            $('.tempProductShop').html(response.view);
                            //  $('id'+success.product).attr('checked',true);
                        },
                        error: function(){}
                    });

                }
                else{

                	var that = $( this );
                	var url = that.attr("data-unselect-url");

                    // alert(url);

                    $.ajax({
                    	url: url,
                    	type: 'GET',
                    	cache: false,
                    	dataType: 'json',
                    	success: function(response)
                    	{
                    		if(response.success)
                    		{
                                // $('id'+success.product).attr('checked',false);
                                $('.tempProductShop').html(response.view);

                                // $(".temp-table-body").empty().append(response.view);
                                // $(".temps_qty").text(Number(response.temps_qty).toFixed(2));
                                // $(".temps_total_req_price").text(Number(response.temps_total_req_price).toFixed(2));
                                // $(".temps_total_ep").text(Number(response.temps_total_ep).toFixed(2));
                                // $(".temps_req_total_ep").text(Number(response.temps_req_total_ep).toFixed(2));
                            }

                        },
                        error: function(){}
                    });

                }
            });

 $(document).on("change", ".input-select-unselect-temp", function(e){

        var that = $( this );
        var dataId = that.attr("data-stock-id");

            if(!this.checked){

                var url = that.attr("data-unselect-url");

                // alert(url);

                $.ajax({
                    url: url,
                    type: 'GET',
                    cache: false,
                    dataType: 'json',
                    success: function(response)
                    {
                        if(response.success)
                        {
                            $(".tempProductShop").empty().append(response.view);
                            $("#id"+dataId).prop("checked", false);
                        }

                    },
                    error: function(){}
                });

            }
});

$(document).on("change keyup", ".quantity_update", function(e){
    var that = $( this );
    var val = that.val();
    var min_qty = that.attr('data_min_qty');

    setTimeout(function() {
    if (val < min_qty) {
            that.val(min_qty ?? 1);
            return;
        }
    },600);

    var url = that.attr("data-url");
    var urls = url + '?qty=' + val;
    setTimeout(function() {
            $.ajax({
            url: urls,
            type: 'GET',
            cache: false,
            dataType: 'json',
            success: function(response)
            {
                if(response.success)
                {
                    $('.tempProductShop').html(response.view);

                }

            },
            error: function(){}
        });
        },400);

});




</script>

<script>
    // increment and decriment
    $(document).ready(function(){

$(document).on('click','.minus', function(e){
    e.preventDefault();
    var that = $(this);
    var qty = parseInt(that.closest('.incrementbtn').find('.quantity_update').val());
    if(qty> 1){
        parseInt(that.closest('.incrementbtn').find('.quantity_update').val(qty - 1));
        that.attr('disabled',false);
        }else{
            that.attr('disabled',true);
        }
        that.closest('.incrementbtn').find('.quantity_update').trigger("change");
})

$(document).on('click','.plus', function(e){
    e.preventDefault();
    var that = $(this);
    var qty = parseInt(that.closest('.incrementbtn').find('.quantity_update').val());
    parseInt(that.closest('.incrementbtn').find('.quantity_update').val(qty + 1));
    that.closest('.incrementbtn').find('.quantity_update').trigger("change");
})

(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

});
</script>
@endpush
