@extends('sr.layouts.agentMaster')

@push('css')
<style>
    .mybg {
        background-color: #f0f8ff !important;
    }
</style>
@endpush

@section('content')
<br>
<section class="content">

    <div class="card">
        <div class="card-header bg-info">New Payment Collection form</div>
        <div class="card-body mybg">
            <div class="card">
                <div class="card-body">
                    <h3 class="font-weight-bold">Shop Info</h3>
                    Shop Name: {{$shop->name}} <br>
                    Owner Name:{{$shop->owner_name}} <br>
                    Contact: {{$shop->mobile}} <br>
                    Collection Amount: ৳ {{$shop->current_sale}}
                </div>
            </div>

            <form action="{{route('sr.paymentCollectionSave',['shop'=>$shop->id,'sr'=>$sr])}}" class="paymentCollection"
                method="POST" enctype="multipart/form-data">
                @csrf
                <input type="hidden" id="current_sale" value="{{$shop->current_sale}}">
                <div class="form-group">
                    <label for="payment_type">Payment Type <span class="text-danger">*</span></label>
                    <select class="form-control" id="payment_type" name="payment_type"
                        data-url="{{route('sr.paymentMthods',['sr'=>$sr])}}">
                        <option value="">Select Payment Type</option>
                        <option value="cash">Cash</option>
                        <option value="bank">Bank</option>
                        <option value="mobile_bank">Mobile Banking</option>
                        <option value="cheque">Cheque</option>
                        <option value="online">Online</option>
                    </select>
                    <span class="payment_type_error text-danger"></span>
                </div>
                <div class="form-group showPayement">

                </div>
                <div class="form-group">
                    <label for="note">Note</label>
                    <textarea class="form-control" name="note"></textarea>
                </div>
                <div class="form-group">
                    <label for="amount">Amount <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span id="basic-addon1" class="input-group-text">৳</span>
                        </div>
                        <input type="number" name="amount" id="amount" step="0.01" class="form-control">
                    </div>
                    <span class="amount_type_error text-danger"></span>
                </div>
                <div class="form-group">
                    <label for="image">Image </label>
                    <div class="custom-file-">
                        <input type="file" id="image" name="image" accept="" lang="en"
                            class="custom-file-input- form-control">
                    </div>
                </div>
                <div class="form-group text-center">
                    <div class="text-danger">*Please double check before submit because after submit you can't change
                        the info</div>
                </div>
                <div class="form-group text-center">
                    <button type="submit" id="collectionBtn" class="btn w3-purple"> <i class="fas fa-save"></i> Save
                        Collection</button>
                </div>
            </form>
        </div>
    </div>



    <div class="card">
        <div class="card-header bg-info">
            <h3 class="card-title">Payment Collection History</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="paymentCollection" class="table table-bordered" style="white-space: nowrap;">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Amount</th>
                        <th>Commission</th>
                        <th>Status</th>


                    </tr>
                </thead>
                <tbody>
                    @forelse ($payments as $payment)
                    <tr>
                        <td>{{\Carbon\Carbon::parse($payment->trans_date)->format('d M, Y')}}</td>
                        <td>{{$payment->paid_amount}}</td>
                        <td>{{$payment->sr_commission_amount}}</td>
                        <td>{{$payment->status}}</td>

                    </tr>
                    @empty
                    <tr>
                        <td class="text-danger h5">No Collection Found</td>
                        <td></td>
                        <td></td>
                        <td></td>

                    </tr>

                    @endforelse

                <tfoot>
                    <tr>
                        {{-- <th>Shop ID</th> --}}
                        <th>Date</th>
                        <th>Amount</th>
                        <th>Commission</th>
                        <th>Status</th>
                    </tr>
                </tfoot>
            </table>
            {{$payments->render()}}
        </div>
        <!-- /.card-body -->
    </div>


</section>
@endsection


@push('js')
<script>
    $(function () {

    $('#-paymentCollection').DataTable({
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
    $(document).on("change",'#payment_type',function(e){
            var paymentTypeValue= $(this).val()
            if(paymentTypeValue == 'bank' || paymentTypeValue == 'mobile_bank'){
                var url = $(this).attr('data-url');
                $.ajax({
                    url:url,
                    method:"GET",
                    data:{type:paymentTypeValue},
                    success:function(res){
                        $(".showPayement").html(res);
                    }
                });
            }else{
                $(".showPayement").html('');
            }

        });

        //Amount Check
        $('#amount').on('keyup change keydown',function(e){
    var currentAmount = Number($("#current_sale").val());
    var amount = Number($(this).val());
    if (amount < 1) {
        $('#collectionBtn').attr('disabled',true);
        $('.amount_type_error').text('must be getter then 0');
    }
    if(amount > currentAmount){
        $('#collectionBtn').attr('disabled',true);
        $('.amount_type_error').text('Amount must be less then or equal ' + currentAmount );
    }

    else{
        $('#collectionBtn').attr('disabled',false);
        $('.amount_type_error').text('');
    }
})



    $('.paymentCollection').on('submit',function(e){
        var that = $(this);
        var currentAmount = Number($("#current_sale").val());
        var payment_type = that.find('#payment_type').val();
        var amount = Number(that.find('#amount').val());

        if (payment_type == '') {
            $('.payment_type_error').text('Please Select Payment Method');
            e.preventDefault();
        }

        else if(payment_type == 'bank' || payment_type == 'mobile_bank'){
            $('.payment_type_error').text('');
                var checkPTY = document.querySelector( 'input[name="payment_type_id"]:checked');
            if (!checkPTY) {
                $('.paymentTypeId').text('Please Select Payment Type');
                e.preventDefault();
            }else{
                $('.paymentTypeId').text('');
            }

            // payment_type Table info condition here
        }else{
            $('.payment_type_error').text('');
        }

        if (amount <= 0 || amount > currentAmount) {
            $('.amount_type_error').text('Amount must be less then or equal ' + currentAmount + ' or  must be getter then 0');
            e.preventDefault();
        }else{
            $('.amount_type_error').text('');
        }

        let formData = new FormData(this);
        console.log(formData);
        url = that.attr('href');
        $.ajax({
            url:url,
            method:"POST",
            data: formData,
            contentType: false,
            processData: false,
            success:function(r){
                console.log('yes')
            }
        });

    })
</script>
@endpush
