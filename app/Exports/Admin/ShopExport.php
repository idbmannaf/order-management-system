<?php

namespace App\Exports\Admin;

use App\Models\Ecommerce\EcommerceSource;
use Illuminate\Contracts\Support\Responsable;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Excel;

class ShopExport implements FromCollection,Responsable
{
    use Exportable;
    private $fileName = 'invoices.xlsx';

    /**
    * Optional Writer Type
    */
    private $writerType = Excel::XLSX;

    /**
    * Optional headers
    */
    private $headers = [
        'Content-Type' => 'text/csv',
    ];
    /**
    * @return \Illuminate\Support\Collection
    */
    public $type =null;
    public function __construct($type)
    {
        $this->type = $type;
    }
    public function collection()
    {
        if ($this->type == 'all') {
            return EcommerceSource::all();
        }
    }
    // public function headings(): array
    // {
    //     return [
    //         'id',
    //         'name',
    //     ];
    // }
}
