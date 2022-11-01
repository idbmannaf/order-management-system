<?php

namespace App\Http\Controllers\Sr;

use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommercePaymentCollection;
use App\Models\Role\Agent;
use App\Models\SaleCommission;
use App\Models\SrLocation;
use DB;
use Auth;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class SrDashboardController extends Controller
{

    public function srDashboard(Agent $sr, Request $request)
    {

        if ($sr->user_id != auth()->user()->id) {
            abort(401);
        } elseif ($sr->active == 0) {
            return view('mobile.agent.inactiveAgentIndex', [
                'agent' => $sr,
            ]);
        } else {
            menuSubmenu('dashboard', 'dashboard');

            $currentMonthSale = SaleCommission::where('agent_id', $sr->id)->whereMonth('tr_date', now()->month)->sum('total_price');

            $currentMonthCollection = EcommercePaymentCollection::where('agent_id', $sr->id)->where('status', 'varified')->whereMonth('created_at', now()->month)->sum('paid_amount');

            $srInfo = $sr->find($sr->id)->load('user');
            return view('sr.srDashboard', compact('sr', 'currentMonthSale', 'srInfo', 'currentMonthCollection'));
        }
    }
    public function setAgentLocation(Agent $agent, SrLocation $srLocation, Request $request)
    {
        if(!$request->lat || !$request->lng){
            return response()->json(['success'=>false]);
        }
        if ($agent->user_id == auth()->user()->id) {
            
             $srOldLocation =  SrLocation::where('agent_id', $agent->id)->whereDate('created_at', date('Y-m-d'))->whereTime('created_at', '>', Carbon::now()->subMinutes(2))->first();
                if ($srOldLocation) {
                    return response()->json([
                        'success' => false,
                    ]);
                }
            $srLocation->user_id = auth()->user()->id;
            $srLocation->agent_id = $agent->id;
            $srLocation->lat = $request->lat;
            $srLocation->lng = $request->lng;
            $srLocation->save();
            return response()->json(['success' => true]);
        } else {
            abort(401);
            return response()->json(['success' => false]);
        }
    }
    public function checkLocaion(Request $request,Client $client)
    {
        $url = url("http://poi.18gps.net/poi?lat=23.760181666666668&lon=90.41849500000002");
            $r = $client->request('GET', $url);
            $result = $r->getBody()->getContents();
            dd($result);
    }
   
}
