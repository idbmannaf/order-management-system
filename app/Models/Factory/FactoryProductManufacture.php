<?php

namespace App\Models\Factory;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FactoryProductManufacture extends Model
{
    use HasFactory;
    protected $table = 'products';
    protected $connection = 'fms';

    public function sample()
    {
       return $this->belongsTo(FactorySample::class,'sample_id');
    }
}
