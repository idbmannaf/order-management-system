<?php

namespace App\Models\Ecommerce;

use App\Models\Role\Agent;
use App\Models\Role\Dealer;
use App\Models\Shipment;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EcommerceOrder extends Model
{
    use HasFactory;

    public function items()
    {
        return $this->hasMany(EcommerceOrderItem::class, 'order_id')->with('product');
    }
    public function items2()
    {
        return $this->items()->groupBy('category_id')->get();
    }
    public function itemCount(){
        return $this->items()->count();
    }


    // public function itemByCat($cat,$order)
    // {
    //     // return EcommerceOrderItem::where('category_id',$cat)->where('order_id',$order)->get();
    //     return $this->items()->where('category_id',$cat)->get();
    // }

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

    public function payment()
    {
        return $this->hasOne(EcommerceOrderPayments::class, 'order_id');
    }

    public function fetchOrCreatePayment()
    {
        $payment = $this->payment;
        if (!$payment) {
            $payment = new EcommerceOrderPayments;
            $payment->order_id = $this->id;
            $payment->user_id = auth()->user()->id;
        }
        return $payment;
    }

    // public function orderForUser()
    // {
    //     return $this->hasOne(User::class, 'id', 'user_id');
    // }
    // public function orderForSource()
    // {
    //     return $this->hasOne(EcommerceSource::class, 'id', 'source_id');
    // }

    public function shipments()
    {
        return $this->hasMany(Shipment::class, 'order_id');
    }
//    public function shipment()
//    {
//        return $this->shipments()->first();
//    }
    public function totalCommission()
    {
        $commission= 0;
        foreach ($this->items()->get() as $item) {
         $commission += ($item->total_price - $item->collection_amount);
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
    public function smo()
    {
       return $this->belongsTo(Dealer::class,'dealer_id');
    }
}
