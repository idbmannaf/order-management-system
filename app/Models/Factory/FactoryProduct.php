<?php

namespace App\Models\Factory;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Factory\FactorySample;
use App\Models\Factory\FactoryProductManufacture;

class FactoryProduct extends Model
{
    use HasFactory;
    protected $table = 'after_proccess_products';
    protected $connection = 'fms';


    public function product_material()
    {
        return $this->belongsTo(FactoryProductManufacture::class,'product_id');
    }
}
