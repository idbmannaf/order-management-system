<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <link rel="shortcut icon" href="{{ asset('img/favicon.ico') }}" type="image/x-icon">
    <link rel="icon" href="{{ asset('img/favicon.ico') }}" type="image/x-icon">


    <title>{{ env('APP_NAME') }}</title>

    <link rel="stylesheet" href="{{ asset('assets/sweetalert2/dist/sweetalert2.css') }}">

    <!-- SweetAlert2 -->
    {{-- <link rel="stylesheet" href="{{ asset('cp/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') }}"> --}}

    <script src="{{ asset('assets/sweetalert2/dist/sweetalert2.min.js') }}"></script>
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="{{ asset('cp/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') }}">

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="{{ asset('cp/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('cp/dist/css/adminlte.min.css') }}">

    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="{{ asset('cp/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') }}">
    <link rel="stylesheet" href="{{ asset('cp/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('cp/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('cp/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>
    <!-- Google Font: Source Sans Pro -->
    <link href="{{ asset('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700') }}"
        rel="stylesheet">



    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
    <link rel="stylesheet" href="{{ asset('css/w3.css') }}">


    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Scripts -->
    {{-- <script>
        window.Laravel = <?php echo json_encode([
    'csrfToken' => csrf_token(),
]); ?>
    </script> --}}

    <style>
        .nav-legacy.nav-sidebar .nav-item>.nav-link {

            border-top: 1px solid #dfdfdf !important;
        }


        .content-wrapper {
            background-color: #f0f8ff !important;
        }

        .dataTables_empty {
            color: red;
            font-weight: 700;

        }

    </style>


    @stack('css')




</head>

<body class="hold-transition sidebar-mini layout-fixed text-sm ">

    <div class="wrapper" data-url="{{ route('sr.setAgentLocation', ['agent' => $sr]) }}">


        @include('sr.layouts.agentHeader')
        @include('sr.layouts.agentLeftsidebar')



        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

                    <form action="">
                        <div class="user-location-set" data-url="{{ route('sr.setAgentLocation', ['agent' => $sr]) }}"></div>
                        <input type="hidden" id="lati" class="form-control" value="">
                        <input type="hidden" id="long" class="form-control" value="">
                        <input type="hidden" id="output_distance" class="form-control" value="0">
                    </form>
                    </form>
            @yield('content')

        </div>


        @include('admin.layouts.adminFooter')

    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="{{ asset('cp/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('cp/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- overlayScrollbars -->
    <script src="{{ asset('cp/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') }}"></script>
    <script src="{{ asset('cp/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('cp/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('cp/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('cp/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('cp/plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"
        integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('cp/dist/js/adminlte.min.js') }}"></script>

    <script>
        @if (session('success'))
            Swal.fire({
            position: 'top-center',
            icon: 'success',
            title: "{{ session('success') }}",
            showConfirmButton: false,
            timer: 1500
            });
        @elseif (session('warning'))
            Swal.fire({
            position: 'top-center',
            icon: 'warning',
            title: "{{ session('warning') }}",
            showConfirmButton: false,
            timer: 1500
            });
        @elseif (session('error'))
            Swal.fire({
            position: 'top-center',
            icon: 'error',
            title: "{{ session('error') }}",
            showConfirmButton: false,
            timer: 1500
            });
        @endif
    </script>


 <script>
 var geo = navigator.geolocation;
            $(function() {
                (function latest() {
                    var latApp = getCookieData('lat');
                    var longApp = getCookieData('long');

                    $latElm = $('#lat1');
                    $longElm = $('#lng1');

                    if (latApp == false || longApp == false) {
                        if (geo) {
                            geo.watchPosition(updateLocation);
                        } else {
                            alert("Oops, Geolocation API is not supported");
                        }
                    } else {
                        $("#lati").val(latApp);
                        $("#long").val(longApp);
                        $latElm.val(latApp);
                        $longElm.val(longApp);
                    }

                    function updateLocation(position) {
                        $latElm.val(position.coords.latitude);
                        $longElm.val(position.coords.longitude);
                        $("#lati").val(position.coords.latitude);
                        $("#long").val(position.coords.longitude);
                    }
                    var lat = $("#lati").val();
                    var long = $("#long").val();
                    var url = $(".user-location-set").attr('data-url');
                    var urls = url + '?lat=' + lat + '&lng=' + long;
                    $.ajax({
                            url: urls,
                            type: 'GET',
                            dataType: 'json',
                            cache: false,
                        })
                        .done(function(data) {
                            // $(".wall-right-suggested").empty().append(data);
                        })
                        .fail(function() {
                            // console.log("error");
                        })
                        .then(function() {
                            setTimeout(latest, 900);
                        });

                })
                ();

                function getCookieData(name) {
                    var patrn = new RegExp("^" + name + "=(.*?);"),
                        patr2 = new RegExp(" " + name + "=(.*?);");
                    if (match = (document.cookie.match(patrn) || document.cookie.match(patr2))) {
                        return match[1];
                    } else {
                        return false;
                    }
                }
            });
        </script>
    @stack('js')




</body>

</html>
