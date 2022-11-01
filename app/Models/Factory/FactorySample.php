<?php

namespace App\Models\Factory;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FactorySample extends Model
{
    use HasFactory;
    protected $table = 'samples';
    protected $connection = 'fms';

}
