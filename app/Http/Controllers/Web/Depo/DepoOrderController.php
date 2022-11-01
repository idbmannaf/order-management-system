<?php

namespace App\Http\Controllers\Web\Depo;

use App\Models\Role\Depo;
use Illuminate\Http\Request;
use App\Models\ShipmentReturn;
use App\Models\ProductReplacement;
use App\Http\Controllers\Controller;
use App\Models\ProductReplacementItem;
use App\Models\Ecommerce\EcommerceOrder;
use App\Models\Ecommerce\EcommerceSource;

class DepoOrderController extends Controller
{
    public function allOrders(Depo $depo, Request $request)
    {
        $order = EcommerceOrder::where('depo_id',$depo->id);
        if ($request->type == 'all') {
            menuSubmenu('orders', 'allOrders');
            $type = "all";
            $orders = $order->latest()->where('order_status', '<>', 'temp')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'pending') {
            menuSubmenu('orders', 'pendingOrders');
            $type = "pending";
            $orders = $order->latest()->where('order_status', 'pending')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'confirmed') {
            menuSubmenu('orders', 'confirmedOrders');
            $type = "confirmed";
            $orders = $order->latest()->where('order_status', 'confirmed')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'processing') {
            menuSubmenu('orders', 'processingOrders');
            $type = "processing";
            $orders = $order->latest()->where('order_status', 'processing')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'shipped') {
            menuSubmenu('orders', 'shippedOrders');
            $type = "shipped";
            $orders = $order->latest()->where('order_status', 'shipped')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'collected') {
            menuSubmenu('orders', 'collectedOrders');
            $type = "collected";
            $orders = $order->latest()->where('order_status', 'collected')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'delivered') {
            menuSubmenu('orders', 'deliveredOrders');
            $type = "delivered";
            $orders = $order->latest()->where('order_status', 'delivered')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'cancelled') {
            menuSubmenu('orders', 'cancelledOrders');
            $type = "cancelled";
            $orders = $order->latest()->where('order_status', 'cancelled')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'returned') {
            menuSubmenu('orders', 'returnedOrders');
            $type = "pending";
            $orders = $order->latest()->where('order_status', 'returned')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } elseif ($request->type == 'undelivered') {
            menuSubmenu('orders', 'undeliveredOrders');
            $type = "undelivered";
            $orders = $order->latest()->where('order_status', 'undelivered')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->withCount('items','items as total_items')->paginate(20);
        } else {
            return redirect()->back();
        }
//        menuSubmenu('order', 'allOrders');
//        $orders = EcommerceOrder::where('depo_id',$depo->id)->where('order_status','<>', 'temp')->with('items','orderForUser','orderByAgent')->latest()->paginate(20);

        return view('depo.ecommerce.order.index',[
            'orders' => $orders,
            'depo' => $depo,
            'type'=>$type
        ]);
    }
    // public function allOrdersSearch(Request $request)
    // {
    //     // return $request->depo;
    //     $query= $request->q;
    //     // return $query;
    //     $orders = EcommerceOrder::where('depo_id',$request->depo)
    //     ->where('order_status','<>', 'temp')
    //     ->where('id', 'like', '%' . $query . '%')
    //     ->orWhereHas('orderByAgent', function($q) use ($query){
    //         $q->where('name', 'like', '%' . $query . '%');
    //     })
    //     ->orWhereHas('orderForUser', function($q) use ($query){
    //         $q->where('name', 'like', '%' . $query . '%');
    //     })
    //     ->with('items','orderForUser','orderByAgent')
    //     ->latest()
    //     ->get();
    //     $view = view('depo.ecommerce.order.parts.orderTableBody',compact('orders'));
    //     // dd($orders);
    //     return response()->json([
    //         'orders'=>$view
    //     ]);
    // }
    public function orderDetails(Depo $depo,EcommerceOrder $order)
    {
        return view('depo.ecommerce.order.updateOrder',[
            'order' => $order,
            'depo' => $depo
        ]);
    }

    public function orderOrderStatusUpdate(Depo $depo,EcommerceOrder $order, Request $request)
    {
        $this->validate($request,[
            'order_status' => 'required',
        ]);

        $req = $request->all();

        $price = 0;
        $collection  = 0;
        if ($order->order_status == 'pending') {
            foreach ($order->items as $item) {
                $qty = $req['order_qty_'.$item->id];
                if ($qty && $qty > 0) {
                    if ($item->product->pice) {
                        if ($item->product->pice > $qty) {
                            $item->bonus = 0;
                        }
                        $bonus = ($item->product->bonus * $qty) / $item->product->pice;
                        $item->bonus = (int)$bonus;
                    } else {
                        $item->bonus = 0;
                    }
                    $item->total_quantity = $qty;
                    $item->total_price = round($qty*$item->unit_price,2);
                    $shop_commission = $item->source->commissionByProduct($item->product_id);
                    $shop_payment = round($item->total_price - (($item->total_price/100)*$shop_commission), 2);
                    $item->collection_amount = $shop_payment;
                    $item->save();

                    $price = $price+$item->total_price;
                    $collection = $collection+$item->collection_amount;
                }else{
                    $item->delete();
                }
            }
            $order->total_price = $price;
            $order->total_collection_amount = $collection;
            $order->save();
        }

        $order->order_status = $request->order_status;
        if ($request->order_status == 'pending') {
            $order->pending_at = now();
        }
        if ($request->order_status == 'confirmed') {
            $order->confirmed_at = now();
        }
        if ($request->order_status == 'processing') {
            $order->processing_at = now();
        }
        if ($request->order_status == 'ready_to_ship') {
            $order->ready_to_ship_at = now();
        }
        if ($request->order_status == 'shipped') {
            $order->shipped_at = now();
        }
        if ($request->order_status == 'collected') {
            $order->collected_at = now();
        }
        if ($request->order_status == 'delivered') {
            $order->delivered_at = now();
        }
        if ($request->order_status == 'cancelled') {
            $order->cancelled_at = now();
        }
        if ($request->order_status == 'returned') {
            $order->returned_at = now();
        }
        if ($request->order_status == 'undelivered') {
            $order->undelivered_at = now();
        }
        $order->save();

        return redirect()->back()->with('success', "Order status is changed to {$order->order_status} !");
    }

    public function shops(Depo $depo, Request $request)
    {
        menuSubmenu('shops',$request->type."Shops");
        if ($request->type == 'active') {
            $shops = EcommerceSource::where('depo_id',$depo->id)->with('agent','smo')->orderBy('agent_id')->where('active',true)->latest()->get();
        }elseif ($request->type == 'inactive') {
            $shops = EcommerceSource::where('depo_id',$depo->id)->with('agent','smo')->orderBy('agent_id')->where('active',false)->latest()->get();
        }else{
            $shops = EcommerceSource::where('depo_id',$depo->id)->with('agent','smo')->orderBy('agent_id')->latest()->get();
        }
//        $shops = EcommerceSource::where('depo_id',$depo->id)->latest()->paginate(50);


        // dd($shops);
        return view('depo.ecommerce.shop.index', [
            'shops' => $shops,
            'depo'=>$depo,
            'type'=>$request->type
        ]);
    }


    public function srShops(Depo $gm)
    {
        $shops = EcommerceSource::where('depo_id',$gm->id)->orderBy('agent_id')->latest()->paginate(50);
        return view('depo.ecommerce.shop.index', [
            'shops' => $shops,
            'depo'=>$gm
        ]);
    }

    public function show(Depo $depo, EcommerceOrder $order)
    {
        return view('depo.ecommerce.order.updateOrder',[
            'order' => $order,
             'depo'=>$depo
        ]);
    }

    public function returnStatusUpdate(ShipmentReturn $return, $status)
    {

        if ($status == 'accepted') {
            // dd($return);
            $return->return_status = $status;
            $return->approved_at = now();
            $return->approvedby_id = auth()->user()->id;
            $return->editedby_id = auth()->user()->id;
            $return->save();

            $replacement = new ProductReplacement;
            $replacement->shipment_return_id    = $return->id;
            $replacement->shipment_id           = $return->shipment_id;
            $replacement->order_id              = $return->order_id;
            $replacement->agent_id              = $return->agent_id;
            $replacement->source_id             = $return->source_id;
            $replacement->mobile                = $return->mobile;
            $replacement->address               = $return->address;
            $replacement->total_shipment_price  = $return->total_shipment_price;
            $replacement->total_return_price    = $return->total_return_price;
            $replacement->save();

            $replaceAmount = 0;

            foreach ($return->items as $item) {
                $item->confirmed = 1;
                $item->save();

                if ($item->return_type == 'refund') {


                }else{
                    $replaceItem = new ProductReplacementItem;
                    $replaceItem->product_replacement_id = $replacement->id;
                    $replaceItem->shipment_return_id = $return->id;
                    $replaceItem->shipment_return_item_id = $item->id;
                    $replaceItem->shipment_id = $item->shipment_id;
                    $replaceItem->shipment_item_id = $item->shipment_item_id;
                    $replaceItem->order_id = $item->order_id;
                    $replaceItem->order_item_id = $item->order_item_id;
                    $replaceItem->product_id = $item->product_id;
                    $replaceItem->product_name = $item->product_name;
                    $replaceItem->seller_source_id = $item->seller_source_id;
                    $replaceItem->buyer_source_id = $item->buyer_source_id;
                    $replaceItem->depo_id = $item->depo_id;
                    $replaceItem->distributor_id = $item->distributor_id;
                    $replaceItem->dealer_id = $item->dealer_id;
                    $replaceItem->agent_id = $item->agent_id;
                    $replaceItem->division_id = $item->division_id;
                    $replaceItem->district_id = $item->district_id;
                    $replaceItem->upazila_id = $item->upazila_id;
                    $replaceItem->upazila_id = $item->upazila_id;
                    $replaceItem->market_id = $item->market_id;
                    $replaceItem->return_reason = $item->return_reason;
                    $replaceItem->order_quantity = $item->order_quantity;
                    $replaceItem->shipment_quantity = $item->shipment_quantity;
                    $replaceItem->return_quantity = $item->return_quantity;
                    $replaceItem->replace_quantity = $item->return_quantity;
                    $replaceItem->unit_price = $item->unit_price;
                    $replaceItem->shipment_amount = $item->shipment_amount;
                    $replaceItem->return_amount = $item->return_amount;
                    $replaceItem->replace_amount = round(($replaceItem->replace_quantity*$replaceItem->unit_price), 2);
                    $replaceItem->return_at = $item->return_at;
                    $replaceItem->save();

                    $replaceAmount = $replaceAmount+$replaceItem->replace_amount;
                }
            }
            if ($replacement->items->count() > 0) {
                $replacement->total_replacement_price = $replaceAmount;
                $replacement->save();
            } else {
                $replacement->delete();
            }

        }
        if ($status == 'rejected') {
            $return->return_status = $status;
            $return->editedby_id = auth()->user()->id;
            $return->save();
        }

        return redirect()->back()->with('success', 'Shipment Return status is updated.');
    }

    public function returnList(Depo $depo,ShipmentReturn $return, Request $request)
    {
        menuSubmenu('returns', 'allReturns');
        $type = $request->type;
        menuSubmenu('returns',$type."Returns");
        $agent_ids=  $depo->sr()->pluck('id');
        if ($type == 'pending') {
            $returns = ShipmentReturn::whereIn('agent_id',$agent_ids)->with('source','sr')->withCount('items','items as total_items')->where('return_status','pending')->latest()->paginate(50);
        }elseif($type == 'accepted'){
            $returns = ShipmentReturn::whereIn('agent_id',$agent_ids)->with('source','sr')->withCount('items','items as total_items')->where('return_status','accepted')->latest()->paginate(50);
        }
        elseif($type == 'itemWise'){
            $returns = ShipmentReturn::whereIn('agent_id',$agent_ids)->with('source','sr')->withCount('items','items as total_items')->where('return_status','itemWise')->latest()->paginate(50);
        }
        elseif($type == 'rejected'){
            $returns = ShipmentReturn::whereIn('agent_id',$agent_ids)->with('source','sr')->withCount('items','items as total_items')->where('return_status','rejected')->latest()->paginate(50);
        }
        else{
            $returns = ShipmentReturn::whereIn('agent_id',$agent_ids)->with('source','sr')->withCount('items','items as total_items')->latest()->paginate(50);
        }
        // $returns = $return->latest()->paginate(50);
        return view('depo.ecommerce.return.index',[
            'returns' => $returns,
            'depo' => $depo,
            'type'=> $type
        ]);
    }
}
