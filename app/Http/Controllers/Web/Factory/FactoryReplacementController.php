<?php

namespace App\Http\Controllers\Web\Factory;

use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommerceOrder;
use App\Models\ProductReplacement;
use App\Models\Shipment;
use App\Models\ShipmentItem;
use Illuminate\Http\Request;

class FactoryReplacementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ProductReplacement $replace, Request $request)
    {
        $type = $request->type;
        menuSubmenu('replacements', $type."Replacements");
        if ($type == 'pending') {
            $replacements = ProductReplacement::with('agent')->where('return_status','pending')
            ->latest()
            ->paginate(50);
        }else{
            $replacements = ProductReplacement::with('agent')->latest()->paginate(50);
        }

        return view('factory.replacement.index', [
            'replacements' => $replacements,
            'type'=>$type
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function process(ProductReplacement $replace)
    {

        menuSubmenu('replacements', 'pendingReplacements');
        return view('factory.replacement.process', [
            'replace' => $replace,
        ]);
    }

    public function processSave(ProductReplacement $replace, Request $request)
    {
        $replace->return_status = 'approved';
        $replace->approved_at = now();
        $replace->save();
// $order= EcommerceOrder::find($replace->order_id);
        $shipment = new Shipment;
        // $shipment->user_id = $order->user_id;
        $shipment->order_id = $replace->order_id;
        $shipment->depo_id = $replace->depo_id;
        $shipment->distributor_id = $replace->distributor_id;
        $shipment->dealer_id = $replace->dealer_id;
        $shipment->agent_id = $replace->agent_id;
        $shipment->division_id = $replace->division_id;
        $shipment->district_id = $replace->district_id;
        $shipment->upazila_id = $replace->upazila_id;
        $shipment->market_id = $replace->market_id ?? null;
        $shipment->source_id = $replace->source_id;
        $shipment->mobile = $replace->mobile ?? null;
        $shipment->order_status = 'processing';
        $shipment->processing_at = $replace->processing_at;
        $shipment->total_quantity = $replace->total_quantity;
        $shipment->approvedby_id = auth()->user()->id;
        $shipment->total_price = $replace->total_price;
        $shipment->save();
        $totalShipmentPrice = 0;

        foreach ($replace->items as $item) {
            $key = 'process_qty_' . $item->id;
            if (isset($request[$key]) || !empty($request[$key] || $request[$key] > 0)) {
                $shipmentItem = new ShipmentItem;
                $shipmentItem->order_id = $item->order_id ?? null;
                $shipmentItem->order_item_id = $item->id;
                $shipmentItem->shipment_id = $shipment->id;
                $shipmentItem->product_id = $item->product_id ?? null;
                $shipmentItem->product_name = $item->product_name ?? null;
                $shipmentItem->unit_price = $item->unit_price ?? null;
                // $shipmentItem->user_id = $item->user_id ?? null;
                $shipmentItem->seller_source_id = $item->seller_source_id ?? null;
                $shipmentItem->buyer_source_id = $item->buyer_source_id ?? null;
                $shipmentItem->depo_id = $item->depo_id ?? null;
                $shipmentItem->distributor_id = $item->distributor_id ?? null;
                $shipmentItem->dealer_id = $item->dealer_id ?? null;
                $shipmentItem->agent_id = $item->agent_id ?? null;

                $shipmentItem->market_id = $item->market_id ?? null;
                $shipmentItem->approvedby_id = auth()->user()->id;
                $shipmentItem->shipment_quantity = $request[$key];
                $shipmentItem->returned_quantity = $request[$key];
                $shipmentItem->processing_at = $replace->processing_at;
                $shipmentItem->shipment_amount = $shipmentItem->shipment_quantity * $shipmentItem->unit_price;
                $shipmentItem->save();

                $totalShipmentPrice = $totalShipmentPrice + $shipmentItem->shipment_amount;
            }

        }
        $shipment->shipment_price = $totalShipmentPrice;
        $shipment->save();
        return redirect()->route('factory.orders.processing')->with('success', 'Order Processing');

    }
}
