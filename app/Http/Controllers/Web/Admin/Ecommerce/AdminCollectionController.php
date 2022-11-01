<?php

namespace App\Http\Controllers\Web\Admin\Ecommerce;

use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommercePaymentCollection;
use Illuminate\Http\Request;
use DB;

class AdminCollectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(EcommercePaymentCollection $col, Request $request)
    {

        $type =$request->type;
        menuSubmenu('collections', $type.'Collections');
        if ($type == 'pending') {
            $collections = $col->latest()->with('source', 'agent')->where('status','pending')->paginate(50);
        }elseif($type == 'approved'){
            $collections = $col->latest()->with('source', 'agent')->where('status','varified')->paginate(50);
        }elseif($type == 'rejected'){
            $collections = $col->latest()->with('source', 'agent')->where('status','rejected')->paginate(50);
        }else{
            $type ='All';
            menuSubmenu('collections', 'allCollections');
            $collections = $col->latest()->with('source', 'agent')->paginate(50);
        }

        return view('admin.ecommerce.collection.index', [
            'collections' => $collections,
            'type'=>$type
        ]);
    }
    public function latestCollectionsByShop(Request $request)
    {
        $collections = EcommercePaymentCollection::orderBy('id', 'DESC')
            ->groupBy('source_id')
            ->latest()
            ->get();
        return $collections;
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(EcommercePaymentCollection $collection)
    {
        menuSubmenu('ecommerce', 'collections');
        return view('admin.ecommerce.collection.edit', [
            'collection' => $collection,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(EcommercePaymentCollection $collection)
    {
        if ($collection->status == 'pending') {
            $collection->status = 'varified';
            $collection->editedby_id = auth()->user()->id;
            $collection->save();

            $amount = $collection->paid_amount;

            $agent = $collection->agent;
            $source = $collection->source;

            $agent->total_collection = $agent->total_collection + $amount;
            $srCommission = round($agent->current_sale_commission / ($agent->current_sale / $amount), 2);
            $agent->current_sale = $agent->current_sale - $amount;
            $agent->current_collection = $agent->current_collection - $amount;
            $agent->current_sale_commission = $agent->current_sale_commission - $srCommission;
            $agent->total_collection_commission = $agent->total_collection_commission + $srCommission;
            $agent->current_income = $agent->current_income + $srCommission;
            $agent->save();

            $source->total_collection = $source->total_collection + $amount;
            $shopCommission = round($source->current_sale_commission / ($source->current_sale / $amount), 2);
            $source->current_sale = $source->current_sale - $amount;
            $source->current_collection = $source->current_collection - $amount;
            $source->current_sale_commission = $source->current_sale_commission - $shopCommission;
            $source->total_collection_commission = $source->total_collection_commission + $shopCommission;
            $source->save();
        }
        return redirect()->back()->with('success', 'This collection is varified!');
    }

    public function rejectCollection(EcommercePaymentCollection $collection)
    {
        if ($collection->status == 'pending') {
            $collection->status = 'rejected';
            $collection->editedby_id = auth()->user()->id;
            $collection->save();
        }
        return redirect()->back()->with('success', 'This collection is Rejected!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
