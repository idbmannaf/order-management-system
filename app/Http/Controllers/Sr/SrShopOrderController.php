<?php

namespace App\Http\Controllers\Sr;

use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommerceCart;
use App\Models\Ecommerce\EcommerceCatProduct;
use App\Models\Ecommerce\EcommerceOrder;
use App\Models\Ecommerce\EcommerceOrderItem;
use App\Models\Ecommerce\EcommercePaymentCollection;
use App\Models\Ecommerce\EcommerceProduct;
use App\Models\Ecommerce\EcommerceSource;
use App\Models\OrderTemp;
use App\Models\PaymentType;
use App\Models\Role\Agent;
use App\Models\SaleCommission;
use App\Models\SrOrder;
use App\Models\SrOrderItem;
use App\Models\User;
use DB;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use PhpParser\Node\Stmt\Return_;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;

class SrShopOrderController extends Controller
{

    public function shopOrders(Agent $sr, Request $request)
    {
        return 1;
        dd(1);
    }

    public function paymentCollection(Agent $sr, Request $request)
    {

        $shop = EcommerceSource::find($request->shop);
        $payments = EcommercePaymentCollection::where('agent_id', $sr->id)->where('source_id', $shop->id)
            ->latest()->paginate(50);
        return view('sr.payment.paymentCollection', compact('sr', 'shop', 'payments'));
    }

    public function paymentMthods(Agent $sr, Request $request)
    {
        $paymentTypes = PaymentType::where('payment_type', $request->type)->where('active', true)->get();
        return view('sr.payment.ajax.paymentType', compact('paymentTypes'))->render();
    }

    public function paymentCollectionSave(Agent $sr, Request $request)
    {

        $shop = EcommerceSource::find($request->shop);

        $request->validate([
            'payment_type' => 'required',
            'amount' => 'required|numeric'
        ]);
        if ($request->file('image')) {
            $request->validate([
                'image' => 'image',
            ]);
        }

        $collection = new EcommercePaymentCollection;
        $collection->trans_date = now();
        $collection->source_id = $shop->id;
        $collection->agent_id = $sr->id;
        $collection->collected_by = 'agent';
        $collection->collection_type = $request->payment_type;
        $collection->payment_type_id = $request->payment_type_id == 0 ? null : $request->payment_type_id;
        $collection->note = $request->note;
        $collection->paid_amount = $request->amount;

        $srCommission = round($sr->current_sale_commission / ($sr->current_sale / $request->amount), 2);

        $collection->sr_commission_amount = $srCommission;

        $collection->addedby_id = auth()->user()->id;
        $collection->status = 'pending';
        $collection->save();


        if ($request->hasFile('image')) {
            $file = $request->image;
            $extension = strtolower($file->getClientOriginalExtension());
            $time = Str::slug(now());
            $imgName = Str::slug($collection->id) . '_' . $time . $extension;
            $resize = Image::make($file)->resize(1200, null, function ($constraint) {
                $constraint->aspectRatio();
            })->encode('jpg');
            $save = Storage::put("public/paymentCollection/{$imgName}", $resize->__toString());
            $collection->image = url('/') . '/storage/paymentCollection/' . $imgName;

        }

        // if ($request->hasFile('image')) {

        //     $img = $this->resize($request->image, 1200,1200);
        //     $extension = strtolower($request->image->getClientOriginalExtension());
        //     $time   = Str::slug(now());
        //     $imgName = Str::slug($collection->id).'_'.$time.$extension;
        //     $img->storeAs('paymentCollection', $imgName, 'public'); //uploading on storage

        //     $collection->image = url('/').'/storage/paymentCollection/'.$imgName; //saving the image link
        // }

        $collection->save();
        $shop = $collection->source;


        $sr->current_collection = $sr->current_collection + $collection->paid_amount;
        $sr->save();

        $shop->current_collection = $shop->current_collection + $collection->paid_amount;
        $shop->save();
        return redirect()->back()->with('success', 'Collection Pending');

    }

    public function createOrder(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        $categories = $shop->commissions()->pluck('category_id')->toArray();
        $products = EcommerceProduct::with('category')
            ->where('status', 'published')
            ->whereIn('category_id', $categories)
            ->orderBy('cat_title')
            ->orderBy('name')
            ->paginate(15);

        $catProducts = $products->groupBy('cat_title')->sortBy('cat_title');

        $tempProducts = OrderTemp::has('product')->where('shop_id', $shop->id)->with('product')->get();
        $q="";
        if ($request->ajax()){
            $view = view('sr.shops.orders.ajax.searchProducts', compact('catProducts', 'sr', 'shop', 'products','q'))->render();
            return response()->json([
                'success'=>true,
                'view'=>$view
            ]);
        }
        return view('sr.shops.orders.createOrder', compact('catProducts', 'sr', 'shop', 'tempProducts', 'products','q'));
    }


    public function selectProduct(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        $product = EcommerceProduct::find($request->product);
        $tempProduct = $product->tempOrdeProduct()->where('shop_id', $shop->id)->first();
        if (!$tempProduct) {
            $tempOProduct = new OrderTemp;
            $tempOProduct->product_id = $product->id;
            $tempOProduct->shop_id = $shop->id;
            $tempOProduct->agent_id = $sr->id;
            $tempOProduct->quantity = $product->min_order_quantity ?? 1;
            $tempOProduct->unit_price = $product->sale_price;
            $tempOProduct->shop_price = $product->shopAmount($shop->id);
            $tempOProduct->total_price = $product->shopAmount($shop->id) * $product->min_order_quantity ?? 1;
            $tempOProduct->bonus = $product->bonus;
            $tempOProduct->save();

        }
        $tempProducts = OrderTemp::has('product')->where('shop_id', $shop->id)->with('product')->get();
        return response()->json([
            'success' => true,
            'product' => $product->id,
            'view' => view('sr.shops.orders.ajax.selectedProduct', compact('tempProducts', 'shop', 'sr'))->render()
        ]);

    }

    public function unSelectProduct(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        $product = EcommerceProduct::find($request->product);
        $tempProduct = $product->tempOrdeProduct()->where('shop_id', $shop->id)->where('product_id', $product->id)->delete();
        $tempProducts = OrderTemp::has('product')->where('shop_id', $shop->id)->with('product')->get();
        return response()->json([
            'success' => true,
            'product' => $product->id,
            'view' => view('sr.shops.orders.ajax.selectedProduct', compact('tempProducts', 'shop', 'sr'))->render()
        ]);
    }

    public function updateQuanity(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        $tempUpdate = OrderTemp::find($request->temp);
        $product = EcommerceProduct::find($tempUpdate->product_id);
        $tempUpdate->quantity = $request->qty;
        $tempUpdate->total_price = $request->qty * $tempUpdate->shop_price;
        $tempUpdate->save();

        $tempProducts = OrderTemp::has('product')->where('shop_id', $shop->id)->with('product')->get();
        return response()->json([
            'success' => true,
            'temp' => $request->temp,
            'view' => view('sr.shops.orders.ajax.selectedProduct', compact('tempProducts', 'shop', 'sr'))->render()
        ]);
    }

    public function orderPost(Agent $sr, Request $request)
    {
        $shop = EcommerceSource::find($request->shop);
        $tempProducts = OrderTemp::has('product')->where('shop_id', $shop->id)->with('product')->get();

        $ecoOrder = new EcommerceOrder;
        $ecoOrder->depo_id = $sr->depo_id;
        $ecoOrder->distributor_id = $sr->distributor_id;
        $ecoOrder->dealer_id = $sr->dealer_id;
        $ecoOrder->agent_id = $sr->id;
        $ecoOrder->market_id = $shop->market_id ?? null;
        $ecoOrder->address = $shop->address;
        $ecoOrder->source_id = $shop->id ?? null;
        $ecoOrder->mobile = $shop->mobile ?? null;
        $ecoOrder->pending_at = now();
        $ecoOrder->save();

        $srOrder = new SrOrder;
        $srOrder->order_id = $ecoOrder->id;
        $srOrder->depo_id = $ecoOrder->depo_id ?? null;
        $srOrder->dealer_id = $ecoOrder->dealer_id ?? null;
        $srOrder->agent_id = $ecoOrder->agent_id ?? null;
        $srOrder->market_id = $ecoOrder->market_id ?? null;
        $srOrder->address = $ecoOrder->address ?? null;
        $srOrder->source_id = $ecoOrder->source_id ?? null;
        $srOrder->mobile = $ecoOrder->mobile ?? null;
        $srOrder->pending_at = $ecoOrder->pending_at ?? null;
        $srOrder->save();

        $price = 0.00;
        $collection = 0.00;
        foreach ($tempProducts as $key => $temp) {
            $prod = EcommerceProduct::find($temp->product_id);
            $unitPrice = $prod->priceByQuantity($temp->quantity);
            $itemPrice = $unitPrice * $temp->quantity;
            $orderItem = new EcommerceOrderItem;

            if ($prod->pice) {
                if ($prod->pice > $temp->quantity) {
                    $orderItem->bonus = 0;
                }
                $bonus = ($prod->bonus * $temp->quantity) / $prod->pice;
                $orderItem->bonus = (int)$bonus;
            } else {
                $orderItem->bonus = 0;
            }

            $orderItem->order_id = $ecoOrder->id;
            $orderItem->product_id = $temp->product_id;
            $orderItem->category_id = $prod->category_id;
            $orderItem->product_name = $prod->name;
            $orderItem->total_quantity = $temp->quantity;
            $orderItem->unit_price = $unitPrice;
            $orderItem->total_price = $itemPrice;
            $orderItem->seller_source_id = $srOrder->source_id ?? null;
            $orderItem->buyer_source_id = $srOrder->source_id ?? null;
            $orderItem->depo_id = $srOrder->depo_id ?? null;
            $orderItem->dealer_id = $srOrder->dealer_id ?? null;
            $orderItem->agent_id = $srOrder->agent_id ?? null;
            $orderItem->market_id = $srOrder->market_id ?? null;
            $shop_commission = $shop->commissionByProduct($prod->id);
            $orderItem->percent_commision = $shop_commission;
            $shop_payment = round($orderItem->total_price - (($orderItem->total_price / 100) * $shop_commission), 2);
            $orderItem->collection_amount = $shop_payment;
            $orderItem->save();

            $srOrderItem = new SrOrderItem;
            $srOrderItem->sr_order_id = $srOrder->id;
            $srOrderItem->order_id = $orderItem->order_id;
            $srOrderItem->product_id = $orderItem->product_id;
            $srOrderItem->product_name = $orderItem->product_name;
            $srOrderItem->total_quantity = $orderItem->total_quantity;
            $srOrderItem->unit_price = $orderItem->unit_price;
            $srOrderItem->total_price = $orderItem->total_price;
            $srOrderItem->collection_amount = $orderItem->collection_amount;
            $srOrderItem->seller_source_id = $orderItem->seller_source_id;
            $srOrderItem->buyer_source_id = $orderItem->buyer_source_id;
            $srOrderItem->depo_id = $orderItem->depo_id;
            $srOrderItem->dealer_id = $orderItem->dealer_id;
            $srOrderItem->agent_id = $orderItem->agent_id;
            $srOrderItem->market_id = $orderItem->market_id;
            $srOrderItem->percent_commision = $orderItem->percent_commision;
            $srOrderItem->save();

            $price = $price + $itemPrice;
            $collection = $collection + $orderItem->collection_amount;
            $temp->delete();

        }
        $ecoOrder->total_price = $price;
        $ecoOrder->total_collection_amount = $collection;
        $ecoOrder->save();

        $srOrder->total_price = $ecoOrder->total_price;
        $srOrder->total_collection_amount = $ecoOrder->total_collection_amount;
        $srOrder->save();

        return redirect()->back()->with('success', 'Order Successfully Placed');
    }

    public function productSearchAjax(Agent $sr, Request $request)
    {

        $shop = EcommerceSource::find($request->shop);

        $categories = $shop->commissions()->pluck('category_id')->toArray();

        $q= $request->q;
        $products = EcommerceProduct::with('category')
            ->where('status', 'published')
            ->whereIn('category_id', $categories)
            ->where('id', 'like', '%' . $request->q . '%')
            ->orWhere('cat_title', 'like', '%' . $request->q . '%')
            ->orWhere('name', 'like', '%' . $request->q . '%')
            ->orderBy('cat_title')
            ->orderBy('name')
            ->paginate(15);



        $catProducts = $products->groupBy('cat_title')->sortBy('cat_title');


        $view = view('sr.shops.orders.ajax.searchProducts', compact('catProducts', 'sr', 'shop', 'products','q'))->render();
        return response()->json([
            'success'=>true,
            'view'=>$view
        ]);


    }


}
