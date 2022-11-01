<?php

namespace App\Http\Controllers\Web\Depo;

use App\Models\Ecommerce\EcommerceProduct;
use App\Models\Ecommerce\EcommerceSource;
use App\Models\Role\Depo;
use App\Models\SaleCommission;
use App\Models\ShipmentReturn;
use App\Models\WebsiteBalance;
use App\Models\Role\Agent;
use App\Http\Controllers\Controller;
use App\Models\Ecommerce\EcommerceOrder;
use App\Models\Ecommerce\EcommercePaymentCollection;
use App\Models\Role\Dealer;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class DepoDashboardController extends Controller
{
    public function dashboard(Depo $depo)
    {
        menuSubmenu('dashboard', 'dashboard');

        $totalOrderCount    = EcommerceOrder::where('depo_id', $depo->id)->count();
        $agents = Agent::where('depo_id', $depo->id)->get();

        $totalSales = 0;
        $totalCollections = 0;
        foreach ($agents as $agent) {
            $paid = SaleCommission::where('agent_id', $agent->id)
                ->sum('total_price');

            $totalSales = $paid + $totalSales;

            $collections = EcommercePaymentCollection::where('agent_id', $agent->id)
                ->sum('paid_amount');

            $totalCollections = $totalCollections + $collections;
        }
        // $totalCollections   = EcommercePaymentCollection::sum('paid_amount');
        // $totalSales = SaleCommission::sum('total_price');
        // $systemBalance      = WebsiteBalance::first()->system_balance;

        return view('depo.dashboard.depoDashboard', [
            'depo' => $depo,
            'totalOrderCount' => $totalOrderCount,
            'totalSales' => $totalSales,
            'totalCollections' => $totalCollections,
            // 'systemBalance' => $systemBalance,
        ]);
    }

    public function getChartData()
    {
        $user = Auth::user();
        $depo = Depo::where('user_id', $user->id)->first();
        // dd($depo);
        $pendingOrderCount      = EcommerceOrder::where('depo_id', $depo->id)->where('order_status', 'pending')->count();
        $confirmedOrderCount    = EcommerceOrder::where('depo_id', $depo->id)->where('order_status', 'confirmed')->count();
        $processingOrderCount   = EcommerceOrder::where('depo_id', $depo->id)->where('order_status', 'processing')->count();
        $readyToShipOrderCount  = EcommerceOrder::where('depo_id', $depo->id)->where('order_status', 'ready_to_ship')->count();
        $shippedOrderCount      = EcommerceOrder::where('depo_id', $depo->id)->where('order_status', 'shipped')->count();
        $collectedOrderCount    = EcommerceOrder::where('depo_id', $depo->id)->where('order_status', 'collected')->count();
        $deliveredOrderCount    = EcommerceOrder::where('depo_id', $depo->id)->where('order_status', 'delivered')->count();
        $canceledOrderCount     = EcommerceOrder::where('depo_id', $depo->id)->where('order_status', 'canceled')->count();
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

                    'backgroundColor' => ['#d2d6de', '#00c0ef',  '#3c8dbc', '#ffeeaa', '#f39c12', '#f56954', '#00a65a', '#FF0000'],
                ]
            ],
        ];

        $thisMonthSale      = SaleCommission::whereMonth('created_at', now()->month)->sum('collection_amount');
        $thisMonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->month)->sum('paid_amount');
        $prev1MonthSale     = SaleCommission::whereMonth('created_at', now()->subMonths(1)->month)->sum('collection_amount');
        $prev1MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(1)->month)->sum('paid_amount');
        $prev2MonthSale     = SaleCommission::whereMonth('created_at', now()->subMonths(2)->month)->sum('collection_amount');
        $prev2MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(2)->month)->sum('paid_amount');
        $prev3MonthSale     = SaleCommission::whereMonth('created_at', now()->subMonths(3)->month)->sum('collection_amount');
        $prev3MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(3)->month)->sum('paid_amount');
        $prev4MonthSale     = SaleCommission::whereMonth('created_at', now()->subMonths(4)->month)->sum('collection_amount');
        $prev4MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(4)->month)->sum('paid_amount');
        $prev5MonthSale     = SaleCommission::whereMonth('created_at', now()->subMonths(5)->month)->sum('collection_amount');
        $prev5MonthCollection = EcommercePaymentCollection::whereMonth('created_at', now()->subMonths(5)->month)->sum('paid_amount');

        $paymentChartData = [
            'labels'  => [now()->subMonths(5)->format('M'), now()->subMonths(4)->format('M'), now()->subMonths(3)->format('M'), now()->subMonths(2)->format('M'), now()->subMonths(1)->format('M'), now()->format('M')],
            'datasets' => [
                [
                    'label'               => 'Monthly Payment Collection',
                    'backgroundColor'     => 'rgba(210, 214, 222, 1)',
                    'borderColor'         => 'rgba(210, 214, 222, 1)',
                    'pointRadius'         => false,
                    'pointColor'          => 'rgba(210, 214, 222, 1)',
                    'pointStrokeColor'    => '#c1c7d1',
                    'pointHighlightFill'  => '#fff',
                    'pointHighlightStroke' => 'rgba(220,220,220,1)',
                    'data'                => [$prev5MonthCollection, $prev4MonthCollection, $prev3MonthCollection, $prev2MonthCollection, $prev1MonthCollection, $thisMonthCollection]
                ],
                [
                    'label'               => 'Monthly Sales',
                    'backgroundColor'     => 'rgba(60,141,188,0.9)',
                    'borderColor'         => 'rgba(60,141,188,0.8)',
                    'pointRadius'         => false,
                    'pointColor'          => '#3b8bba',
                    'pointStrokeColor'    => 'rgba(60,141,188,1)',
                    'pointHighlightFill'  => '#fff',
                    'pointHighlightStroke' => 'rgba(60,141,188,1)',
                    'data'                => [$prev5MonthSale, $prev4MonthSale, $prev3MonthSale, $prev2MonthSale, $prev1MonthSale, $thisMonthSale]
                ],
            ],
        ];

        $data = [
            'orderChartData'    => $orderChartData,
            'paymentChartData'  => $paymentChartData,
        ];

        return response()->json($data, 200);
    }
    public function report($type, Request $request)
    {
        // if (isset($request->from) or isset($request->to)) {
        //     $request->validate([
        //         'from' => 'date|before:to',
        //         'to' => 'date|before:tomorrow',
        //     ]);


        // }
        if (isset($request->from) or isset($request->to)) {
            $validator = Validator::make($request->all(), [
                'from' => 'date|before:to',
                'to' => 'date|before:tomorrow',
            ]);

            if ($validator->fails()) {
                return redirect()
                    ->back()
                    ->withErrors($validator)
                    ->withInput();
            }
        }
        $depo = Depo::find($request->depo);
        menuSubmenu('report', $type);
        $srs = Agent::all();
        $shops = EcommerceSource::all();
        if ($type == 'order') {
            $orders = EcommerceOrder::where(function ($query) use ($request) {
                if ($request->time == 'today') {
                    $query->where('pending_at', '<=', now())->where('pending_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'yesterday') {
                    $query->where('pending_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'last_7_days') {
                    $query->where('pending_at', '>=', now()->subDays(7));
                } elseif ($request->time == 'last_month') {
                    $query->where('pending_at', '>=', now()->subDays(30));
                } elseif ($request->from && $request->to) {
                    $query->where('pending_at', '<=', now()->parse($request->to))->where('pending_at', '>=', now()->parse($request->from));
                } elseif ($request->from) {
                    $query->where('pending_at', '>=', now()->parse($request->from));
                } elseif ($request->to) {
                    $query->where('pending_at', '<=', now()->parse($request->to));
                } else {
                }
                if ($request->sr) {
                    $query->whereIn('agent_id', $request->sr);
                }
                if ($request->shop) {
                    $query->whereIn('source_id', $request->shop);
                }
                if ($request->status) {
                    $query->where('order_status', $request->status);
                }
            })->latest()->get();

            return view('depo.report.index', [
                'type' => $type,
                'srs' => $srs,
                'shops' => $shops,
                'orders' => $orders,
                'input' => $request->all(),
                'depo' => $depo
            ]);
        } elseif ($type == 'collection') {
            $collections = EcommercePaymentCollection::where(function ($query) use ($request) {
                if ($request->time == 'today') {
                    $query->where('trans_date', '<=', now())->where('trans_date', '>=', now()->subDays(1));
                } elseif ($request->time == 'yesterday') {
                    $query->where('trans_date', '>=', now()->subDays(1));
                } elseif ($request->time == 'last_7_days') {
                    $query->where('trans_date', '>=', now()->subDays(7));
                } elseif ($request->time == 'last_month') {
                    $query->where('trans_date', '>=', now()->subDays(30));
                } elseif ($request->from && $request->to) {
                    $query->where('trans_date', '<=', now()->parse($request->to))->where('trans_date', '>=', now()->parse($request->from));
                } elseif ($request->from) {
                    $query->where('trans_date', '>=', now()->parse($request->from));
                } elseif ($request->to) {
                    $query->where('trans_date', '<=', now()->parse($request->to));
                } else {
                }
                if ($request->sr) {
                    $query->whereIn('agent_id', $request->sr);
                }
                if ($request->shop) {
                    $query->whereIn('source_id', $request->shop);
                }
            })->latest()->get();

            return view('depo.report.index', [
                'type' => $type,
                'srs' => $srs,
                'shops' => $shops,
                'collections' => $collections,
                'input' => $request->all(),
                'depo' => $depo
            ]);
        } elseif ($type == 'return') {
            $returns = ShipmentReturn::where(function ($query) use ($request) {
                if ($request->time == 'today') {
                    $query->where('return_at', '<=', now())->where('return_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'yesterday') {
                    $query->where('return_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'last_7_days') {
                    $query->where('return_at', '>=', now()->subDays(7));
                } elseif ($request->time == 'last_month') {
                    $query->where('return_at', '>=', now()->subDays(30));
                } elseif ($request->from && $request->to) {
                    $query->where('return_at', '<=', now()->parse($request->to))->where('return_at', '>=', now()->parse($request->from));
                } elseif ($request->from) {
                    $query->where('return_at', '>=', now()->parse($request->from));
                } elseif ($request->to) {
                    $query->where('return_at', '<=', now()->parse($request->to));
                } else {
                }
                if ($request->sr) {
                    $query->whereIn('agent_id', $request->sr);
                }
                if ($request->shop) {
                    $query->whereIn('source_id', $request->shop);
                }
            })->latest()->get();

            return view('depo.report.index', [
                'type' => $type,
                'srs' => $srs,
                'shops' => $shops,
                'returns' => $returns,
                'input' => $request->all(),
                'depo' => $depo
            ]);
        } elseif ($type == 'product') {
            $allProducts = EcommerceProduct::where('status', 'published')->get();
            $products = EcommerceProduct::where('status', 'published')->where(function ($query) use ($request) {
                if ($request->products) {
                    $query->whereIn('id', $request->products);
                }
            })->whereHas('sales', function ($query) use ($request) {
                if ($request->time == 'today') {
                    $query->where('created_at', '<=', now())->where('created_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'yesterday') {
                    $query->where('created_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'last_7_days') {
                    $query->where('created_at', '>=', now()->subDays(7));
                } elseif ($request->time == 'last_month') {
                    $query->where('created_at', '>=', now()->subDays(30));
                } elseif ($request->from && $request->to) {
                    $query->where('created_at', '<=', now()->parse($request->to))->where('created_at', '>=', now()->parse($request->from));
                } elseif ($request->from) {
                    $query->where('created_at', '>=', now()->parse($request->from));
                } elseif ($request->to) {
                    $query->where('created_at', '<=', now()->parse($request->to));
                } else {
                }
                if ($request->sr) {
                    $query->whereIn('agent_id', $request->sr);
                }
                if ($request->shop) {
                    $query->whereIn('source_id', $request->shop);
                }
            })->latest()->paginate(50)->load('sales', 'returns');
            return view('depo.report.index', [
                'type' => $type,
                'srs' => $srs,
                'shops' => $shops,
                'products' => $products,
                'allProducts' => $allProducts,
                'input' => $request->all(),
                'depo' => $depo
            ]);
        } elseif ($type == 'sr') {
            $agents = Agent::whereIn('id', $request->sr ?? [])->get();
            $collections = EcommercePaymentCollection::where(function ($query) use ($request) {
                if ($request->time == 'today') {
                    $query->where('trans_date', '<=', now())->where('trans_date', '>=', now()->subDays(1));
                } elseif ($request->time == 'yesterday') {
                    $query->where('trans_date', '>=', now()->subDays(1));
                } elseif ($request->time == 'last_7_days') {
                    $query->where('trans_date', '>=', now()->subDays(7));
                } elseif ($request->time == 'last_month') {
                    $query->where('trans_date', '>=', now()->subDays(30));
                } elseif ($request->from && $request->to) {
                    $query->where('trans_date', '<=', now()->parse($request->to))->where('trans_date', '>=', now()->parse($request->from));
                } elseif ($request->from) {
                    $query->where('trans_date', '>=', now()->parse($request->from));
                } elseif ($request->to) {
                    $query->where('trans_date', '<=', now()->parse($request->to));
                } else {
                }
                if ($request->sr) {
                    $query->whereIn('agent_id', $request->sr);
                }
                if ($request->shop) {
                    $query->whereIn('source_id', $request->shop);
                }
            })->latest()->get();
            $products = EcommerceProduct::where('status', 'published')->where(function ($query) use ($request) {
                if ($request->products) {
                    $query->whereIn('id', $request->products);
                }
            })->whereHas('sales', function ($query) use ($request) {
                if ($request->time == 'today') {
                    $query->where('created_at', '<=', now())->where('created_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'yesterday') {
                    $query->where('created_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'last_7_days') {
                    $query->where('created_at', '>=', now()->subDays(7));
                } elseif ($request->time == 'last_month') {
                    $query->where('created_at', '>=', now()->subDays(30));
                } elseif ($request->from && $request->to) {
                    $query->where('created_at', '<=', now()->parse($request->to))->where('created_at', '>=', now()->parse($request->from));
                } elseif ($request->from) {
                    $query->where('created_at', '>=', now()->parse($request->from));
                } elseif ($request->to) {
                    $query->where('created_at', '<=', now()->parse($request->to));
                } else {
                }
                if ($request->sr) {
                    $query->whereIn('agent_id', $request->sr);
                }
                if ($request->shop) {
                    $query->whereIn('source_id', $request->shop);
                }
            })->latest()->get()->load('sales', 'returns');
            return view('depo.report.index', [
                'type' => $type,
                'srs' => $srs,
                'agents' => $agents,
                'shops' => $shops,
                'collections' => $collections,
                'products' => $products,
                'input' => $request->all(),
                'depo' => $depo
            ]);
        } elseif ($type == 'shop') {
            $sources = EcommerceSource::whereIn('id', $request->shop ?? [])->get();
            $collections = EcommercePaymentCollection::where(function ($query) use ($request) {
                if ($request->time == 'today') {
                    $query->where('trans_date', '<=', now())->where('trans_date', '>=', now()->subDays(1));
                } elseif ($request->time == 'yesterday') {
                    $query->where('trans_date', '>=', now()->subDays(1));
                } elseif ($request->time == 'last_7_days') {
                    $query->where('trans_date', '>=', now()->subDays(7));
                } elseif ($request->time == 'last_month') {
                    $query->where('trans_date', '>=', now()->subDays(30));
                } elseif ($request->from && $request->to) {
                    $query->where('trans_date', '<=', now()->parse($request->to))->where('trans_date', '>=', now()->parse($request->from));
                } elseif ($request->from) {
                    $query->where('trans_date', '>=', now()->parse($request->from));
                } elseif ($request->to) {
                    $query->where('trans_date', '<=', now()->parse($request->to));
                } else {
                }
                if ($request->sr) {
                    $query->whereIn('agent_id', $request->sr);
                }
                if ($request->shop) {
                    $query->whereIn('source_id', $request->shop);
                }
            })->latest()->get();
            $products = EcommerceProduct::where('status', 'published')->where(function ($query) use ($request) {
                if ($request->products) {
                    $query->whereIn('id', $request->products);
                }
            })->whereHas('sales', function ($query) use ($request) {
                if ($request->time == 'today') {
                    $query->where('created_at', '<=', now())->where('created_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'yesterday') {
                    $query->where('created_at', '>=', now()->subDays(1));
                } elseif ($request->time == 'last_7_days') {
                    $query->where('created_at', '>=', now()->subDays(7));
                } elseif ($request->time == 'last_month') {
                    $query->where('created_at', '>=', now()->subDays(30));
                } elseif ($request->from && $request->to) {
                    $query->where('created_at', '<=', now()->parse($request->to))->where('created_at', '>=', now()->parse($request->from));
                } elseif ($request->from) {
                    $query->where('created_at', '>=', now()->parse($request->from));
                } elseif ($request->to) {
                    $query->where('created_at', '<=', now()->parse($request->to));
                } else {
                }
                if ($request->sr) {
                    $query->whereIn('agent_id', $request->sr);
                }
                if ($request->shop) {
                    $query->whereIn('source_id', $request->shop);
                }
            })->latest()->get()->load('sales', 'returns');
            return view('depo.report.index', [
                'type' => $type,
                'srs' => $srs,
                'sources' => $sources,
                'shops' => $shops,
                'collections' => $collections,
                'products' => $products,
                'input' => $request->all(),
                'depo' => $depo
            ]);
        } elseif ($type == 'daily') {

            $start = Carbon::parse($request->from)->format('Y-m-d') . ' 00:00:00';
            //2022-03-08 19:53:07
            $end = Carbon::parse($request->to)->format('Y-m-d')  . ' 23:59:59';

            $smos = Dealer::all();
            $orders = EcommerceOrder::with('smo')->where(function ($query) use ($request, $smos, $start, $end) {
                if ($request->time == 'today') {
                    $query->whereDate('delivered_at', Carbon::now());
                } elseif ($request->time == 'date_range') {
                    $query->whereBetween('delivered_at', [$start, $end]);
                }
                if ($request->smo) {
                    $query->where('dealer_id', $request->smo);
                } else {
                    $query->whereIn('dealer_id', $smos->pluck('id'));
                }
            })
                ->get();

            $SmoOrders = $orders->groupBy('dealer_id');

            return view('depo.report.dailyReport', [
                'type' => $type,
                'input' => $request->all(),
                'smos' => $smos,
                'orders' => $SmoOrders,
                'depo' => $depo,
            ]);
        } else {
            dd("ELSE");
            return redirect()->back();
        }
    }
    public function dueList(Request $request)
    {
        menuSubmenu('due', 'dueList');
        $depo = Depo::find($request->depo);

        $srs = Agent::with('sources')
            ->where('depo_id', $depo->id)
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
        return view('depo.ecommerce.shop.dueSrList', compact('srs', 'depo'));
    }
    public function SrDueList(Request $request)
    {
        menuSubmenu('due', 'dueList');
        $depo = Depo::find($request->depo);
        $sr = Agent::with('shops')->find($request->sr);
        return view('depo.ecommerce.shop.dueShoplils', compact('depo', 'sr'));
    }


}
