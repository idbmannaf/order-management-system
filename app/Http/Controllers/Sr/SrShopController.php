<?php

namespace App\Http\Controllers\Sr;

use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommerceCart;
use App\Models\Ecommerce\EcommerceOrder;
use App\Models\Ecommerce\EcommerceOrderItem;
use App\Models\Ecommerce\EcommercePaymentCollection;
use App\Models\Ecommerce\EcommerceProduct;
use App\Models\Ecommerce\EcommerceSource;
use App\Models\Role\Agent;
use App\Models\SaleCommission;
use App\Models\Shipment;
use App\Models\ShipmentItem;
use App\Models\ShipmentReturn;
use App\Models\ShipmentReturnItem;
use App\Models\User;
use App\Models\WebsiteBalance;
use DB;
use Auth;
use Illuminate\Http\Request;

class SrShopController extends Controller
{

    public function allShops(Agent $sr, Request $request)
    {
        $type = $request->type;
        if ($type == 'all') {
            menuSubmenu('shops', 'allShops');
            $shops = $sr->sources;
        } elseif ($type == 'active') {
            menuSubmenu('shops', 'activeShops');
            $shops = $sr->sources()->where('active', true)->get();
        } elseif ($type == 'inactive') {
            menuSubmenu('shops', 'inActiveShops');
            $shops = $sr->sources()->where('active', false)->get();
        }
        return view('sr.shops.allShops', compact('sr', 'shops', 'type'));
    }

    public function newShop(Agent $sr)
    {
        return view('sr.shops.newShop', compact('sr'));
    }
    public function saveShop(Agent $sr, Request $request)
    {
        $request->validate(
            [
                'name' => 'required|max:255',
                'owner_name' => 'required|string|max:255',
                'description' => 'nullable',
                'address' => 'required',
                'mobile' => 'required|unique:ecommerce_sources,mobile',
                'type' => 'required',
                'due_amount' => 'nullable',
            ]
        );
        $shop = new EcommerceSource;
        $shop->user_id = Auth::id();
        $shop->addedby_id = Auth::id();
        $shop->mobile = $request->mobile;
        $shop->name = $request->name;
        $shop->owner_name = $request->owner_name;
        $shop->description = $request->description;
        $shop->type = $request->type;
        $shop->address = $request->address;
        $shop->initial_amount = $request->due_amount ?? 00;
        $shop->due_amount = $request->due_amount ?? 00;
        $shop->current_sale = $request->due_amount ?? 00;
        $shop->agent_id = $sr->id;
        $shop->dealer_id = $sr->dealer->id;
        $shop->depo_id = $sr->depo->id;
        $shop->active = 0;
        $shop->save();
        return redirect()->back()->with('success','Shop Successfully Added');
    }
    public function editShop(Agent $sr, Request $request)
    {
        $shop= EcommerceSource::find($request->shop);
        return view('sr.shops.editShops',compact('shop','sr'));
    }
    public function updateShop(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        if ($shop->active) {
            return redirect()->back()->with('warning','This Shop Already Actived. So, You are not able to edit/update this shop');
        }
        if ($shop->mobile == $request->mobile) {
            $request->validate(
                [
                    'name' => 'required|max:255',
                    'owner_name' => 'required|string|max:255',
                    'description' => 'nullable',
                    'address' => 'required',
                    'type' => 'required',
                    'due_amount' => 'nullable',
                ]
            );
        }else{
            $request->validate(
                [
                    'name' => 'required|max:255',
                    'owner_name' => 'required|string|max:255',
                    'description' => 'nullable',
                    'address' => 'required',
                    'mobile' => 'required|unique:ecommerce_sources,mobile',
                    'type' => 'required',
                    'due_amount' => 'nullable',
                ]
            );
        }

        $shop->user_id = Auth::id();
        $shop->addedby_id = Auth::id();
        $shop->mobile = $request->mobile;
        $shop->name = $request->name;
        $shop->owner_name = $request->owner_name;
        $shop->description = $request->description;
        $shop->type = $request->type;
        $shop->address = $request->address;
        $shop->initial_amount = $request->due_amount ?? 00;
        $shop->due_amount = $request->due_amount ?? 00;
        $shop->current_sale = $request->due_amount ?? 00;
        $shop->agent_id = $sr->id;
        $shop->dealer_id = $sr->dealer->id;
        $shop->depo_id = $sr->depo->id;
        $shop->active = 0;
        $shop->save();
        return redirect()->back()->with('success','Shop Successfully Updated');
    }
    public function destroyShop(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        if ($shop->active) {
            return redirect()->back()->with('warning','This Shop Already Actived. So, You are not able to Delete this shop');
        }
        $shop->delete();
        return redirect()->back()->with('success','Shop Successfully Deleted');
    }

    public function shopWiseOrders(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        $orders= EcommerceOrder::where('source_id',$shop->id)->orderBy('id','DESC')->paginate(50);
        return view('sr.shops.shopOrders',compact('sr','shop','orders'));
    }
    public function viewShopSingleOrder(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        $order = EcommerceOrder::find($request->order);

        // dd($order->shipments->load('items'));
        return view('sr.shops.shopSingelOrder',compact('sr','shop','order'));
    }
    public function deleteShopSingleOrder(Agent $sr, Request $request)
    {
        $order = EcommerceOrder::find($request->order);
        if ($order->order_status != 'pending') {
            return redirect()->back()->with('warning','Your are not able to delete this order');
        }
        $order->items()->delete();
        $order->delete();
        return redirect()->back()->with('success','Order Deleted Successfully');

    }
    public function updateItemQuantity(Agent $sr, Request $request)
    {
        $order = EcommerceOrder::find($request->order);
        $qty = $request->qty;
        $shop = EcommerceSource::find($request->shop);
        $orderItem = $order->items()->where('id', $request->item)->first();
        $product = EcommerceProduct::find($orderItem->product_id);

        if ($order->order_status != 'pending') {
            return redirect()->back()->with('warning','Your are not able to edit or update this order item');
        }
        $unitPrice = $product->priceByQuantity($qty);


        $orderItem->total_quantity = $qty;
        $orderItem->total_price = $unitPrice * $qty;
        $shop_commission = $shop->commissionByProduct($orderItem->product_id);
        $shop_payment = round($orderItem->total_price - (($orderItem->total_price / 100) * $shop_commission), 2);
        $orderItem->collection_amount = $shop_payment;
        if ($product->pice) {
            if ($product->pice > $qty) {
                $orderItem->bonus = 0;
            }
            $bonus = ($product->bonus * $qty) / $product->pice;
            $orderItem->bonus = (int)$bonus;
        } else {
            $orderItem->bonus = 0;
        }
        $orderItem->save();


        $totalCollection = $order->items()->sum('collection_amount');
        $totalPrice = $order->items()->sum('total_price');
        $order->total_price = $totalPrice;
        $order->total_collection_amount = $totalCollection;
        $order->save();

        return response()->json([
            'totalPrice'=>$orderItem->collection_amount,
            'bonus'=>$orderItem->bonus,
            'quantity' =>$orderItem->total_quantity,
            'totalQty'=>$orderItem->total_quantity + $orderItem->bonus,
        ]);

    }

    public function shipmentReturn(Agent $sr, Request $request)
    {
        $order= EcommerceOrder::find($request->order);
        $shop= EcommerceSource::find($request->shop);
        $shipment= Shipment::with('items')->where('id',$request->shipment)->first();
        return view('sr.shops.return.retunOrders',compact('order','shop','shipment','sr'));
    }
    public function orderShipmentUpdate(Agent $sr, Request $request)
    {
        $order = EcommerceOrder::find($request->order);
        $shipment = Shipment::find($request->shipment);

        if ($request->type == 'collected') {
            $shipment->order_status = 'collected';
            $shipment->collected_at = now();
            $shipment->save();

            $order->order_status = 'collected';
            $order->collected_at = $shipment->collected_at;
            $order->save();
        }elseif($request->type == 'delivered') {
            $shipment->order_status = 'delivered';
            $shipment->delivered_at = now();
            $shipment->save();

            $order->order_status = 'delivered';
            $order->delivered_at = $shipment->delivered_at;
            $order->save();

            $totalSrCommission = 0;
            $totalShopCommission = 0;
            $totalSysBal = 0;

            foreach ($shipment->items as $item) {
                $commission = new SaleCommission;
                $commission->order_id       = $item->order_id;
                $commission->order_item_id  = $item->order_item_id;
                $commission->shipment_id    = $item->shipment_id;
                $commission->shipment_item_id = $item->id;
                $commission->agent_id       = $item->agent_id;
                $commission->source_id      = $item->seller_source_id;
                $commission->total_price    = $item->shipment_amount;
                $commission->collection_amount    = $item->collection_amount;
                $commission->product_id      = $item->product_id;
                $commission->delivered_quantity = $item->shipment_quantity;

                $commission->shop_commission = $item->source->commissionByProduct($item->product_id);
                $commission->shop_monthly_target = $item->source->monthly_target;
                $commission->shop_amount = round(($commission->total_price / 100) * $commission->shop_commission, 2);

                $commission->sr_commission = $item->agent->commissionByProduct($item->product_id);
                $commission->sr_monthly_target = $item->agent->monthly_target;
                $commission->sr_amount = round((($commission->total_price - $commission->shop_amount) / 100) * $commission->sr_commission, 2);
                $commission->system_balance = $commission->total_price - ($commission->sr_amount + $commission->shop_amount);

                $commission->tr_date = now();
                $commission->save();

                $totalSrCommission = round($totalSrCommission + $commission->sr_amount, 2);
                $totalShopCommission = round($totalShopCommission + $commission->shop_amount, 2);
                $totalSysBal = $totalSysBal + $commission->system_balance;
            }

            $orderByAgent = $shipment->orderByAgent;
            $orderForSource = $shipment->orderForSource;

            $orderByAgent->total_sale = $orderByAgent->total_sale + $shipment->total_collection_amount;
            $orderByAgent->current_sale = $orderByAgent->current_sale + $shipment->total_collection_amount;
            $orderByAgent->total_sale_commission = $orderByAgent->total_sale_commission + $totalSrCommission;
            $orderByAgent->current_sale_commission = $orderByAgent->current_sale_commission + $totalSrCommission;
            $orderByAgent->save();

            $orderForSource->total_sale = $orderForSource->total_sale + $shipment->total_collection_amount;
            $orderForSource->current_sale = $orderForSource->current_sale + $shipment->total_collection_amount;
            $orderForSource->total_sale_commission = $orderForSource->total_sale_commission + $totalShopCommission;
            $orderForSource->current_sale_commission = $orderForSource->current_sale_commission + $totalShopCommission;
            $orderForSource->save();

            $system = WebsiteBalance::first();
            $system->system_balance = $system->system_balance + $totalSysBal;
            $system->save();

        }else{
            return redirect()->back()->with('error','Something Worng');
        }
        return redirect()->back()->with('success',"Order {$request->type} Successfully");



    }
    public function shipmentReturnSave(Agent $sr, Request $request)
    {

        // dd($request->all());
        $temp = array_filter($request->quantities, function($value){
            return $value > 0;
        });
        if (count($temp) <= 0) {
           return redirect()->back()->with('error','Please Input Return Quantity');
        }


        $order = EcommerceOrder::find($request->order);

        $shipment = Shipment::find($request->shipment);
        $returnReq = new ShipmentReturn;
        $returnReq->shipment_id = $shipment->id;
        $returnReq->order_id = $order->id;
        $returnReq->agent_id = $order->agent_id;
        $returnReq->source_id = $order->source_id;
        $returnReq->mobile = $order->mobile;
        $returnReq->address = $order->address;
        $returnReq->total_quantity = $order->total_quantity;
        $returnReq->total_price = $shipment->total_price;
        $returnReq->total_shipment_price = $shipment->shipment_price ?? 0;
        $returnReq->reason = $request->reason ?? '';
        $returnReq->return_status = 'pending';
        $returnReq->return_at = now();
        $returnReq->agent_id = $sr->id;
        $returnReq->shipped_at = $shipment->shipped_at;
        $returnReq->addedby_id = auth()->user()->id;
        $returnReq->save();

        $totalReturnAmount = 0;
        foreach ($request->quantities as $key => $value) {
            if ($value) {
                $shipmentItem = ShipmentItem::Find($key);
                if ($shipment->id == $shipmentItem->shipment_id) {
                    $returnReqItem = new ShipmentReturnItem;
                    $returnReqItem->shipment_return_id = $returnReq->id;
                    $returnReqItem->shipment_id = $shipment->id;
                    $returnReqItem->shipment_item_id = $shipmentItem->id;
                    $returnReqItem->order_id = $order->id;
                    $returnReqItem->order_item_id = $shipmentItem->order_item_id;
                    $returnReqItem->product_id = $shipmentItem->product_id;
                    $returnReqItem->product_name = $shipmentItem->product_name;
                    $returnReqItem->seller_source_id = $shipmentItem->seller_source_id;
                    $returnReqItem->buyer_source_id = $shipmentItem->buyer_source_id;
                    $returnReqItem->depo_id = $shipmentItem->depo_id;
                    $returnReqItem->distributor_id = $shipmentItem->distributor_id;
                    $returnReqItem->dealer_id = $shipmentItem->dealer_id;
                    $returnReqItem->agent_id = $shipmentItem->agent_id;
                    $returnReqItem->market_id = $shipmentItem->market_id;
                    $returnReqItem->return_type = $request->return_types[$key] ?? null;
                    $returnReqItem->return_reason = $request->reasons[$key] ?? null;
                    $returnReqItem->order_quantity = $shipmentItem->total_quantity;
                    $returnReqItem->shipment_quantity = $shipmentItem->shipment_quantity;
                    $returnReqItem->return_quantity = $value;
                    $returnReqItem->unit_price = $shipmentItem->unit_price;
                    $returnReqItem->shipment_amount = $shipmentItem->shipment_amount ?? 0;
                    $returnReqItem->return_amount = floatval($value) * $shipmentItem->unit_price;
                    $returnReqItem->unit_discount = $shipmentItem->unit_discount;
                    $returnReqItem->total_discount = $shipmentItem->total_discount;
                    $returnReqItem->addedby_id = auth()->user()->id;
                    $returnReqItem->return_at = $returnReq->return_at;
                    $returnReqItem->save();
                    $totalReturnAmount = $totalReturnAmount + $returnReqItem->return_amount;
                }
                $returnReq->total_return_price = $totalReturnAmount;
                $returnReq->save();
            }
        }
        return redirect()->back()->with('success','Return Pending');

    }

    public function OrderHistory(Agent $sr,EcommerceOrder $order, Request $request)
    {
        $type= $request->type;
        menuSubmenu('orders',$type."Orders");
        if ($request->type == 'all') {
            $type = "all";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', '<>', 'temp')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'pending') {
            $type = "pending";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'pending')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'confirmed') {
            $type = "confirmed";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'confirmed')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'processing') {
            $type = "processing";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'processing')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'shipped') {
            $type = "shipped";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'shipped')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'collected') {
            $type = "collected";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'collected')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'delivered') {
            $type = "delivered";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'delivered')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'cancelled') {
            $type = "cancelled";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'cancelled')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'returned') {
            $type = "pending";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'returned')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'ready_to_ship') {
            $type = "Ready to Ship";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'ready_to_ship')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } elseif ($request->type == 'undelivered') {
            $type = "undelivered";
            $orders = $order->where('agent_id',$sr->id)->latest()->where('order_status', 'undelivered')->with('items', 'orderForUser', 'orderByAgent','orderForSource')->paginate(50);
        } else {
            return redirect()->back();
        }

        return view('sr.ordersHistory.orders',compact('sr','orders','type'));
    }
    public function collectionList(Agent $sr,EcommercePaymentCollection $collection, Request $request)
    {

        $type = $request->type;
        menuSubmenu('collections',$type.'Collection');
        if($type == 'varified'){
            $collections = $collection->where('agent_id', $sr->id)->where('status','varified')->latest()->with('source')->get();
        }elseif ($type == 'rejected') {
            $collections = $collection->where('agent_id', $sr->id)->where('status','rejected')->latest()->with('source')->get();
        }elseif ($type == 'pending') {
            $collections = $collection->where('agent_id', $sr->id)->where('status','pending')->latest()->with('source')->get();
        }else{
            $type = 'all';
            menuSubmenu('collections','allCollection');
            $collections = $collection->where('agent_id', $sr->id)->latest()->with('source')->get();
        }

        return view('sr.collections',compact('sr','collections','type'));
    }
    public function salaryStatement(Agent $sr)
    {
        menuSubmenu('salary','allsalary');
        if ($sr->user_id != auth()->user()->id) {
            abort(401);
        }else{
            $salaries = $sr->salaries()->latest()->get();
            return view('sr.salary',compact('sr','salaries'));
        }
    }

    public function shipmentReturnList(Agent $sr, ShipmentReturn $return, Request $request)
    {
        $type = $request->type;
        menuSubmenu('returns',$type.'Returns');
        if ($type == 'pending') {
            $returnList = $return->where('agent_id', $sr->id)->where('return_status','pending')->withCount('items')->with('source')->get();
        }elseif($type == 'itemWise'){
            $returnList = $return->where('agent_id', $sr->id)->where('return_status','itemWise')->withCount('items')->with('source')->get();
        }
        elseif($type == 'accepted'){
            $returnList = $return->where('agent_id', $sr->id)->where('return_status','accepted')->withCount('items')->with('source')->get();
        }
        elseif($type == 'rejected'){
            $returnList = $return->where('agent_id', $sr->id)->where('return_status','rejected')->withCount('items')->with('source')->get();
        }
        else{
            $returnList = $return->where('agent_id', $sr->id)->withCount('items')->with('source')->get();
        }


        return view('sr.shipment.return',compact('returnList','sr','type'));
    }

    public function shipmentReturnDetails(Agent $sr, Request $request)
    {
        menuSubmenu('returns','allReturns');
        $return = ShipmentReturn::find($request->shipment);
        $return = $return->find($return->id)->load('items','source');
        return view('sr.shipment.returnDetails',compact('return','sr'));

    }
}
