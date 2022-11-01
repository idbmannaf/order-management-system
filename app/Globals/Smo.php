<?php

namespace App\Globals;

use Illuminate\Support\Facades\DB;

class Smo
{
    public $shopCount = null;
    public $orderCount = null;
    public $dealer = null;
    public function __construct($dealer)
    {
        $this->dealer = $dealer;
    }
    public  function shops()
    {
        if ($this->shopCount == null) {
            $shopCount = DB::table('ecommerce_sources')
                ->selectRaw('count(*) as total')
                ->selectRaw("count(case when active = true then 1 end) as active")
                ->selectRaw("count(case when active = 'false' then 1 end) as inActive")
                ->where('dealer_id', $this->dealer)
                ->first();
            $this->shopCount = $shopCount;
        }
        return $this->shopCount;
    }
    public function orders()
    {

        if ($this->orderCount == null) {
            $orderCount = DB::table('ecommerce_orders')
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
                ->where('dealer_id', $this->dealer)
                ->first();
            $this->orderCount = $orderCount;
        }
        return $this->orderCount;
    }
}
