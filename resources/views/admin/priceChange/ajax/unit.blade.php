<label for="getUnit"> Unit</label>
<select name="unit" id="getUnit" class="form-control" data-url="{{route('admin.getData',['type'=>'unit_value'])}}">
    <option value="">Select Type</option>
    @foreach ($units as $unit)
    <option value="{{$unit}}">{{ucfirst($unit)}}</option>
    @endforeach
</select>
