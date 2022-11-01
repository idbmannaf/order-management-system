<label for="type">Type</label>
<select name="type" id="type" class="form-control" data-url="{{route('admin.getData',['type'=>'type_value'])}}">
    <option value="">Select Type</option>
    @foreach ($types as $type)
    <option value="{{$type}}">{{ucfirst($type)}}</option>
    @endforeach
</select>
