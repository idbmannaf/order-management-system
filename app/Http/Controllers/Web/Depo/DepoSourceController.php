<?php

namespace App\Http\Controllers\Web\Depo;

use App\Models\User;
use App\Models\Role\Depo;
use App\Models\Role\Agent;
use App\Models\Role\Dealer;
use App\Models\ShopCommission;
use App\Models\ShipmentReturn;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Ecommerce\EcommerceCategory;
use App\Models\Ecommerce\EcommerceSource;
use Illuminate\Support\Facades\Validator;
use App\Models\Ecommerce\EcommercePaymentCollection;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DepoSourceController extends Controller
{
    public function index(Depo $depo, EcommercePaymentCollection $col, Request $request)
    {
        $type= $request->type;
        menuSubmenu('collections', $type.'Collection');
        $agent_ids=  $depo->sr()->pluck('id');
        if ($type== 'pending') {
            $collections = EcommercePaymentCollection::whereIn('agent_id',$agent_ids)->latest()->with('source', 'agent')->where('status','pending')->get();

        }elseif ($type== 'varified') {
            $collections = EcommercePaymentCollection::whereIn('agent_id',$agent_ids)->latest()->with('source', 'agent')->where('status','varified')->get();
        }elseif ($type== 'rejected') {
            $collections = EcommercePaymentCollection::whereIn('agent_id',$agent_ids)->latest()->with('source', 'agent')->where('status','rejected')->get();
        }else {
            $collections = EcommercePaymentCollection::whereIn('agent_id',$agent_ids)->latest()->with('source', 'agent')->get();
        }

        // dd($collections);
        return view('depo.ecommerce.collection.index', [
            'collections' => $collections,
            'depo' => $depo,
            'type'=>$type
        ]);
    }

    public function collectionSearch(Depo $depo, Request $request)
    {
        $collections = EcommercePaymentCollection::
        whereHas('agent', function ($q) use ($depo, $request) {
            $q->where('depo_id', $depo->id);

        })
            ->where('id', 'like', '%' . $request->q . '%')
            ->orWhereHas('agent', function ($q) use ($request) {
                $q->where('name', 'like', '%' . $request->q . '%');
            })
            ->orWhereHas('source', function ($q) use ($request) {
                $q->where('name', 'like', '%' . $request->q . '%');
            })
            ->get();
        return view('depo.ecommerce.collection.parts.collectionTableBody', compact('collections','depo'))->render();

    }

    public function edit(Depo $depo, EcommerceSource $shop)
    {
        $categories = EcommerceCategory::where('active', 1)->get();

        return view('depo.ecommerce.shop.edit', [
            'shop' => $shop,
            'categories' => $categories,
            'depo' => $depo
        ]);
    }

    public function update(EcommerceSource $shop, Request $request)
    {

        $this->validate($request, [
            'mobile' => 'required|string|numeric|unique:ecommerce_sources,mobile,' . $shop->mobile . ',mobile',
            'name' => 'required|string|max:255',
            'owner_name' => 'required|string|max:255',
        ]);

        // $toalSale = ($shop->total_sale - $shop->initial_amount) + $request->due_amount;
        // $toalCurSale = ($shop->current_sale - $shop->initial_amount) + $request->due_amount;
        $shop->name = $request->name;
        $shop->owner_name = $request->owner_name;
        $shop->mobile = $request->mobile;
        $shop->description = $request->description;
        $shop->address = $request->address;
        $shop->due_amount = $request->due_amount ?? $shop->due_amount;
        if (!$shop->initial_amount || $shop->initial_amount < 1) {
            $shop->initial_amount = $request->due_amount ?? $shop->due_amount;
        }
        $shop->monthly_target = $request->monthly_target ?? 0;
        $shop->active = $request->active ? 1 : 0;
        $shop->save();

        foreach ($request->all() as $key => $value) {
            $cat = str_split($key, 9);
            if ($cat[0] == 'category_' && $value >= 0) {
                $categoryId = intval($cat[1]);
                $shopCom = ShopCommission::where('category_id', $categoryId)->where('source_id', $shop->id)->first();
                if (!$shopCom) {
                    $shopCom = new ShopCommission;
                }
                $shopCom->source_id = $shop->id;
                $shopCom->category_id = $categoryId;
                $shopCom->commission = $value;
                $shopCom->editedby_id = auth()->user()->id;
                $shopCom->save();
            }
        }

        return redirect()->back()->with('success', 'Shop is updated');
    }

    public function orderList(Depo $depo, EcommerceSource $shop)
    {
        $orders = $shop->orders()->paginate(50);
        return view('depo.ecommerce.shop.orderList', [
            'shop' => $shop,
            'orders' => $orders,
            'depo' => $depo
        ]);
    }

    public function collectionList(Depo $depo, EcommerceSource $shop)
    {
        $collections = $shop->collections()->paginate(50);
        return view('depo.ecommerce.shop.collectionList', [
            'shop' => $shop,
            'collections' => $collections,
            'depo' => $depo
        ]);
    }

    public function collectionEdit(Depo $depo, EcommercePaymentCollection $collection)
    {

        // dd($collection);
        return view('depo.ecommerce.collection.edit', [
            'collection' => $collection,
            'depo' => $depo
        ]);
    }

    public function returnShow(Depo $depo, EcommerceSource $shop)
    {
        $shop = $shop->where('depo_id', $depo->id)->first();
        $returns = $shop->returns()->paginate(50);
        return view('depo.ecommerce.shop.returnList', [
            'shop' => $shop,
            'returns' => $returns,
            'depo' => $depo
        ]);
    }

    public function retutnList(Depo $depo, EcommerceSource $shop)
    {
        $shop = $shop->where('depo_id', $depo->id)->first();
        $returns = $shop->returns()->paginate(50);
        return view('depo.ecommerce.shop.returnList', [
            'shop' => $shop,
            'returns' => $returns,
            'depo' => $depo
        ]);
    }

    public function comissionList(Depo $depo, EcommerceSource $shop)
    {

        $commissions = $shop->commissions()->paginate(50);
        return view('depo.ecommerce.shop.commissionList', [
            'shop' => $shop,
            'commissions' => $commissions,
            'depo' => $depo,
        ]);
    }
}
