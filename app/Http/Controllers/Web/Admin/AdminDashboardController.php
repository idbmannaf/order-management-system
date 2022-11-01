<?php

namespace App\Http\Controllers\Web\Admin;

use App\Exports\Admin\ShopExport;
use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommerceCart;
use App\Models\Ecommerce\EcommerceCategory;
use App\Models\Ecommerce\EcommerceOrder;
use App\Models\Ecommerce\EcommercePaymentCollection;
use App\Models\Ecommerce\EcommerceProduct;
use App\Models\Ecommerce\EcommerceSource;
use App\Models\Factory\FactoryProduct;
use App\Models\PaymentType;
use App\Models\Role\Agent;
use App\Models\Role\Depo;
use App\Models\SaleCommission;
use App\Models\WebsiteBalance;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\Cookie;
use Maatwebsite\Excel\Facades\Excel;

class AdminDashboardController extends Controller
{
    public function dashboard()
    {
        $totalOrderCount = EcommerceOrder::count();
        $totalSales = SaleCommission::sum('total_price');
        $totalCollections = EcommercePaymentCollection::sum('paid_amount');
        $systemBalance = WebsiteBalance::first()->system_balance;
        return view('admin.dashboard.dashboard', [
            'totalOrderCount' => $totalOrderCount,
            'totalSales' => $totalSales,
            'totalCollections' => $totalCollections,
            'systemBalance' => $systemBalance,
        ]);
    }
    public function LoginAsUser(Request $request)
    {
        $admin = Auth::id();
        Auth::logout();
        $min = 60 * 24 * 30 * 2; //for 2 months;
        Cookie::queue('adminCookie', $admin, $min);
        Auth::loginUsingId($request->user, true);

        if (auth()->user()->isAdmin()) {
            return redirect()->route('admin.dashboard');
        }
        if (auth()->user()->isFactory()) {
            return redirect()->route('factory.dashboard');
        }
        if (auth()->user()->hasDealerRole()) {
            return redirect()->route('dealer.dashboard', auth()->user()->dealers[0]);
        }
        if (auth()->user()->hasAgentRole()) {
            return redirect()->route('sr.dashboard', auth()->user()->agents[0]);
        }
    }
    public function loginAsAdmin(Request $request)
    {

        $adminCookie = Cookie::get('adminCookie');

        if (!$adminCookie) {
            return redirect('/');
        }

        Auth::logout();
        Auth::loginUsingId($adminCookie, true);
        Cookie::queue(Cookie::forget('adminCookie'));
        return redirect()->route('admin.dashboard');
    }
    public function getChartData()
    {
        // dd(now()->subMonths(1)->format('M'));
        $pendingOrderCount = EcommerceOrder::where('order_status', 'pending')->count();
        $confirmedOrderCount = EcommerceOrder::where('order_status', 'confirmed')->count();
        $processingOrderCount = EcommerceOrder::where('order_status', 'processing')->count();
        $readyToShipOrderCount = EcommerceOrder::where('order_status', 'ready_to_ship')->count();
        $shippedOrderCount = EcommerceOrder::where('order_status', 'shipped')->count();
        $collectedOrderCount = EcommerceOrder::where('order_status', 'collected')->count();
        $deliveredOrderCount = EcommerceOrder::where('order_status', 'delivered')->count();
        $canceledOrderCount = EcommerceOrder::where('order_status', 'canceled')->count();
        $orderChartData = [
            'labels' => [
                'Pending',
                'Confirmed',
                'Prcessing',
                'Ready To Ship',
                'Shipped',
                'Collected',
                'Delivered',
                'Canceled',
            ],
            'datasets' => [
                [
                    'data' => [$pendingOrderCount, $confirmedOrderCount, $processingOrderCount, $readyToShipOrderCount, $shippedOrderCount, $collectedOrderCount, $deliveredOrderCount, $canceledOrderCount],

                    'backgroundColor' => ['#d2d6de', '#00c0ef', '#3c8dbc', '#ffeeaa', '#f39c12', '#f56954', '#00a65a', '#FF0000'],
                ]
            ],
        ];

        $thisMonthSale = SaleCommission::whereMonth('created_at', now()->month)->sum('collection_amount');
        $thisMonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->month)->sum('paid_amount');
        $prev1MonthSale = SaleCommission::whereMonth('created_at', now()->subMonths(1)->month)->sum('collection_amount');
        $prev1MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(1)->month)->sum('paid_amount');
        $prev2MonthSale = SaleCommission::whereMonth('created_at', now()->subMonths(2)->month)->sum('collection_amount');
        $prev2MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(2)->month)->sum('paid_amount');
        $prev3MonthSale = SaleCommission::whereMonth('created_at', now()->subMonths(3)->month)->sum('collection_amount');
        $prev3MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(3)->month)->sum('paid_amount');
        $prev4MonthSale = SaleCommission::whereMonth('created_at', now()->subMonths(4)->month)->sum('collection_amount');
        $prev4MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(4)->month)->sum('paid_amount');
        $prev5MonthSale = SaleCommission::whereMonth('created_at', now()->subMonths(5)->month)->sum('collection_amount');
        $prev5MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(5)->month)->sum('paid_amount');

        $paymentChartData = [
            'labels' => [now()->subMonths(5)->format('M'), now()->subMonths(4)->format('M'), now()->subMonths(3)->format('M'), now()->subMonths(2)->format('M'), now()->subMonths(1)->format('M'), now()->format('M')],
            'datasets' => [
                [
                    'label' => 'Monthly Payment Collection',
                    'backgroundColor' => 'rgba(210, 214, 222, 1)',
                    'borderColor' => 'rgba(210, 214, 222, 1)',
                    'pointRadius' => false,
                    'pointColor' => 'rgba(210, 214, 222, 1)',
                    'pointStrokeColor' => '#c1c7d1',
                    'pointHighlightFill' => '#fff',
                    'pointHighlightStroke' => 'rgba(220,220,220,1)',
                    'data' => [$prev5MonthCollection, $prev4MonthCollection, $prev3MonthCollection, $prev2MonthCollection, $prev1MonthCollection, $thisMonthCollection]
                ],
                [
                    'label' => 'Monthly Sales',
                    'backgroundColor' => 'rgba(60,141,188,0.9)',
                    'borderColor' => 'rgba(60,141,188,0.8)',
                    'pointRadius' => false,
                    'pointColor' => '#3b8bba',
                    'pointStrokeColor' => 'rgba(60,141,188,1)',
                    'pointHighlightFill' => '#fff',
                    'pointHighlightStroke' => 'rgba(60,141,188,1)',
                    'data' => [$prev5MonthSale, $prev4MonthSale, $prev3MonthSale, $prev2MonthSale, $prev1MonthSale, $thisMonthSale]
                ],
            ],
        ];

        $data = [
            'orderChartData' => $orderChartData,
            'paymentChartData' => $paymentChartData,
        ];

        return response()->json($data, 200);
    }

    public function paymentType(Request $request)
    {
        menuSubmenu('payment', 'paymentType');
        $paymentTypes = PaymentType::latest()->get();
        return view('admin.paymentType.index', compact('paymentTypes'));
    }
    public function paymentAdd(Request $request)
    {
        return view('admin.paymentType.newPaymentType');
    }
    public function paymentStore(Request $request)
    {
        $request->validate([
            'payment_type' => 'required',
            'account_number' => 'required',
            'account_name' => 'required',
        ]);
        $paymentType = new PaymentType;
        $paymentType->payment_type = $request->payment_type;
        $paymentType->account_number = $request->account_number;
        $paymentType->account_name = $request->account_name;
        $paymentType->user_id = Auth::id();
        $paymentType->addedBy_id = Auth::id();
        $paymentType->active = $request->active ? 1 : 0;
        $paymentType->save();
        return redirect()->back()->with('success', 'Payment Type Added Successfully');
    }
    public function paymentEdit(PaymentType $payment, Request $request)
    {
        return view('admin.paymentType.edit', compact('payment'));
    }
    public function paymentUpdate(PaymentType $payment, Request $request)
    {
        $payment->payment_type = $request->payment_type;
        $payment->account_number = $request->account_number;
        $payment->account_name = $request->account_name;
        $payment->active = $request->active ? 1 : 0;
        $payment->save();
        return redirect()->back()->with('Payment Type Updated Successfully');
    }
    public function dueList(Request $request)
    {
        $srs = Agent::with('sources')
            ->withSum('sources', 'total_collection')
            ->withSum('sources', 'current_sale')
            ->withSum('sources', 'total_sale')
            ->withCount([
                'sources',
                'sources as total_shop' => function ($query) {
                    $query->where('active', true);
                }
            ])
            ->orderBy('name')
            ->paginate(50);
        // foreach ($srs as $key => $value) {
        //     dump($value);
        // }
        // die;
        return view('admin.due.dueSrList', compact('srs'));
    }
    public function SrDueList(Request $request)
    {
        $depo = Depo::find($request->depo);
        $sr = Agent::with('shops')->find($request->sr);
        return view('admin.due..dueShoplils', compact('depo', 'sr'));
    }

    public function changeMultiplePrice(Request $request)
    {
        menuSubmenu('products', 'changeMultiplePrice');

        $categories = EcommerceCategory::where('active', true)->orderBy('name')->get();
        return view('admin.priceChange.changePrice', compact('categories'));
    }
    public function getData(Request $request)
    {
        $category = EcommerceCategory::find($request->category);
        if ($request->type == 'type') {
            $types = EcommerceProduct::where('category_id', $category->id)->groupBy('type')->pluck('type');
            $html = view('admin.priceChange.ajax.type', compact('types'))->render();
        } elseif ($request->type == 'type_value') {
            $type_values = EcommerceProduct::where('category_id', $category->id)
                ->where('type', $request->product_type)
                ->where('type_value', '!=', null)
                ->groupBy('type_value')
                ->pluck('type_value');
            $html = view('admin.priceChange.ajax.typeValue', compact('type_values'))->render();
        } elseif ($request->type == 'unit') {
            $units = EcommerceProduct::where('category_id', $category->id)
                ->where('type', $request->product_type)
                ->where('type_value', '!=', null)
                ->where('type_value', $request->type_value)
                ->groupBy('unit')
                ->pluck('unit');
            $html = view('admin.priceChange.ajax.unit', compact('units'))->render();
        } elseif ($request->type == 'unit_value') {
            $unit_values = EcommerceProduct::where('category_id', $category->id)
                ->where('type', $request->product_type)
                ->where('type_value', $request->type_value)
                ->where('unit', $request->unit)
                ->groupBy('unit_value')
                ->pluck('unit_value');
            $html = view('admin.priceChange.ajax.unitValue', compact('unit_values'))->render();
        } elseif ($request->type == 'getResult') {
            $product = EcommerceProduct::where('category_id', $category->id)
                ->where('type', $request->product_type)
                ->where('type_value', $request->type_value)
                ->where('unit', $request->unit)
                ->where('unit_value', $request->unit_value)
                ->count();
            $price = EcommerceProduct::where('category_id', $category->id)
                ->where('type', $request->product_type)
                ->where('type_value', $request->type_value)
                ->where('unit', $request->unit)
                ->where('unit_value', $request->unit_value)
                ->first()
                ->sale_price;
            $html = view('admin.priceChange.ajax.submitBtn', compact('product', 'price'))->render();
        }

        return response()->json([
            'html' => $html,
        ]);
    }
    public function updatePrice(Request $request)
    {
        $request->validate([
            'category' => 'required',
            'type' => 'required',
            'type_value' => 'required',
            'unit' => 'required',
            'unit_value' => 'required',
            'purchase_price' => 'required',
            'sale_price' => 'required',
        ]);

        $category = EcommerceCategory::find($request->category);
        if (!$category) {
            return redirect()->back('warning', 'Category Not Found');
        }
        $products = EcommerceProduct::where('category_id', $category->id)
            ->where('unit', 'LIKE', $request->unit)
            ->where('type', 'LIKE', $request->type)
            ->where('type_value', 'LIKE', $request->type_value)
            ->where('unit_value', 'LIKE', $request->unit_value)
            ->get();
        foreach ($products as $key => $product) {
            // $product->purchase_price = $request->purchase_price;
            $product->sale_price = $request->sale_price;
            $product->save();
        }

        return redirect()->back()->with('success', 'Product Price Updated Successfully');
    }
    public function fileExport(Request $request)
    {
        $type = $request->type;
        $status = $request->status;
        if ($type == 'shop') {
            if ($status == 'all') {

                $fileName = "shops-".now() . '.csv';
                $tasks = EcommerceSource::all();

                $headers = array(
                    "Content-type"        => "text/csv",
                    "Content-Disposition" => "attachment; filename=$fileName",
                    "Pragma"              => "no-cache",
                    "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
                    "Expires"             => "0"
                );

                $columns = array(
                    'id',
                    'name',
                    'GM',
                    'SMO',
                    'SR',
                    'owner_name',
                    'description',
                    'address',
                    'mobile',
                    'type',
                    'monthly_target',
                    'total_sale',
                    'total_sale_commission',
                    'current_sale',
                    'total_collection',
                    'status',
                    'created_at',
                );

                $callback = function () use ($tasks, $columns) {
                    $file = fopen('php://output', 'w');
                    fputcsv($file, $columns);

                    foreach ($tasks as $task) {
                        $row['id']  = $task->id;
                        $row['name']    = $task->name;
                        $row['GM']    = $task->gm ? $task->gm->name : '';
                        $row['SMO']    = $task->smo ? $task->smo->name : '';
                        $row['SR']    = $task->agent ? $task->agent->name : '';
                        $row['owner_name']    = $task->owner_name;
                        $row['description']    = $task->description;
                        $row['address']    = $task->address;
                        $row['mobile']    = $task->mobile;
                        $row['type']    = $task->type;
                        $row['monthly_target']    = $task->monthly_target;
                        $row['total_sale']    = $task->total_sale;
                        $row['total_sale_commission']    = $task->total_sale_commission;
                        $row['current_sale']    = $task->current_sale;
                        $row['total_collection']    = $task->total_collection;
                        $row['status']    = $task->active ? 'Actived' : 'Pending';
                        $row['created_at']    = Carbon::parse($task->created_at)->format("d-M-Y");

                        fputcsv($file, array(
                            $row['id'],
                            $row['name'],
                            $row['GM'],
                            $row['SMO'],
                            $row['SR'],
                            $row['owner_name'],
                            $row['description'],
                            $row['address'],
                            $row['mobile'],
                            $row['type'],
                            $row['monthly_target'],
                            $row['total_sale'],
                            $row['total_sale_commission'],
                            $row['current_sale'],
                            $row['total_collection'],
                            $row['status'],
                            $row['created_at'],
                        ));
                    }

                    fclose($file);
                };

                return response()->stream($callback, 200, $headers);
            }
        }
        if ($type == 'products') {
            if ($status == 'all') {

                $fileName = "products-".now() . '.csv';
                $tasks = EcommerceProduct::all();

                $headers = array(
                    "Content-type"        => "text/csv",
                    "Content-Disposition" => "attachment; filename=$fileName",
                    "Pragma"              => "no-cache",
                    "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
                    "Expires"             => "0"
                );

                $columns = array(
                    'id',
                    'status',
                    'name',
                    'category',
                    'description',
                    'min_order_quantity',
                    'sale_price',
                    'unit',
                    'type',
                    'bonus',
                    'created_at',

                );

                $callback = function () use ($tasks, $columns) {
                    $file = fopen('php://output', 'w');
                    fputcsv($file, $columns);

                    foreach ($tasks as $task) {

                        $row['id'] = $task->id;
                        $row['status'] = $task->status;
                        $row['name'] = $task->name;
                        $row['category'] = $task->cat_title;
                        $row['description'] = $task->description;
                        $row['min_order_quantity'] = $task->min_order_quantity;
                        $row['sale_price'] = $task->sale_price;
                        $row['unit'] = $task->unit_value . $task->unit;
                        $row['type'] = $task->type_value . $task->type;
                        $row['bonus'] = $task->bonus . " for " . $task->pice;
                        $row['created_at']    = Carbon::parse($task->created_at)->format("d-M-Y");

                        fputcsv($file, array(

                            $row['id'],
                            $row['status'],
                            $row['name'],
                            $row['category'],
                            $row['description'],
                            $row['min_order_quantity'],
                            $row['sale_price'],
                            $row['unit'],
                            $row['type'],
                            $row['bonus'],
                            $row['created_at'],
                        ));
                    }

                    fclose($file);
                };

                return response()->stream($callback, 200, $headers);
            }
        }
        if ($type == 'sr') {
                $fileName = "sr-".now() . '.csv';
                $tasks = Agent::all();

                $headers = array(
                    "Content-type"        => "text/csv",
                    "Content-Disposition" => "attachment; filename=$fileName",
                    "Pragma"              => "no-cache",
                    "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
                    "Expires"             => "0"
                );

                $columns = array(
                    'id',
                    'status',
                    'name',
                    'NID',
                    'contact_numbers',
                    'totalShop',
                    'address',
                    'contact_numbers',
                    'gm',
                    'monthly_target',
                    'total_sale',
                    'total_collection',
                    'Balance',
                    'created_at',

                );

                $callback = function () use ($tasks, $columns) {
                    $file = fopen('php://output', 'w');
                    fputcsv($file, $columns);

                    foreach ($tasks as $task) {
                        $row['id'] = $task->id ;
                        $row['status'] = $task->active ? 'Activate' : 'Pending' ;
                        $row['name'] = $task->name ;
                        $row['NID'] = $task->nid ;
                        $row['contact_numbers'] = $task->contact_numbers ;
                        $row['totalShop'] = count($task->shops) ;
                        $row['address'] = $task->address ;
                        $row['gm'] = $task->depo ? $task->depo->name : '' ;
                        $row['monthly_target'] = $task->monthly_target ;
                        $row['total_sale'] = $task->total_sale ;
                        $row['total_collection'] = $task->total_collection ;
                        $row['Balance'] = $task->current_income ;

                        $row['created_at']    = Carbon::parse($task->created_at)->format("d-M-Y");

                        fputcsv($file, array(

                            $row['id'],
                            $row['status'],
                            $row['name'],
                            $row['NID'],
                            $row['contact_numbers'],
                            $row['totalShop'],
                            $row['address'],
                            $row['contact_numbers'],
                            $row['gm'],
                            $row['monthly_target'],
                            $row['total_sale'],
                            $row['total_collection'],
                            $row['Balance'],
                            $row['created_at'],
                        ));
                    }

                    fclose($file);
                };

                return response()->stream($callback, 200, $headers);

        }
    }
    public function readyProducts(Request $request)
    {
        menuSubmenu('readyProducts', 'readyProductsList');
        $readyProducts = FactoryProduct::where('status', 'in_stocked')->groupBy('product_id')->groupBy('unit')->groupBy('unit_value')->latest()->paginate(30);
        return view('admin.readyProducts', [
            'readyProducts' => $readyProducts,
        ]);
    }

}
