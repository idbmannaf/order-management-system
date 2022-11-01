<label for="unit_value"> Unit Value</label>
<select name="unit_value" id="unit_value" class="form-control" data-url="{{route('admin.getData',['type'=>'getResult'])}}">
    <option value="">Select Type</option>
    @foreach ($unit_values as $unit_value)
    <option value="{{$unit_value}}">{{ucfirst($unit_value)}}</option>
    @endforeach
</select>
