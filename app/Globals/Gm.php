<?php

namespace App\Globals;

use App\Models\Role\Depo;
use Illuminate\Support\Facades\DB;

class Gm
{
    public $shopCount = null;
    public $orderCount = null;
    public $returnCount = null;
    public $collectionCount = null;
    public $gm = null;
    public function __construct($gm)
    {
        $this->gm = $gm;
    }
    public  function shops()
    {
        if ($this->shopCount == null) {
            $shopCount = DB::table('ecommerce_sources')
                ->where('depo_id', $this->gm)
                ->selectRaw('count(*) as total')
                ->selectRaw("count(case when active = true then 1 end) as active")
                ->selectRaw("count(case when active = 'false' then 1 end) as inActive")
                ->first();
            $this->shopCount = $shopCount;
        }
        return $this->shopCount;
    }
    public function orders()
    {

        if ($this->orderCount == null) {
            $orderCount = DB::table('ecommerce_orders')
                ->where('depo_id', $this->gm)
                ->selectRaw('count(*) as total')
                ->selectRaw("count(case when order_status = 'pending' then 1 end) as pending")
                ->selectRaw("count(case when order_status = 'confirmed' then 1 end) as confirmed")
                ->selectRaw("count(case when order_status = 'processing' then 1 end) as processing")
                ->selectRaw("count(case when order_status = 'ready_to_ship' then 1 end) as ready_to_ship")
                ->selectRaw("count(case when order_status = 'shipped' then 1 end) as shipped")
                ->selectRaw("count(case when order_status = 'collected' then 1 end) as collected")
                ->selectRaw("count(case when order_status = 'delivered' then 1 end) as delivered")
                ->selectRaw("count(case when order_status = 'cancelled' then 1 end) as cancelled")
                ->selectRaw("count(case when order_status = 'returned' then 1 end) as returned")
                ->selectRaw("count(case when order_status = 'undelivered' then 1 end) as undelivered")
                ->first();
            $this->orderCount = $orderCount;
        }
        return $this->orderCount;
    }
    public function return()
    {
        $agent_ids =  Depo::find($this->gm)->sr()->pluck('id');
        if ($this->returnCount == null) {
            $returnCount = DB::table('shipment_returns')
                ->whereIn('agent_id', $agent_ids)
                ->selectRaw('count(*) as total')
                ->selectRaw("count(case when return_status = 'pending' then 1 end) as pending")
                ->selectRaw("count(case when return_status = 'accepted' then 1 end) as accepted")
                ->selectRaw("count(case when return_status = 'itemWise' then 1 end) as itemWise")
                ->selectRaw("count(case when return_status = 'rejected' then 1 end) as rejected")
                ->first();
            $this->returnCount = $returnCount;
        }
        return $this->returnCount;
    }
    public function collection()
    {
        $agent_ids =  Depo::find($this->gm)->sr()->pluck('id');
        if ($this->collectionCount == null) {
            $collectionCount = DB::table('ecommerce_payment_collections')
                ->whereIn('agent_id', $agent_ids)
                ->selectRaw('count(*) as total')
                ->selectRaw("count(case when status = 'pending' then 1 end) as pending")
                ->selectRaw("count(case when status = 'rejected' then 1 end) as rejected")
                ->selectRaw("count(case when status = 'varified' then 1 end) as approved")
                ->first();
            $this->collectionCount = $collectionCount;
        }
        return $this->collectionCount;
    }
}
