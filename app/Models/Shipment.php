<?php

namespace App\Models;

use App\Models\Ecommerce\EcommerceCategory;
use App\Models\Ecommerce\EcommerceOrder;
use App\Models\Ecommerce\EcommerceOrderPayments;
use App\Models\Ecommerce\EcommerceSource;
use App\Models\Role\Agent;
use App\Models\Role\Dealer;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shipment extends Model
{
    use HasFactory;

    public function order()
    {
        return $this->belongsTo(EcommerceOrder::class, 'order_id');
    }

    public function items()
    {
        return $this->hasMany(ShipmentItem::class, 'shipment_id');
    }

    public function orderByAgent()
    {
        return $this->belongsTo(Agent::class, 'agent_id');
    }
    public function orderForUser()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function orderForSource()
    {
        return $this->belongsTo(EcommerceSource::class, 'source_id');
    }
    public function smo(){
        return $this->belongsTo(Dealer::class,'depo_id');
    }

    public function payment()
    {
        return $this->hasOne(EcommerceOrderPayments::class, 'order_id');
    }

    public function itemsbyCatGroup()
    {
        return $this->items()->groupBy('category_id')->get();
    }
    // Previous fn 
    // public function totalCommission()
    // {
    //     $commission= 0;
    //     foreach ($this->items()->get() as $item) {
    //         $commission += ($item->total_price - $item->collection_amount);
    //     }
    //     return $commission;
    // }

    public function totalCommission()
    {
        $commission= 0;
        foreach ($this->items()->get() as $item) {
            if ($item->collection_amount == 0) {
                $shipment_amount = 0;
            }else{
                $shipment_amount = $item->shipment_amount;
            }
            $commission += ($shipment_amount - $item->collection_amount);
        }
        return $commission;
    }
    public function totalPrice()
    {
        $totalPrice= 0;
        foreach ($this->items()->get() as $item) {
            $totalPrice += $item->collection_amount;
        }
        return $totalPrice;
    }
}
