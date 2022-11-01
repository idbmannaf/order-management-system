@if ($product > 0)
<span class="badge badge-success">{{$product}} Product found</span>
<div class="form-group" id="purchase_price">
    <label for="purchase_price">Previous Price</label>
    <input type="number" readonly name="purchase_price" value="{{$price}}" placeholder="purchase_price" class="form-control">
</div>
<div class="form-group" id="sale_price">
    <label for="sale_price">Updated Price</label>
    <input type="number" name="sale_price" placeholder="sale_price" class="form-control">
</div>
<div class="form-group" id="submit">
    <input type="submit" class="btn btn-info" value="Update">
</div>
@else
<span class="badge badge-warning">{{$product}} Product found</span>
{{-- <span class="text-danger">No</span> --}}
@endif
