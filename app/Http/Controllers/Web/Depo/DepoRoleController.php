<?php

namespace App\Http\Controllers\Web\Depo;

use DB;
use App\Models\User;
use App\Models\Role\Depo;
use App\Models\Role\Agent;
use App\Models\Role\Dealer;
use App\Models\SrCommission;
use App\Models\ShipmentReturn;
use App\Models\WebsiteBalance;
use App\Models\Location\Upazila;
use App\Models\Role\Distributor;
use App\Models\Location\District;
use App\Models\Location\Division;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\Ecommerce\EcommerceCategory;
use App\Models\Ecommerce\EcommercePaymentCollection;
use App\Models\SrSalary;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DepoRoleController extends Controller
{
    public function rolesAll(Depo $depo, Request $request)
    {

        if ($request->type == 'agent') {
            $usersAll = Agent::where('depo_id', $depo->id)->orderBy('id')->paginate(200);

            $dealers = Dealer::all();

            menuSubmenu('role', $request->type);

            // $categories = EcommerceCategory::where('active', 1)->get();
            return view('depo.roles.rolesAll', [
                'rolesAll' => $usersAll,
                'type' => $request->type,
                'depo' => $depo,
                'dealers' => $dealers
            ]);
        }

        if ($request->type == 'dealer') {
            $usersAll = Dealer::where('depo_id', $depo->id)->orderBy('id')->paginate(100);
            menuSubmenu('role', $request->type);
            $depos= Depo::all();
            return view('depo.roles.rolesAll', [
                'rolesAll' => $usersAll,
                'type' => $request->type,
                'depo' => $depo,
                'depos' => $depos,
            ]);
        }

        if ($request->type == 'distributor') {
            $usersAll = Distributor::where('depo_id', $depo->id)->orderBy('id')->paginate(100);

            // $depos = Depo::all();

            $districts = District::orderBy('division_id')->get();

            menuSubmenu('role', $request->type);

            return view('depo.roles.rolesAll', [
                'rolesAll' => $usersAll,
                'type' => $request->type,
                // 'depos' => $depos,
                'depo' => $depo,
                'districts' => $districts,
            ]);
        }
    }

    public function selectNewRole(Request $request)
    {
        $users = User::where('email', 'like', '%' . $request->q . '%')
            // ->orWhere('username', 'like', '%'.$request->q.'%')
            // ->orWhere('name', 'like', '%'.$request->q.'%')
            ->orWhere('mobile', 'like', '%' . $request->q . '%')
            ->select(['id', DB::raw('IFNULL(email, mobile) as email')])
            // ->select(['id','email','mobile'])
            ->take(30)->get();
        if ($users->count()) {
            if ($request->ajax()) {
                // return Response()->json(['items'=>$users]);
                return $users;
            }
        } else {
            if ($request->ajax()) {
                return $users;
            }
        }
    }

    public function roleAddNewPost(Request $request)
    {
        $type = $request->type;
        // dd($type);
        if (isset($request->new_user_mobile)) {
            $data['new_user_mobile'] = bdMobile($request->new_user_mobile);
            $validation = Validator::make($data, [
                "new_user_mobile" => "required|string|unique:users,mobile",
            ]);
        } else {
            $validation = Validator::make($request->all(), [
                "user" => "required|exists:users,id",
            ]);
        }
        if ($validation->fails()) {
            return back()
                ->withErrors($validation)
                ->withInput()
                ->with('error', 'Please, Fillup the form correctly.');
        }

        if ($request->new_user_mobile) {
            $randPass = rand(100000, 999999);
            $user = User::create([
                'name' => $request->name,
                'mobile' => $data['new_user_mobile'],
                'nid' => $request->nid ?? null,
                'password_temp' => $randPass,
                'password' => Hash::make($randPass),
                'addedby_type' => 'App\Models\User',
                'addedby_id' => auth()->user()->id,
            ]);
        } elseif ($request->user) {
            $user = User::find($request->user);
        } else {
            return redirect()->back()->with('error', 'Please, Fillup the form correctly.');
        }
        if ($type == 'depo') {
            $validation = Validator::make($request->all(), [
                'title' => 'required|string',
                "nid" => "required|string",
            ]);

            if ($validation->fails()) {
                return back()
                    ->withErrors($validation)
                    ->withInput()
                    ->with('error', 'Please, Fillup the form correctly.');
            }

            $depo = new Depo;
            $depo->user_id = $user->id;
            $depo->addedby_id = Auth::id();
            $depo->editedby_id = Auth::id();
            $depo->nid = $request->nid ?: null;
            $depo->name = $request->title ?: null;
            $depo->address = $request->address ?: null;
            $depo->contact_numbers = $request->contact_numbers ?: null;
            $depo->active = $request->active ? true : false;
            $depo->save();

            return back()->with('success', "New {$type} Successfully Created.");
        }

        if ($type == 'distributor') {

            $validation = Validator::make($request->all(), [
                'district' => "required|exists:districts,id",
                'title' => 'required|string',
                'depo' => 'required|exists:depos,id',
                "nid" => "required|string",
            ]);

            if ($validation->fails()) {
                return back()
                    ->withErrors($validation)
                    ->withInput()
                    ->with('error', 'Please, Fillup the form correctly.');
            }

            $depo = Depo::find($request->depo);

            $dis = District::find($request->district);

            if ($dis->division_id != $depo->division_id) {
                return back()->with('error', 'Please, select the district correctly and try again');
            }

            $distributor = new Distributor;
            $distributor->user_id = $user->id;
            $distributor->addedby_id = Auth::id();
            $distributor->editedby_id = Auth::id();
            $distributor->name = $request->title ?: null;
            $distributor->depo_id = $request->depo;
            $distributor->division_id = $depo->division_id;
            $distributor->district_id = $dis->id;
            $distributor->nid = $request->nid ?: null;
            $distributor->address = $request->address ?: null;
            $distributor->contact_numbers = $request->contact_numbers ?: null;
            $distributor->active = $request->active ? true : false;
            $distributor->save();

            return back()->with('success', "New {$type} Successfully Created.");
        }

        if ($type == 'dealer') {

            $validation = Validator::make($request->all(), [

                'area' => "nullable",
                'title' => 'required|string',
                'gm' => 'required',
                'nid' => 'required|string',

            ]);

            if ($validation->fails()) {
                return back()
                    ->withErrors($validation)
                    ->withInput()
                    ->with('error', 'Please, Fillup the form correctly.');
            }

            $dealer = new Dealer;
            $dealer->user_id = $user->id;
            $dealer->addedby_id = Auth::id();
            $dealer->editedby_id = Auth::id();
            $dealer->name = $request->title ?: null;

            $dealer->depo_id = $request->gm;
            $dealer->area = $request->area;

            $dealer->nid = $request->nid ?: null;
            $dealer->address = $request->address ?: null;
            $dealer->contact_numbers = $request->contact_numbers ?: null;
            $dealer->active = $request->active ? true : false;

            $dealer->save();

            return back()->with('success', "New {$type} Successfully Created.");
        }

        if ($type == 'agent') {

            $validation = Validator::make($request->all(), [

                'title' => 'required|string',
                'dealer' => 'required|exists:dealers,id',
                "nid" => "required|string",

            ]);

            if ($validation->fails()) {
                return back()
                    ->withErrors($validation)
                    ->withInput()
                    ->with('error', 'Please, Fillup the form correctly.');
            }

            $dealer = Dealer::find($request->dealer);

            $agent = new Agent;
            $agent->user_id = $user->id;
            $agent->addedby_id = Auth::id();
            $agent->editedby_id = Auth::id();
            $agent->name = $request->title ?: null;

            $agent->depo_id = $dealer->depo_id;
            $agent->area = $request->area;
            $agent->dealer_id = $dealer->id;
            $agent->nid = $request->nid ?: null;
            $agent->monthly_target = $request->monthly_target ?: null;
            $agent->address = $request->address ?: null;
            $agent->contact_numbers = $request->contact_numbers ?: null;
            $agent->active = $request->active ? true : false;
            $agent->save();

            foreach ($request->all() as $key => $value) {
                $cat = str_split($key, 9);
                if ($cat[0] == 'category_' && $value > 0) {
                    $categoryId = intval($cat[1]);

                    $srCom = new SrCommission;
                    $srCom->user_id = $user->id;
                    $srCom->agent_id = $agent->id;
                    $srCom->category_id = $categoryId;
                    $srCom->commission = $value;
                    $srCom->addedby_id = auth()->user()->id;
                    $srCom->save();
                }
            }

            return back()->with('success', "New SR Successfully Created.");
        }

        return back();
    }



    public function roleEdit(Depo $depo, Request $request)
    {
        $wb = WebsiteBalance::first();
        $type = $request->type;

        if ($type == 'distributor') {
            $admin = Distributor::find($request->role);
            $depos = Depo::all();

            $districts = District::orderBy('division_id')->get();

            return view('depo.roles.roleEdit', [
                'admin' => $admin,
                'type' => $request->type,
                'depos' => $depos,
                'districts' => $districts,
                'wb' => $wb,
                'depo' => $depo
            ]);
        } elseif ($type == 'dealer') {
            $admin = Dealer::find($request->role);
            $depos= Depo::all();
            return view('depo.roles.roleEdit', [
                'admin' => $admin,
                'type' => $request->type,
                'depo' => $depo,
                'wb' => $wb,
                'depos'=>$depos,
            ]);
        } elseif ($type == 'agent') {
            $admin = Agent::find($request->role);
            $dealers = Dealer::all();
            $srCommissions = $admin->commissions;
            $categories = EcommerceCategory::where('active', 1)->get();
            return view('depo.roles.roleEdit', [
                'admin' => $admin,
                'type' => $request->type,
                'dealers' => $dealers,
                'wb' => $wb,
                'srCommissions' => $srCommissions,
                'categories' => $categories,
                'depo' => $depo
            ]);
        }
    }

    public function roleEditPost(Request $request)
    {
        $type = $request->type;

        if (isset($request->new_user_mobile)) {
            $validation = Validator::make($request->all(), [
                "new_user_mobile" => "required|string|max:255|unique:users,mobile",
            ]);
        } else {
            $validation = Validator::make($request->all(), [
                // "user" => "required|exists:users,id",
            ]);
        }
        if ($validation->fails()) {
            return back()
                ->withErrors($validation)
                ->withInput()
                ->with('error', 'Please, Fillup the form correctly.');
        }

        if ($request->new_user_mobile) {
            $randPass = rand(100000, 999999);
            $user = User::create([
                'name' => $request->name,
                'mobile' => $request->new_user_mobile,
                // 'email' => $request->email,
                'password_temp' => $randPass,
                'password' => Hash::make($randPass),
                'addedby_type' => 'App\Models\User',
                'addedby_id' => auth()->user()->id,
            ]);
        } elseif ($request->user) {
            $user = User::find($request->user);
        } else {
            return redirect()->back()->with('error', 'Please, Fillup the form correctly.');
        }
        if ($type == 'depo') {
            $validation = Validator::make($request->all(), [

                // "user" => "required|exists:users,id",
                // 'area' => "nullable",
                'title' => 'required|string',
                'nid' => 'required|string',

            ]);

            if ($validation->fails()) {
                return back()
                    ->withErrors($validation)
                    ->withInput()
                    ->with('error', 'Please, Fillup the form correctly.');
            }

            $depo = Depo::find($request->role);
            $depo->user_id = $user->id ?: null;
            $depo->editedby_id = Auth::id();
            $depo->name = $request->title ?: null;
            $depo->address = $request->address ?: null;
            $depo->nid = $request->nid ?: null;
            $depo->contact_numbers = $request->contact_numbers ?: null;
            $depo->active = $request->active ? true : false;
            $depo->save();

            return back()->with('success', "{$type} Successfully Updated.");
        }

        if ($type == 'distributor') {
            $validation = Validator::make($request->all(), [

                // "user" => "required|exists:users,id",
                'district' => "nullable|exists:districts,id",
                'depo' => 'nullable|exists:depos,id',
                'title' => 'required|string',
                'nid' => 'required|string',

            ]);

            if ($validation->fails()) {
                return back()
                    ->withErrors($validation)
                    ->withInput()
                    ->with('error', 'Please, Fillup the form correctly.');
            }

            $distributor = Distributor::find($request->role);

            if (!$distributor->dealers->count()) {

                $depo = Depo::find($request->depo);

                $dis = District::find($request->district);

                if ($dis->division_id != $depo->division_id) {
                    return back()->with('error', 'Please, select the district correctly and try again');
                }

                $distributor->depo_id = $request->depo;
                $distributor->division_id = $depo->division_id;
                $distributor->district_id = $dis->id;
            }

            $distributor->user_id = $user->id ?: null;
            $distributor->editedby_id = Auth::id();
            $distributor->name = $request->title ?: null;
            $distributor->nid = $request->nid ?: null;

            $distributor->address = $request->address ?: null;
            $distributor->contact_numbers = $request->contact_numbers ?: null;
            $distributor->active = $request->active ? true : false;
            $distributor->save();

            return back()->with('success', "{$type} Successfully Updated.");
        }

        if ($type == 'dealer') {
            $validation = Validator::make($request->all(), [
                // "user" => "required|exists:users,id",
                'area' => "required",
                'title' => 'required|string',
                'nid' => 'required|string',
                'gm'=>'nullable',

            ]);

            if ($validation->fails()) {
                return back()
                    ->withErrors($validation)
                    ->withInput()
                    ->with('error', 'Please, Fillup the form correctly.');
            }

            $dealer = Dealer::find($request->role);

            $dealer->area = $request->area;
            $dealer->depo_id = $request->gm;
            $dealer->user_id = $user->id ?: null;
            $dealer->editedby_id = Auth::id();
            $dealer->name = $request->title ?: null;

            $dealer->address = $request->address ?: null;
            $dealer->contact_numbers = $request->contact_numbers ?: null;
            $dealer->active = $request->active ? true : false;
            // return $dealer;
            $dealer->save();

            return back()->with('success', "{$type} Successfully Updated.");
        }

        if ($type == 'agent') {

            $validation = Validator::make($request->all(), [

                // "user" => "required|exists:users,id",
                'title' => 'required|string',
                'dealer' => 'required|exists:dealers,id',
                'nid' => 'required|string',
                'area'=>'nullable',
            ]);

            if ($validation->fails()) {
                return back()
                    ->withErrors($validation)
                    ->withInput()
                    ->with('error', 'Please, Fillup the form correctly.');
            }

            $dealer = Dealer::find($request->dealer);

            $agent = Agent::find($request->role);

            $agent->user_id = $user->id ?: null;
            $agent->editedby_id = Auth::id();
            $agent->name = $request->title ?: null;
            $agent->nid = $request->nid ?: null;
            $agent->area = $request->area ?: null;
            $agent->depo_id = $dealer->depo_id;
            $agent->dealer_id = $dealer->id;

            $agent->monthly_target = $request->monthly_target ?: $agent->monthly_target;
            $agent->address = $request->address ?: null;
            $agent->contact_numbers = $request->contact_numbers ?: null;
            $agent->active = $request->active ? true : false;

            $agent->save();

            foreach ($request->all() as $key => $value) {
                $cat = str_split($key, 9);
                if ($cat[0] == 'category_' && $value > 0) {
                    $categoryId = intval($cat[1]);
                    $srCom = SrCommission::where('category_id', $categoryId)->where('agent_id', $agent->id)->first();
                    if (!$srCom) {
                        $srCom = new SrCommission;
                    }
                    $srCom->user_id = $user->id;
                    $srCom->agent_id = $agent->id;
                    $srCom->category_id = $categoryId;
                    $srCom->commission = $value;
                    $srCom->editedby_id = auth()->user()->id;
                    $srCom->save();
                }
            }

            return back()->with('success', "New {$type} Successfully Created.");
        }

        return back();
    }

    public function shopList(Depo $depo, Agent $agent)
    {
        $agent = $agent->where('depo_id', $depo->id)->first();
        $shops = $agent->createdSources()->where('depo_id', $depo->id)->latest()->paginate(50);
        return view('depo.roles.sr.shopList', [
            'agent' => $agent,
            'shops' => $shops,
            'depo' => $depo
        ]);
    }

    public function orderList(Depo $depo, Agent $agent)
    {
        $depoAgent = $agent->where('depo_id', $depo->id)->first();
        // dd($depoAgent);
        $orders = $depoAgent->orders()->latest()->paginate(50);
        return view('depo.roles.sr.orderList', [
            'agent' => $agent,
            'orders' => $orders,
            'depo' => $depo
        ]);
    }

    public function collectionList(Depo $depo, Agent $agent)
    {
        $depoAgent = $agent->where('depo_id', $depo->id)->first();
        $collections = $depoAgent->collections()->latest()->paginate(50);
        return view('depo.roles.sr.collectionList', [
            'agent' => $agent,
            'collections' => $collections,
            'depo' => $depo
        ]);
    }
    public function edit(Depo $depo, EcommercePaymentCollection $collection)
    {
        $agent = Agent::find($collection->agent_id);

        if ($agent->depo_id == $depo->id) {
            return view('depo.ecommerce.collection.edit', [
                'collection' => $collection,
                'depo' => $depo
            ]);
        } else {
            abort(401);
        }
    }

    public function update(EcommercePaymentCollection $collection)
    {
        if ($collection->status != 'varified') {
            $collection->status = 'varified';
            $collection->editedby_id = auth()->user()->id;
            $collection->save();

            $amount = $collection->paid_amount;

            $agent = $collection->agent;
            $source = $collection->source;

            $agent->total_collection = $agent->total_collection + $amount;
            $srCommission = round($agent->current_sale_commission / ($agent->current_sale / $amount), 2);
            $agent->current_sale = $agent->current_sale - $amount;
            $agent->current_collection = $agent->current_collection - $amount;
            $agent->current_sale_commission = $agent->current_sale_commission - $srCommission;
            $agent->total_collection_commission = $agent->total_collection_commission + $srCommission;
            $agent->current_income = $agent->current_income + $srCommission;
            $agent->save();

            $source->total_collection = $source->total_collection + $amount;
            $shopCommission = round($source->current_sale_commission / ($source->current_sale / $amount), 2);
            $source->current_sale = $source->current_sale - $amount;
            $source->current_collection = $source->current_collection - $amount;
            $source->current_sale_commission = $source->current_sale_commission - $shopCommission;
            $source->total_collection_commission = $source->total_collection_commission + $shopCommission;
            $source->save();
        }
        return redirect()->back()->with('success', 'This collection is varified!');
    }

    public function rejectCollection(EcommercePaymentCollection $collection)
    {
        if ($collection->status != 'varified') {
            $collection->status = 'rejected';
            $collection->editedby_id = auth()->user()->id;
            $collection->save();

        }
        return redirect()->back()->with('success', 'This collection is Rejected!');
    }


    public function returnList(Depo $depo, Agent $agent)
    {
        $agentDepo = $agent->where('depo_id', $depo->id)->first();
        $returns = $agentDepo->returns()->latest()->paginate(50);
        return view('depo.roles.sr.returnList', [
            'agent' => $agent,
            'returns' => $returns,
            'depo' => $depo

        ]);
    }

    public function commissionList(Depo $depo, Agent $agent)
    {
        $agentDepo = $agent->where('depo_id', $depo->id)->first();
        $commissions = $agentDepo->commissions()->latest()->paginate(50);
        return view('depo.roles.sr.commissionList', [
            'agent' => $agent,
            'depo' => $depo,
            'commissions' => $commissions,
        ]);
    }

    public function locationList(Depo $depo, Agent $agent)
    {
        $agentDepo = $agent->where('depo_id', $depo->id)->first();

        $locations = $agentDepo->srLocations()->latest()->paginate(100);
        return view('depo.roles.sr.locationList', [
            'agent' => $agent,
            'locations' => $locations,
            'depo' => $depo
        ]);
    }

    public function salaryList(Depo $depo, Agent $agent)
    {
        $agentDepo = $agent->where('depo_id', $depo->id)->first();
        // return $agentDepo;
        $salaries = $agentDepo->salaries()->latest()->paginate(100);
        return view('depo.roles.sr.salaryList', [
            'agent' => $agent,
            'salaries' => $salaries,
            'depo' => $depo
        ]);
    }
    public function giveSalary(Request $request)
    {
        $agent = Agent::find($request->agent);
       if (!$agent) {
           abort(404);
       }
        if ($agent->current_income < $request->payment) {
            return back()->with('warning', 'Insufficient Balance');
        }

        $previous_income = $agent->current_income;
        $sr_salary = new SrSalary;
        $sr_salary->agent_id = $agent->id;
        $sr_salary->previous_income = $previous_income;
        $sr_salary->paid_amount = $request->payment;
        $sr_salary->current_income = $sr_salary->previous_income - $sr_salary->paid_amount;
        $sr_salary->addedby_id = Auth::id();
        $sr_salary->trans_date = Carbon::now();
        $sr_salary->save();

        $agent->decrement('current_income', $request->payment);
        return redirect()->back()->with('success', 'Payment Successfull');
    }

    public function returnShow(Depo $depo, ShipmentReturn $return)
    {
        // dd($return);
        return view('depo.ecommerce.return.edit', [
            'return' => $return, 'depo' => $depo
        ]);
    }
}
