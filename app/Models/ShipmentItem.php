<?php

namespace App\Models;

use App\Models\Ecommerce\EcommerceCategory;
use App\Models\Ecommerce\EcommerceOrderItem;
use App\Models\Ecommerce\EcommerceProduct;
use App\Models\Ecommerce\EcommerceSource;
use App\Models\Role\Agent;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShipmentItem extends Model
{
    use HasFactory;


    public function orderItem()
    {
        return $this->belongsTo(EcommerceOrderItem::class, 'order_item_id');
    }

    public function agent()
    {
        return $this->belongsTo(Agent::class, 'agent_id');
    }
    public function product()
    {
        return $this->belongsTo(EcommerceProduct::class,'product_id');
    }
    public  function category(){
        return $this->belongsTo(EcommerceCategory::class,'category_id');
    }

    public function source()
    {
        return $this->belongsTo(EcommerceSource::class, 'seller_source_id');
    }
    public function itemByCat($cat,$order)
    {
        return $this->where('category_id',$cat)->where('shipment_id',$order)->get();
    }

}
