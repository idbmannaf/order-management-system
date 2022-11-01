@extends('admin.layouts.adminMaster')
@section('title')
    SR Location List
@endsection
@push('css')
<style>

</style>
@endpush

@section('content')

<div class="card">
    <div class="card-header w3-purple h3">
        {{ $agent->name }} Location List
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
            @include('admin.roles.sr.srInfo')
            </div>
            <div class="col-md-6">
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered table-sm table-striped">
                <thead>
                    <tr>
                        <th>Date Time</th>
                        <th>Latitude</th>
                        <th>Longitude </th>
                        {{-- <th>Location </th> --}}
                        <th>Action </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($locations as $location)
                        <tr>
                            <td>{{ $location->created_at }}</td>
                            <td>{{ $location->lat }}</td>
                            <td>{{ $location->lng }}</td>
                            {{-- <td>{{ $location->location }}</td> --}}
                            <td>
                                <a class="btn border" href="https://www.google.com/maps?q={{ $location->lat }}+{{ $location->lng }}"><i class="fas fa-map-marked-alt"></i> map</a>
                                <a href="#"  class="btn btn-primary" data-toggle="modal" data-target="#map{{$location->id}}"><i class="fas fa-eye"></i></a>
                            </td>
                        </tr>
                        {{-- Modal Start --}}
                        <div class="modal fade" id="map{{$location->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalLabel">Map ViewL: {{$location->created_at}}</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <div class="modal-body">

                                    <iframe
                                      width="100%"
                                      height="400"
                                      frameborder="0"
                                      scrolling="no"
                                      marginheight="0"
                                      marginwidth="0"
                                      src="https://maps.google.com/maps?q={{ $location->lat }}+{{ $location->lng }}&hl=es&z=14&amp;output=embed"
                                     >
                                     </iframe>
                                </div>

                              </div>
                            </div>
                          </div>
                        {{-- Modal End --}}
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="">
            {{ $locations->links() }}
        </div>
    </div>
</div>


@endsection


@push('js')
<script>
</script>
@endpush
