<?php

namespace App\Http\Controllers\Web\Distributor;

use App\Models\Role\Distributor;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DistributorDashboardController extends Controller
{
    public function dashboard(Distributor $distributor)
    {
        
        return view('distributor.dashboard.distributorDashboard',[
           'distributor' => $distributor
        ]);
    }
}
