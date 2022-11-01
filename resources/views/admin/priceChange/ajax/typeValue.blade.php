<label for="type_value">Type Value</label>
<select name="type_value" id="type_value" class="form-control" data-url="{{route('admin.getData',['type'=>'unit'])}}">
    <option value="">Select Type</option>
    @foreach ($type_values as $type_value)
    <option value="{{$type_value}}">{{ucfirst($type_value)}}</option>
    @endforeach
</select>
