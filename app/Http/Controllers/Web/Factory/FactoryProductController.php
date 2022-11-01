<?php

namespace App\Http\Controllers\Web\Factory;

use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommerceProduct;
use App\Models\Factory\FactoryProduct;
use App\Models\StockedMaterials;
use Illuminate\Http\Request;
use DB;

class FactoryProductController extends Controller
{
    public $fms;
    public function __construct()
    {
        $this->fms = DB::connection('fms');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(EcommerceProduct $product)
    {
        // dd($student_detail = DB::connection('mysql2')->table("products")->get());
        menuSubmenu('products', 'all');
        $products = $product->where('status', 'published')->with('category')->latest()->paginate(50);
        return view('factory.product.index', [
            'products' => $products,
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
    public function show(EcommerceProduct $product)
    {
        menuSubmenu('products', 'all');
        return view('factory.product.view', [
            'product' => $product,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
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
    public function readyProducts()
    {

        menuSubmenu('readyProducts', 'readyProducts');
        $readyProducts = FactoryProduct::where('status', 'in_stocked')->groupBy('product_id')->groupBy('unit')->groupBy('unit_value')->latest()->paginate(30);
        return view('factory.product.readyProducts', [
            'readyProducts' => $readyProducts,
        ]);
    }
}
