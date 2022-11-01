<?php

namespace App\Models;

use App\Models\Ecommerce\EcommerceProduct;
use App\Models\Ecommerce\EcommerceSource;
use App\Models\Role\Agent;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderTemp extends Model
{
    use HasFactory;
    public function product()
    {
        return $this->belongsTo(EcommerceProduct::class,'product_id');
    }
    public function sr()
    {
        return $this->belongsTo(Agent::class,'agent_id');
    }
    public function shop()
    {
        return $this->belongsTo(EcommerceSource::class,'shop_id');
    }
}
