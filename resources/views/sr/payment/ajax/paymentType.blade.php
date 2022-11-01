<div>
    @foreach ($paymentTypes as $type)
<div>
    <label for="payment_type_id_{{$type->id}}"> <input type="radio" name="payment_type_id" id="payment_type_id_{{$type->id}}" class="payment_type_id" value="{{$type->id}}"> {{$type->account_number}}({{$type->account_name}})</label>
</div>
@endforeach
</div>
<span class="paymentTypeId text-danger"></span>


