<?php

namespace App\Http\Controllers\Web\Ecommerce;

use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommerceCategory;
use App\Models\Ecommerce\EcommerceProduct;
use App\Models\PaymentType;
use App\Models\Role\Depo;
use App\Models\Role\Distributor;
// use GuzzleHttp\Psr7\Request;
use Jenssegers\Agent\Facades\Agent as DeviceAgent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;

class WelcomeController extends Controller
{
    protected $device;
    protected $minutes = 120;

    public function __construct()
    {
        $this->middleware(['redirectDashboard']);
        // $this->device = 'theme.'.config('app.theme').'.';
        if (DeviceAgent::isDesktop()) {
            //$this->device = 'theme.'.config('app.theme').'.';
        } else {
            $this->device = 'mobile.'; //mobile and tab will use
        }

    }
//For Test Function
public function productUpdate(){
        $products = EcommerceProduct::where('category_id','!=',null)->where('cat_title',null)->get();
        foreach ($products as $product){
            $product->cat_title = EcommerceCategory::find($product->category_id)->name;
            $product->save();
        }
}
//For Test Function
    public function welcome(Request $request)
    {
        if (auth()->check())
        {
            if ($request->user()->isAdmin()) {
                return redirect()->route('admin.dashboard');
            }

            if($request->user()->isFactory())
            {
                return redirect()->route('factory.dashboard');

            }
            if($request->user()->hasDepoRole())
            {
                $depo = $request->user()->depos()->first();
                return redirect()->route('depo.dashboard',$depo);
            }
            if ($request->user()->hasDistRole()) {
                $des = $request->user()->distributors()->first();
                return redirect()->route('distributor.dashboard',$des);
            }
            if ($request->user()->hasDealerRole()) {
                $dealer = $request->user()->dealers()->first();
                return redirect()->route('dealer.dashboard',$dealer);
            }
            if ($request->user()->hasAgentRole()) {
                $dealer = $request->user()->agents()->first();
                return redirect()->route('agent.dashboard',$dealer);
            }
            // return view('ecommerce.index');
        }
        else
        {
            return view('ecommerce.index');
        }
        // return view($this->device . 'ecommerce.index');
    }


    public function getUpazilaByDistributor(Distributor $distributor)
    {
        return $distributor->district->thanas;
    }
    public function getDistrictByDepo(Depo $depo)
    {
        return $depo->division->districts;
    }
  public function AllPaymentType(Request $request){
    $paymentType= PaymentType::where('payment_type',$request->type)->where('active',true)->get();
    return response()->json($paymentType, 200);
}

}
