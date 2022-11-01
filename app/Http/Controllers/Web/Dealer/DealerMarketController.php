<?php

namespace App\Http\Controllers\Web\Dealer;

use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommerceOrder;
use App\Models\Location\Market;
use App\Models\Role\Agent;
use App\Models\Role\Dealer;
use Auth;
use Illuminate\Http\Request;
use Validator;

class DealerMarketController extends Controller
{
    public function allMarkets(Dealer $dealer, Request $request)
    {
        menuSubmenu('dashboard', 'allMarkets');

        $markets = $dealer->markets()->orderBy('name')->paginate(1000);
        $agents = $dealer->agents()->orderBy('name')->get();

        return view('dealer.markets.allMarkets', [
            'dealer' => $dealer,
            'markets' => $markets,
            'agents' => $agents,

        ]);
    }

    public function addNewMarketPost(Dealer $dealer, Request $request)
    {
        $validation = Validator::make($request->all(), [

            "name" => "required|min:3|max:255",
            'name_bn' => "required|min:3|max:255",
            'agent' => 'required|exists:agents,id',

        ]);

        if ($validation->fails()) {
            return back()
                ->withErrors($validation)
                ->withInput()
                ->with('error', 'Please, Fillup the form correctly.');
        }

        $agent = Agent::find($request->agent);
        if ($agent and ($agent->dealer_id == $dealer->id)) {
            $market = new Market;

            $market->name = ['en' => $request->name, 'bn' => $request->name_bn];
            $market->depo_id = $agent->depo_id;
            $market->distributor_id = $agent->distributor_id;
            $market->dealer_id = $agent->dealer_id;
            $market->agent_id = $agent->id;

            $market->division_id = $agent->division_id;
            $market->district_id = $agent->district_id;
            $market->upazila_id = $agent->upazila_id;
            $market->active = $request->active ? true : false;
            $market->addedby_id = Auth::id();
            $market->save();

            return back()->with('success', "New Market Successfully Created.");
        }
    }

    public function marketEdit(Dealer $dealer, Request $request, Market $market)
    {
        menuSubmenu('dashboard', 'allMarkets');

        $agents = $dealer->agents()->orderBy('name')->get();

        return view('dealer.markets.marketEdit', [
            'dealer' => $dealer,
            'market' => $market,
            'agents' => $agents,
        ]);
    }

    public function marketEditPost(Request $request, Dealer $dealer, Market $market)
    {
        $validation = Validator::make($request->all(), [

            "name" => "required|min:3|max:255",
            'name_bn' => "required|min:3|max:255",
            'agent' => 'required|exists:agents,id',

        ]);

        if ($validation->fails()) {
            return back()
                ->withErrors($validation)
                ->withInput()
                ->with('error', 'Please, Fillup the form correctly.');
        }

        if ($market->agent_id != $request->agent) {
            $agent = Agent::find($request->agent);
            if ($agent and ($agent->dealer_id == $dealer->id)) {
                $market->agent_id = $agent->id;
            }
        }

        $market->name = ['en' => $request->name, 'bn' => $request->name_bn];
        $market->active = $request->active ? true : false;
        $market->editedby_id = Auth::id();
        $market->save();

        return back()->with('success', "Market Successfully Updated.");
    }
    public function allShops(Dealer $dealer, Request $request)
    {
        $type = $request->type;
        if ($type == 'active') {
            $shops = $dealer->shops()->where('active', true)->paginate(100);
            menuSubmenu('shops', 'activeShops');
        } elseif ($type == 'inactive') {
            menuSubmenu('shops', 'activeShops');
            $shops = $dealer->shops()->where('active', false)->paginate(100);
        } else {
            menuSubmenu('shops', 'inActiveShops');
            $shops = $dealer->shops()->paginate(100);
        }

        return view('dealer.shops.shops', compact('shops', 'dealer', 'type'));
    }
    public function orders(EcommerceOrder $order, Request $request, Dealer $dealer)
    {

        menuSubmenu('orders', 'orders');
        if ($request->type == 'all') {
            menuSubmenu('orders', 'allOrders');
            $type = "all";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', '<>', 'temp')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'pending') {
            menuSubmenu('orders', 'pendingOrders');
            $type = "pending";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'pending')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'confirmed') {
            menuSubmenu('orders', 'confirmedOrders');
            $type = "confirmed";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'confirmed')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'processing') {
            menuSubmenu('orders', 'processingOrders');
            $type = "processing";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'processing')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'shipped') {
            menuSubmenu('orders', 'shippedOrders');
            $type = "shipped";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'shipped')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'collected') {
            menuSubmenu('orders', 'collectedOrders');
            $type = "collected";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'collected')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'delivered') {
            menuSubmenu('orders', 'deliveredOrders');
            $type = "delivered";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'delivered')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'cancelled') {
            menuSubmenu('orders', 'cancelledOrders');
            $type = "cancelled";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'cancelled')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'returned') {
            menuSubmenu('orders', 'returnedOrders');
            $type = "pending";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'returned')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } elseif ($request->type == 'undelivered') {
            menuSubmenu('orders', 'undeliveredOrders');
            $type = "undelivered";
            $orders = $order->where('dealer_id',$dealer->id)->latest()->where('order_status', 'undelivered')->with('items', 'orderForUser', 'orderByAgent', 'orderForSource')->paginate(20);
        } else {
            return redirect()->back();
        }
        return view('dealer.orders.orders', compact('type','dealer','orders'));

    }
    public function viewOrder(EcommerceOrder $order, Dealer $dealer)
    {
        return view('dealer.orders.viewOrders',compact('order','dealer'));
    }
}
