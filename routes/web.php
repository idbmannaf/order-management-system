<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\Agent\Ecommerce\AgentProductController;
use App\Http\Controllers\Sr\SrDashboardController;
use App\Http\Controllers\Sr\SrShopController;
use App\Http\Controllers\Sr\SrShopOrderController;
use App\Http\Controllers\Web\Depo\DepoDashboardController;
use App\Http\Controllers\Web\Admin\AdminDashboardController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

require __DIR__ . '/auth.php';

Route::get('/product-update', [
    'uses' => 'Ecommerce\WelcomeController@productUpdate',
    'as' => 'productUpdate',
]);
Route::get('/', [
    'uses' => 'Ecommerce\WelcomeController@welcome',
    'as' => 'welcome',
]);
Route::get('get/payment-type/{type}', [
    'uses' => 'Ecommerce\WelcomeController@AllPaymentType',
    'as' => 'AllPaymentType',
]);



Route::get('/ajax/distributor/{distributor}/upazila/get', [
    'uses' => 'Ecommerce\WelcomeController@getUpazilaByDistributor',
    'as' => 'getUpazilaByDistributor',
]);
Route::get('/ajax/depo/{depo}/district/get', [
    'uses' => 'Ecommerce\WelcomeController@getDistrictByDepo',
    'as' => 'getDistrictByDepo',
]);


Route::get('/dashboard', function () {
    // return view('dashboard');
    return redirect()->route('welcome');
})->middleware(['auth'])->name('dashboard');

Route::get('select/user', [
    'uses' => 'User\UserDashboardController@selectUser',
    'as' => 'user.selectUser',
]);
Route::get('/api/check-login', '\App\Http\Controllers\Api\Auth\UserAuthController@checkAuth');

// Route::prefix('api')->middleware(['auth'])->namespace('\App\Http\Controllers\Api')->group(function () {
//     Route::get('/my-info', 'User\UserController@getInfo');
//     Route::post('/update-profile', 'User\UserController@updateProfile');
//     Route::post('/profile-picture/upload', 'User\UserController@uploadProfilePicture');
// });
// // ecommerce routes
// Route::prefix('api')->namespace('\App\Http\Controllers\Api\Ecommerce')->group(function () {

//     Route::get('/products', 'IndexController@index');
//     Route::get('/products/recently-viewed', 'IndexController@recentlyViewedProducts');
//     Route::get('/products/best-deals', 'IndexController@recentlyViewedProducts');
//     Route::get('/product/{product}/details', 'IndexController@getProduct');
//     Route::get('/categories/get', 'IndexController@getCategories');
//     Route::get('/category/{category}', 'IndexController@getSubCategories');
//     Route::post('/cart/add/product/{product}', 'CartController@addToCart');
//     Route::post('/cart/remove/product/{product}', 'CartController@removeCart');
//     Route::get('/product/{product}/cart/get', 'CartController@getProductCart');
//     Route::get('/carts/get', 'CartController@getCarts');
//     Route::get('/order/{order}/details', 'CartController@getOrderDetails')->middleware(['auth']);
//     Route::post('/oder/place', 'CartController@placeOrder')->middleware(['auth']);
//     Route::post('/oder/payment', 'CartController@payment')->middleware(['auth']);
//     Route::post('/oder/payment-method', 'CartController@paymentMethod')->middleware(['auth']);
//     Route::get('/my-orders', 'CustomerOrderController@myOrders')->middleware(['auth']);
//     Route::get('/my-order/{order}', 'CustomerOrderController@myOrderDetails')->middleware(['auth']);
//     Route::post('/my-order/{order}/make-payment', 'CustomerOrderController@makePayment')->middleware(['auth']);
// });

// Route::prefix('api/agent')->namespace('\App\Http\Controllers\Api\Agent')->group(function () {

//     Route::get('agentships/get', 'AgentDashboardController@getAgentships');
//     Route::get('/{agent}/order/{order}/item/{item}/delete',[AgentProductController::class,'deleteOrderItem']);

//     Route::get('/{agent}/order/{order}/item/{item}/update/qty/{qty}/source/{source}',[AgentProductController::class,'UpdateOrderItem']);
//     Route::get('/{agent}/dashboard/info', 'AgentDashboardController@getAgentDashboardInfo');
//     Route::post('/{agent}/user/save', 'AgentDashboardController@saveUser');
//     Route::post('/{agent}/set/location', 'AgentDashboardController@setAgentLocation');
//     Route::post('/{agent}/my-salaries', 'AgentDashboardController@getAgentSalary');
//     Route::prefix('{agent}/ecommerce')->group(function () {
//         Route::resource('product', Ecommerce\AgentProductController::class);
//         Route::get('/orders', 'Ecommerce\AgentOrderController@index');
//         Route::get('/orders/type/{type}', 'Ecommerce\AgentOrderController@allOrders');
//         Route::get('/order/{order}/details', 'Ecommerce\AgentOrderController@orderDetails');
//         Route::get('/order/{order}/shipments', 'Ecommerce\AgentOrderController@orderShipments');
//         Route::get('/shipment/returns', 'Ecommerce\AgentReturnController@returnList');
//         Route::get('/shipment/return/{return}', 'Ecommerce\AgentReturnController@returnDetails');
//         Route::post('/order/{order}/shipment/{shipment}/collected', 'Ecommerce\AgentOrderController@orderShipmentCollected');
//         Route::post('/order/{order}/shipment/{shipment}/delivered', 'Ecommerce\AgentOrderController@orderShipmentDelivered');
//         Route::get('/order/{order}/shipment/{shipment}', 'Ecommerce\AgentOrderController@orderShipmentDetails');
//         Route::post('/order/{order}/shipment/{shipment}/return', 'Ecommerce\AgentOrderController@orderShipmentReturnPost');
//         Route::post('/order/place', 'Ecommerce\AgentOrderController@orderPlace');
//         Route::get('/shop/{source}/products/published', 'Ecommerce\AgentProductController@getPublishedProducts');
//         Route::get('/shop/{source}/orders/type/{type}', 'Ecommerce\AgentProductController@shopOrdersList');
//         Route::get('/shop/{source}/product/{product}/amount', 'Ecommerce\AgentProductController@getProductAmountByShop');
//         Route::get('product/{product}/details', 'Ecommerce\AgentProductController@productDetails');
//         Route::post('product/feature-image/upload',  'Ecommerce\AgentProductController@productFeatureImageChange');
//         Route::post('product-info/save',  'Ecommerce\AgentProductController@store');
//         Route::get('/categories/get',  'Ecommerce\AgentProductController@getCategories');
//         Route::post('/product/category/save',  'Ecommerce\AgentProductController@productCategorySave');
//         Route::post('/product/category/remove',  'Ecommerce\AgentProductController@productCategoryRemove');
//         Route::get('/product/category/check',  'Ecommerce\AgentProductController@productHasCategories');
//         Route::get('/product/owner/search',  'Ecommerce\AgentProductController@productOwnerSearch');
//         Route::get('/shop/search',  'Ecommerce\AgentSourceController@shopSearch');
//         Route::get('/product/owner/{user}/sources/get',  'Ecommerce\AgentSourceController@getSourcesByUser');
//         Route::get('/markets/get', 'Ecommerce\AgentSourceController@getMarketsByAgent');
//         Route::post('/product/owner/{user}/source/save', 'Ecommerce\AgentSourceController@store');
//         Route::post('/shop/save', 'Ecommerce\AgentSourceController@storeShop');
//         Route::post('/product/submit', 'Ecommerce\AgentProductController@submitProduct');
//         Route::get('/sales-list/get', 'Ecommerce\AgentProductController@getSalesList');
//         Route::get('/sales-list/{list}/products/get', 'Ecommerce\AgentProductController@getSalesListProducts');
//         Route::get('/users/get', 'Ecommerce\AgentSourceController@getUsers');
//         Route::get('/sources/get', 'Ecommerce\AgentSourceController@getSources');
//         Route::get('/shop/search', 'Ecommerce\AgentSourceController@searchSources');
//         Route::get('shop/{source}/products/list/search', 'Ecommerce\AgentProductController@searchProductList');
//         Route::get('/shop/{source}/details', 'Ecommerce\AgentSourceController@shopDetails');

//         Route::post('/collection/save', 'Ecommerce\AgentCollectionController@store');
//         Route::get('/collection/list', 'Ecommerce\AgentCollectionController@index');
//     });
// });
Route::get('login/as/admin',[AdminDashboardController::class,'loginAsAdmin'])->name('admin.loginAsAdmin');

//admin
Route::group(['middleware' => ['myrole:admin', 'auth'], 'prefix' => 'admin'], function () {

    Route::get('login/as/user/{user}',[AdminDashboardController::class,'LoginAsUser'])->name('admin.LoginAsUser');
    Route::get('file-export/type/{type}/status/{status?}', [AdminDashboardController::class, 'fileExport'])->name('file-export');
    Route::get('admins/payment/type',[AdminDashboardController::class,'paymentType'])->name('admin.paymentType');
    Route::get('admins/payment/add',[AdminDashboardController::class,'paymentAdd'])->name('admin.paymentAdd');
    Route::post('admins/payment/store',[AdminDashboardController::class,'paymentStore'])->name('admin.paymentStore');
    Route::get('admins/payment/{payment}/edit',[AdminDashboardController::class,'paymentEdit'])->name('admin.paymentEdit');
    Route::post('admins/payment/{payment}/update',[AdminDashboardController::class,'paymentUpdate'])->name('admin.paymentUpdate');

    Route::get('change/price',[AdminDashboardController::class,'changeMultiplePrice'])->name('admin.changeMultiplePrice');
    Route::get('get/data/type/{type}',[AdminDashboardController::class,'getData'])->name('admin.getData');
    Route::post('update/price',[AdminDashboardController::class,'updatePrice'])->name('admin.updatePrice');


    Route::get('sr/due/list',[AdminDashboardController::class,'dueList'])->name('admin.dueList');
    Route::get('sr/{sr}/due/list',[AdminDashboardController::class,'SrDueList'])->name('admin.SrDueList');

    Route::get('ready/product/list',[AdminDashboardController::class,'readyProducts'])->name('admin.readyProducts');

    Route::get('/dashboard', [
        'uses' => 'Admin\AdminDashboardController@dashboard',
        'as' => 'admin.dashboard',
    ]);

    Route::get('/dashboard/chart-data/get', [
        'uses' => 'Admin\AdminDashboardController@getChartData',
        'as' => 'admin.getChartData',
    ]);

    Route::get('admins/all/', [
        'uses' => 'Admin\Role\AdminRoleController@adminsAll',
        'as' => 'admin.adminsAll',
    ]);
    Route::get('factory/all/', [
        'uses' => 'Admin\Role\AdminRoleController@factoryAll',
        'as' => 'admin.factoryAll',
    ]);

    Route::get('select/new/role', [
        'as' => 'admin.selectNewRole',
        'uses' => 'Admin\Role\AdminRoleController@selectNewRole',
    ]);
    Route::get('select/new/sr/role', [
        'as' => 'admin.selectNewSrRole',
        'uses' => 'Admin\Role\AdminRoleController@selectNewSrRole',
    ]);

    Route::post('admin/add/new/post', [
        'uses' => 'Admin\Role\AdminRoleController@adminAddNewPost',
        'as' => 'admin.adminAddNewPost',
    ]);
    Route::post('factory/add/new/post', [
        'uses' => 'Admin\Role\AdminRoleController@factoryAddNewPost',
        'as' => 'admin.factoryAddNewPost',
    ]);

    Route::post('admin/delete/{role}', [
        'uses' => 'Admin\Role\AdminRoleController@adminDelete',
        'as' => 'admin.adminDelete',
    ]);
    Route::post('factory/delete/{role}', [
        'uses' => 'Admin\Role\AdminRoleController@factoryDelete',
        'as' => 'admin.factoryDelete',
    ]);


    // project
    // Route::get('/projects', [
    //     'uses' => 'Admin\Project\AdminProjectController@projects',
    //     'as' => 'admin.projects',
    // ]);
    // Route::get('/project/new', [
    //     'uses' => 'Admin\Project\AdminProjectController@projectNew',
    //     'as' => 'admin.project.new',
    // ]);
    // Route::post('/project/save', [
    //     'uses' => 'Admin\Project\AdminProjectController@projectSave',
    //     'as' => 'admin.project.save',
    // ]);

    //dealer depo agent roles start

    Route::get('roles/all/type/{type}', [
        'uses' => 'Admin\Role\AdminRoleController@rolesAll',
        'as' => 'admin.rolesAll',
    ]);

    Route::get('roles/search/type/{type}', [
        'uses' => 'Admin\Role\AdminRoleController@searchRoles',
        'as' => 'admin.roles.search',
    ]);

    Route::get('roles/edit/type/{type}/role/{role}', [
        'uses' => 'Admin\Role\AdminRoleController@roleEdit',
        'as' => 'admin.roleEdit',
    ]);

    Route::post('role/edit/post/type/{type}/role/{role}', [
        'uses' => 'Admin\Role\AdminRoleController@roleEditPost',
        'as' => 'admin.roleEditPost',
    ]);

    Route::post('role/delete/role/{role}/type/{type}', [
        'uses' => 'Admin\Role\AdminRoleController@roleDelete',
        'as' => 'admin.roleDelete',
    ]);

    Route::get('roles/all-type/{type}', [
        'uses' => 'Admin\Role\AdminRoleController@rolesAllType',
        'as' => 'admin.rolesAllType',
    ]);

    Route::get('role/sr/{agent}/shops', [
        'uses' => 'Admin\Role\AdminSrController@shopList',
        'as' => 'admin.sr.shops',
    ]);
    Route::get('role/sr/{agent}/orders', [
        'uses' => 'Admin\Role\AdminSrController@orderList',
        'as' => 'admin.sr.orders',
    ]);
    Route::get('role/sr/{agent}/collections', [
        'uses' => 'Admin\Role\AdminSrController@collectionList',
        'as' => 'admin.sr.collections',
    ]);

    Route::get('role/sr/{agent}/returns', [
        'uses' => 'Admin\Role\AdminSrController@returnList',
        'as' => 'admin.sr.returns',
    ]);
    Route::get('role/sr/{agent}/commissions', [
        'uses' => 'Admin\Role\AdminSrController@commissionList',
        'as' => 'admin.sr.commissions',
    ]);
    Route::get('role/sr/{agent}/locations', [
        'uses' => 'Admin\Role\AdminSrController@locationList',
        'as' => 'admin.sr.locations',
    ]);
    Route::get('role/sr/{agent}/salaries', [
        'uses' => 'Admin\Role\AdminSrController@salaryList',
        'as' => 'admin.sr.salaryList',
    ]);
    Route::post('role/sr/{agent}/salary/pay', [
        'uses' => 'Admin\Role\AdminSrController@salaryPay',
        'as' => 'admin.sr.salary.pay',
    ]);

    Route::post('payment-add-to-role/type/{type}/role/{role}', [
        'uses' => 'Admin\Role\AdminRoleController@paymentAddToRole',
        'as' => 'admin.paymentAddToRole',
    ]);

    Route::post('payment-receive-from-role/type/{type}/role/{role}', [
        'uses' => 'Admin\Role\AdminRoleController@paymentReceiveFromRole',
        'as' => 'admin.paymentReceiveFromRole',
    ]);

    Route::post('role/add/new/post/type/{type}', [
        'uses' => 'Admin\Role\AdminRoleController@roleAddNewPost',
        'as' => 'admin.roleAddNewPost',
    ]);
    //dealer depo agent roles end

    //depo-dist-dealer-auto-add start
    // Route::get('depo-dist-dealer-auto-add/type/{type}', [
    // 'as' => 'admin.depoDistDealerAutoAdd',
    // 'uses' => 'Admin\Role\AdminRoleController@depoDistDealerAutoAdd'
    // ]);
    //depo-dist-dealer-auto-add end

    //category start
    Route::get('ecommerce/product/categories', [
        'uses' => 'Admin\Ecommerce\AdminProductCategoryController@productCategories',
        'as' => 'admin.productCategories',
    ]);
    Route::get('ecommerce/product/categories/update/by/jstree/type/{type}', [
        'uses' => 'Admin\Ecommerce\AdminProductCategoryController@updateCategoriesByJsTree',
        'as' => 'admin.updateCategoriesByJsTree',
    ]);
    Route::post('ecommerce/product/category/update/category/{cat}', [
        'uses' => 'Admin\Ecommerce\AdminProductCategoryController@categoryUpdatePost',
        'as' => 'admin.categoryUpdatePost',
    ]);
    //category end

    // ecommerce
    Route::prefix('/manage')->group(function () {
        Route::get('/products', [
            'uses' => 'Admin\Ecommerce\AdminProductController@index',
            'as' => 'admin.ecommerce.products',
        ]);
        Route::get('/product/create', [
            'uses' => 'Admin\Ecommerce\AdminProductController@create',
            'as' => 'admin.ecommerce.product.create',
        ]);
        Route::post('/product/store', [
            'uses' => 'Admin\Ecommerce\AdminProductController@store',
            'as' => 'admin.ecommerce.product.store',
        ]);
        Route::get('/product/{product}', [
            'uses' => 'Admin\Ecommerce\AdminProductController@show',
            'as' => 'admin.ecommerce.product',
        ]);
        Route::get('/product/{product}/edit', [
            'uses' => 'Admin\Ecommerce\AdminProductController@edit',
            'as' => 'admin.ecommerce.product.edit',
        ]);
        Route::post('/product/update/{product?}', [
            'uses' => 'Admin\Ecommerce\AdminProductController@update',
            'as' => 'admin.ecommerce.product.update',
        ]);
        Route::post('/product/{product}/publish', [
            'uses' => 'Admin\Ecommerce\AdminProductController@publish',
            'as' => 'admin.ecommerce.product.publish',
        ]);
        Route::post('/product/{product}/price/update/{price?}', [
            'uses' => 'Admin\Ecommerce\AdminProductController@priceUpdate',
            'as' => 'admin.ecommerce.product.priceUpdate',
        ]);
        Route::get('/orders/type/{type?}', [
            'uses' => 'Admin\Ecommerce\AdminOrderController@index',
            'as' => 'admin.ecommerce.orders',
        ]);
        Route::get('/order/{order}', [
            'uses' => 'Admin\Ecommerce\AdminOrderController@show',
            'as' => 'admin.ecommerce.order',
        ]);
        Route::post('/order/{order}', [
            'uses' => 'Admin\Ecommerce\AdminOrderController@orderOrderStatusUpdate',
            'as' => 'admin.ecommerce.orderOrderStatusUpdate',
        ]);
        Route::get('/shipment/returns/type/{type?}', [
            'uses' => 'Admin\Ecommerce\AdminOrderController@returnList',
            'as' => 'admin.ecommerce.shipment.returns',
        ]);
        Route::get('/shipment/return/{return}', [
            'uses' => 'Admin\Ecommerce\AdminOrderController@returnShow',
            'as' => 'admin.ecommerce.shipment.return',
        ]);
        Route::post('/shipment/return/{return}/status/{status}', [
            'uses' => 'Admin\Ecommerce\AdminOrderController@returnStatusUpdate',
            'as' => 'admin.ecommerce.shipment.return.statusUpdate',
        ]);
        Route::post('/shipment/return/{return}/item/{item}/status/{status}', [
            'uses' => 'Admin\Ecommerce\AdminOrderController@returnItemStatusUpdate',
            'as' => 'admin.ecommerce.shipment.return.returnItemStatusUpdate',
        ]);

        // Route::post('/shipment/return/{return}/status/{status}', [
        //     'uses' => 'Admin\Ecommerce\AdminOrderController@returnStatusUpdate',
        //     'as' => 'admin.ecommerce.shipment.return.statusUpdate',
        // ]);

        Route::get('/users', [
            'uses' => 'Admin\Ecommerce\AdminUserController@index',
            'as' => 'admin.ecommerce.users',
        ]);
        Route::get('/user/{user}', [
            'uses' => 'Admin\Ecommerce\AdminUserController@show',
            'as' => 'admin.ecommerce.user.edit',
        ]);
        Route::post('/user/{user}', [
            'uses' => 'Admin\Ecommerce\AdminUserController@update',
            'as' => 'admin.ecommerce.user.update',
        ]);
        Route::post('/user/{user}/password', [
            'uses' => 'Admin\Ecommerce\AdminUserController@updatePassword',
            'as' => 'admin.ecommerce.user.password',
        ]);
        Route::get('/sales-list', [
            'uses' => 'Admin\Ecommerce\AdminSalesListController@index',
            'as' => 'admin.ecommerce.salesLists',
        ]);
        Route::get('/sales-list/crate', [
            'uses' => 'Admin\Ecommerce\AdminSalesListController@create',
            'as' => 'admin.ecommerce.salesList.create',
        ]);
        Route::get('/sales-list/{list}/edit', [
            'uses' => 'Admin\Ecommerce\AdminSalesListController@edit',
            'as' => 'admin.ecommerce.salesList.edit',
        ]);
        Route::post('sales-list/store/{list?}', [
            'uses' => 'Admin\Ecommerce\AdminSalesListController@store',
            'as' => 'admin.ecommerce.salesList.store',
        ]);
        Route::delete('sales-list/{list}/delete', [
            'uses' => 'Admin\Ecommerce\AdminSalesListController@destroy',
            'as' => 'admin.ecommerce.salesList.destroy',
        ]);
        Route::get('/sales-list/product/search', [
            'uses' => 'Admin\Ecommerce\AdminSalesListController@searchProduct',
            'as' => 'admin.ecommerce.salesList.product.search',
        ]);
        Route::get('/sales-list/item/{listItem}/product/{product}/detach', [
            'uses' => 'Admin\Ecommerce\AdminSalesListController@detachProduct',
            'as' => 'admin.ecommerce.salesList.product.detach',
        ]);
        Route::get('/shop/type/{type?}', [
            'uses' => 'Admin\Ecommerce\AdminSourceController@index',
            'as' => 'admin.shops',
        ]);
        Route::get('/shop/{shop}/orders', [
            'uses' => 'Admin\Ecommerce\AdminSourceController@orderList',
            'as' => 'admin.shop.orders',
        ]);
        Route::get('/shop/{shop}/collections', [
            'uses' => 'Admin\Ecommerce\AdminSourceController@collectionList',
            'as' => 'admin.shop.collections',
        ]);
        Route::get('/shop/{shop}/returns', [
            'uses' => 'Admin\Ecommerce\AdminSourceController@retutnList',
            'as' => 'admin.shop.returns',
        ]);
        Route::get('/shop/{shop}/comissions', [
            'uses' => 'Admin\Ecommerce\AdminSourceController@comissionList',
            'as' => 'admin.shop.comissions',
        ]);
        Route::get('/shop/{shop}/edit', [
            'uses' => 'Admin\Ecommerce\AdminSourceController@edit',
            'as' => 'admin.shop.edit',
        ]);
        Route::post('/shop/{shop}/update', [
            'uses' => 'Admin\Ecommerce\AdminSourceController@update',
            'as' => 'admin.shop.update',
        ]);
        Route::get('/collections/type/{type?}', [
            'uses' => 'Admin\Ecommerce\AdminCollectionController@index',
            'as' => 'admin.collections',
        ]);
        Route::get('/collections/latest/by/shop', [
            'uses' => 'Admin\Ecommerce\AdminCollectionController@latestCollectionsByShop',
            'as' => 'admin.latestCollectionsByShop',
        ]);
        Route::get('/collection/{collection}', [
            'uses' => 'Admin\Ecommerce\AdminCollectionController@edit',
            'as' => 'admin.collection.edit',
        ]);
        Route::post('/collection/{collection}/varify', [
            'uses' => 'Admin\Ecommerce\AdminCollectionController@update',
            'as' => 'admin.collection.varify',
        ]);
        Route::post('/collection/{collection}/reject', [
            'uses' => 'Admin\Ecommerce\AdminCollectionController@rejectCollection',
            'as' => 'admin.collection.reject',
        ]);
    });
    // ecommerce

    /// report
    Route::get('/report/{type}', [
        'uses' => 'Admin\AdminReportController@index',
        'as' => 'admin.report',
    ]);

    Route::get('/commissions', [
        'uses' => 'Admin\AdminReportController@commissionList',
        'as' => 'admin.commissionList',
    ]);

    Route::get('/search/{type}', [
        'uses' => 'Admin\AdminSearchController@search',
        'as' => 'admin.search',
    ]);
});

//admin
Route::group(['middleware' => ['myrole:factory', 'auth'], 'prefix' => 'factory'], function () {
    Route::get('/', [
        'uses' => 'Factory\FactoryDashboardController@index',
        'as' => 'factory.dashboard',
    ]);
    Route::get('/orders/confirmed', [
        'uses' => 'Factory\FactoryOrderController@index',
        'as' => 'factory.orders',
    ]);
    Route::get('/order/{order}/process', [
        'uses' => 'Factory\FactoryOrderController@process',
        'as' => 'factory.order.process',
    ]);
    Route::post('/order/{order}/process', [
        'uses' => 'Factory\FactoryOrderController@processSave',
        'as' => 'factory.order.process.save',
    ]);
    Route::get('/orders/processing', [
        'uses' => 'Factory\FactoryOrderController@ordersProcessing',
        'as' => 'factory.orders.processing',
    ]);
    Route::post('/order/{shipment}/ready-to-ship', [
        'uses' => 'Factory\FactoryOrderController@readyToShipSave',
        'as' => 'factory.order.readyToShip',
    ]);
    Route::get('/orders/ready-to-ship', [
        'uses' => 'Factory\FactoryOrderController@ordersReadyToShip',
        'as' => 'factory.orders.readyToShip',
    ]);
    Route::post('/order/{shipment}/ship', [
        'uses' => 'Factory\FactoryOrderController@shipSave',
        'as' => 'factory.order.ship',
    ]);
    Route::get('/orders/shipped', [
        'uses' => 'Factory\FactoryOrderController@ordersShipped',
        'as' => 'factory.orders.shipped',
    ]);

    Route::get('/order/{order}/shipped/print/details', [
        'uses' => 'Factory\FactoryOrderController@ordersShippedPrint',
        'as' => 'factory.orders.ordersShippedPrint',
    ]);
    Route::get('/order/{order}/shipped/download/type/{type}', [
        'uses' => 'Factory\FactoryOrderController@downloadOrdersShipped',
        'as' => 'factory.orders.downloadOrdersShipped',
    ]);
    Route::get('/orders/delivered', [
        'uses' => 'Factory\FactoryOrderController@ordersDelivered',
        'as' => 'factory.orders.delivered',
    ]);
    Route::get('/orders/incomplete', [
        'uses' => 'Factory\FactoryOrderController@ordersIncomplete',
        'as' => 'factory.orders.incomplete',
    ]);

    Route::get('/products', [
        'uses' => 'Factory\FactoryProductController@index',
        'as' => 'factory.products',
    ]);

    Route::get('/ready/products', [
        'uses' => 'Factory\FactoryProductController@readyProducts',
        'as' => 'factory.readyProducts',
    ]);

    Route::get('/product/{product}', [
        'uses' => 'Factory\FactoryProductController@show',
        'as' => 'factory.product.view',
    ]);
    Route::get('/replacements/type/{type}', [
        'uses' => 'Factory\FactoryReplacementController@index',
        'as' => 'factory.replacements',
    ]);
    Route::get('/replacement/{replace}/process', [
        'uses' => 'Factory\FactoryReplacementController@process',
        'as' => 'factory.replacement.process',
    ]);
    Route::post('/replacement/{replace}/process/save', [
        'uses' => 'Factory\FactoryReplacementController@processSave',
        'as' => 'factory.replacement.process.save',
    ]);
});

//distributor
Route::group(['middleware' => ['myrole:dist', 'auth'], 'prefix' => 'distributor'], function () {

    Route::get('dashboard/distributor/{distributor}', [
        'uses' => 'Distributor\DistributorDashboardController@dashboard',
        'as' => 'distributor.dashboard',
    ]);
});

Route::group(['middleware' => ['myrole:gm', 'auth'], 'prefix' => 'gm'], function () {

    Route::get('dashboard/gm/{depo}', [
        'uses' => 'Depo\DepoDashboardController@dashboard',
        'as' => 'depo.dashboard',
    ]);



    Route::get('dashboard/gm/{depo}/due/list',[DepoDashboardController::class,'dueList'])->name('gm.dueList');
    Route::get('dashboard/gm/{depo}/sr/{sr}/due/list',[DepoDashboardController::class,'SrDueList'])->name('gm.SrDueList');

    Route::get('/report/{type}/gm/{depo?}', [
        'uses' => 'Depo\DepoDashboardController@report',
        'as' => 'gm.report',
    ]);
    Route::get('/dashboard/chart-data/get/', [
        'uses' => 'Depo\DepoDashboardController@getChartData',
        'as' => 'depo.getChartData',
    ]);

    Route::get('gm/{depo}/collections/type/{type}', [
        'uses' => 'Depo\DepoSourceController@index',
        'as' => 'depo.collections',
    ]);
    Route::get('gm/{depo}/collections/search', [
        'uses' => 'Depo\DepoSourceController@collectionSearch',
        'as' => 'depo.collectionSearch',
    ]);


    Route::get('gm/{depo}/shipment/returns/type/{type}', [
        'uses' => 'Depo\DepoOrderController@returnList',
        'as' => 'depo.ecommerce.shipment.returns',
    ]);


    Route::get('/gm/{depo}/shop/{shop}/edit', [
        'uses' => 'Depo\DepoSourceController@edit',
        'as' => 'depo.shop.edit',
    ]);

    Route::get('/gm/{depo}/shop/{shop}/orders', [
        'uses' => 'Depo\DepoSourceController@orderList',
        'as' => 'depo.shop.orders',
    ]);

    Route::get('/gm/{depo}/shop/{shop}/collections', [
        'uses' => 'Depo\DepoSourceController@collectionList',
        'as' => 'depo.shop.collections',
    ]);

    Route::get('/gm/{depo}/collection/{collection}', [
        'uses' => 'Depo\DepoSourceController@collectionEdit',
        'as' => 'depo.collection.collectionEdit',
    ]);

    Route::get('/{depo}/shop/{shop}/returns', [
        'uses' => 'Depo\DepoSourceController@retutnList',
        'as' => 'depo.shop.returns',
    ]);

    // depo.shop.comissions
    Route::get('/{depo}/shop/{shop}/comissions', [
        'uses' => 'Depo\DepoSourceController@comissionList',
        'as' => 'depo.shop.comissions',
    ]);

    Route::post('/shop/{shop}/update', [
        'uses' => 'Depo\DepoSourceController@update',
        'as' => 'depo.shop.update',
    ]);

    Route::get('all/orders/gm/{depo}/type/{type?}', [
        'uses' => 'Depo\DepoOrderController@allOrders',
        'as' => 'depo.allOrders',
    ]);
    Route::any('all/orders/search/{depo}', [
        'uses' => 'Depo\DepoOrderController@allOrdersSearch',
        'as' => 'depo.allOrdersSearch',
    ]);

    Route::get('order/details/gm/{depo}/order/{order}', [
        'uses' => 'Depo\DepoOrderController@orderDetails',
        'as' => 'depo.ecommerce.orderDetails',
    ]);

    Route::post('order/details/gm/{depo}/order/{order}', [
        'uses' => 'Depo\DepoOrderController@orderOrderStatusUpdate',
        'as' => 'depo.ecommerce.orderOrderStatusUpdate',
    ]);

    Route::get('/gm/{depo}/shop/type/{type}', [
        'uses' => 'Depo\DepoOrderController@shops',
        'as' => 'depo.shops',
    ]);
    Route::get('/gm/{depo}/sr/{sr}/shops', [
        'uses' => 'Depo\DepoOrderController@srShops',
        'as' => 'depo.srShops',
    ]);


    Route::get('select/new/role', [
        'as' => 'depo.selectNewRole',
        'uses' => 'Depo\DepoRoleController@selectNewRole',
    ]);

    Route::post('role/add/new/post/type/{type}', [
        'uses' => 'Depo\DepoRoleController@roleAddNewPost',
        'as' => 'depo.roleAddNewPost',
    ]);

    Route::get('roles/all/gm/{depo}/type/{type}', [
        'uses' => 'Depo\DepoRoleController@rolesAll',
        'as' => 'depo.rolesAll',
    ]);

    Route::post('gm/shipment/return/{return}/status/{status}', [
        'uses' => 'Depo\DepoRoleController@returnStatusUpdate',
        'as' => 'depo.ecommerce.shipment.return.statusUpdate',
    ]);

    Route::get('gm/{depo}/shipment/return/{return}', [
        'uses' => 'Depo\DepoRoleController@returnShow',
        'as' => 'depo.ecommerce.shipment.return',
    ]);

    Route::get('edit/role/gm/{depo}/type/{type}/role/{role}', [
        'as' => 'depo.roleEdit',
        'uses' => 'Depo\DepoRoleController@roleEdit'
    ]);

    Route::post('role/edit/post/type/{type}/role/{role}', [
        'uses' => 'Depo\DepoRoleController@roleEditPost',
        'as' => 'depo.roleEditPost',
    ]);

    Route::get('role/sr/depo/{depo}/sr/{agent}/shops', [
        'uses' => 'Depo\DepoRoleController@shopList',
        'as' => 'depo.sr.shops',
    ]);

    Route::get('role/gm/{depo}/sr/{agent}/orders', [
        'uses' => 'Depo\DepoRoleController@orderList',
        'as' => 'depo.sr.orders',
    ]);


    Route::get('gm/{depo}/order/{order}', [
        'uses' => 'Depo\DepoOrderController@show',
        'as' => 'depo.ecommerce.order',
    ]);

    Route::get('role/depo/{depo}/sr/{agent}/collections', [
        'uses' => 'Depo\DepoRoleController@collectionList',
        'as' => 'depo.sr.collections',
    ]);

    Route::get('gms/{depo}/collection/{collection}', [
        'uses' => 'Depo\DepoRoleController@edit',
        'as' => 'depo.collection.edit',
    ]);

    Route::post('/gm/collection/{collection}/varify', [
        'uses' => 'Depo\DepoRoleController@update',
        'as' => 'depo.collection.varify',
    ]);
    Route::post('/gm/collection/{collection}/reject', [
        'uses' => 'Depo\DepoRoleController@rejectCollection',
        'as' => 'depo.collection.reject',
    ]);

    Route::get('role/gms/{depo}/sr/{agent}/returns', [
        'uses' => 'Depo\DepoRoleController@returnList',
        'as' => 'depo.sr.returns',
    ]);

    Route::get('role/gms/{depo}/sr/{agent}/commissions', [
        'uses' => 'Depo\DepoRoleController@commissionList',
        'as' => 'depo.sr.commissions',
    ]);

    Route::get('role/gms/{depo}/sr/{agent}/locations', [
        'uses' => 'Depo\DepoRoleController@locationList',
        'as' => 'depo.sr.locations',
    ]);
    Route::get('role/gms/{depo}/sr/{agent}/salaries', [
        'uses' => 'Depo\DepoRoleController@salaryList',
        'as' => 'depo.sr.salaryList',
    ]);
    Route::post('role/gms/{depo}/sr/{agent}/salaries', [
        'uses' => 'Depo\DepoRoleController@giveSalary',
        'as' => 'depo.sr.giveSalary',
    ]);
});

//dealer
Route::group(['middleware' => ['myrole:dealer', 'auth'], 'prefix' => 'smo'], function () {
    Route::get('/', [
        'uses' => 'Dealer\DealerDashboardController@index',
        'as' => 'dealer.index',
    ]);

    Route::get('dashboard/som/{dealer}', [
        'uses' => 'Dealer\DealerDashboardController@dashboard',
        'as' => 'dealer.dashboard',
    ]);
    Route::get('all-markets/som/{dealer}', [
        'uses' => 'Dealer\DealerMarketController@allMarkets',
        'as' => 'dealer.allMarkets',
    ]);
    Route::get('all-shops/som/{dealer}/type/{type}', [
        'uses' => 'Dealer\DealerMarketController@allShops',
        'as' => 'dealer.allShops',
    ]);

    Route::get('orders/som/{dealer}/type/{type}', [
        'uses' => 'Dealer\DealerMarketController@orders',
        'as' => 'dealer.orders',
    ]);

    Route::get('view/order/{order}/{dealer}', [
        'uses' => 'Dealer\DealerMarketController@viewOrder',
        'as' => 'dealer.viewOrder',
    ]);

    Route::get('market-edit/som/{dealer}/market/{market}', [
        'uses' => 'Dealer\DealerMarketController@marketEdit',
        'as' => 'dealer.marketEdit',
    ]);

    Route::post('market-edit-post/som/{dealer}/market/{market}', [
        'uses' => 'Dealer\DealerMarketController@marketEditPost',
        'as' => 'dealer.marketEditPost',
    ]);

    Route::get('all-agents/som/{dealer}', [
        'uses' => 'Dealer\DealerRoleController@allAgents',
        'as' => 'dealer.allAgents',
    ]);

    Route::post('new-agent/post/som/{dealer}', [
        'uses' => 'Dealer\DealerRoleController@newAgentPost',
        'as' => 'dealer.newAgentPost',
    ]);

    Route::get('agent-edit/som/{dealer}/agent/{agent}', [
        'uses' => 'Dealer\DealerRoleController@agentEdit',
        'as' => 'dealer.agentEdit',
    ]);

    Route::post('agent-edit-post/som/{dealer}/agent/{agent}', [
        'uses' => 'Dealer\DealerRoleController@agentEditPost',
        'as' => 'dealer.agentEditPost',
    ]);

    Route::get('all-leads/som/{dealer}/status/{status}', [
        'uses' => 'Dealer\DealerLeadController@allLeads',
        'as' => 'dealer.allLeads',
    ]);

    Route::get('lead-single-edit/som/{dealer}/lead/{lead}', [
        'uses' => 'Dealer\DealerLeadController@leadSingleEdit',
        'as' => 'dealer.leadSingleEdit',
    ]);

    // //fi of lead
    // Route::get('lead-feature-img/delete/dealer/{dealer}/lead/{lead}', [
    //     'uses' =>'Dealer\DealerLeadController@leadFeatureImageDelete',
    //     'as' => 'dealer.leadFeatureImageDelete'
    // ]);

    // Route::post('lead-feature-image/change/dealer/{dealer}/lead/{lead}', [
    //     'uses' =>'Dealer\DealerLeadController@leadFeatureImageChange',
    //     'as' => 'dealer.leadFeatureImageChange'
    // ]);

    // Route::get('lead-source-change/dealer/{dealer}/lead/{lead}', [
    //     'uses' =>'Dealer\DealerLeadController@leadSourceChange',
    //     'as' => 'dealer.leadSourceChange'
    // ]);

    // Route::post('lead-info-update/dealer/{dealer}/lead/{lead}', [
    //     'uses' =>'Dealer\DealerLeadController@leadInfoUpdate',
    //     'as' => 'dealer.leadInfoUpdate'
    // ]);

    // //extra image

    // Route::post('lead-feature-image/change/dealer/{dealer}/lead/{lead}', [
    //     'uses' =>'Dealer\DealerLeadController@leadFeatureImageChange',
    //     'as' => 'dealer.leadFeatureImageChange'
    // ]);

    // Route::get('lead-extra-image-change/modal-open/dealer/{dealer}/lead/{lead}', [
    //     'uses' =>'Dealer\DealerLeadController@leadExtraImageChangeModalOpen',
    //     'as' => 'dealer.leadExtraImageChangeModalOpen'
    // ]);

    // Route::post('lead-extra-image/change-post/dealer/{dealer}/lead/{lead}', [
    //     'uses' =>'Dealer\DealerLeadController@leadExtraImageChangePost',
    //     'as' => 'dealer.leadExtraImageChangePost'
    // ]);

    // Route::get('lead-extra-img/delete/dealer/{dealer}/media/{media}', [
    //     'uses' =>'Dealer\DealerLeadController@leadExtraImageDelete',
    //     'as' => 'dealer.leadExtraImageDelete'
    // ]);

    // Route::get('all-orders/dealer/{dealer}/status/{status}', [
    //     'uses' =>'Dealer\DealerOrderController@allOrders',
    //     'as' => 'dealer.allOrders'
    // ]);

    // Route::get('order-single-edit/dealer/{dealer}/order/{order}', [
    //     'uses' =>'Dealer\DealerOrderController@orderSingleEdit',
    //     'as' => 'dealer.orderSingleEdit'
    // ]);

    // Route::get('order-item-single-cancel/dealer/{dealer}/item/{item}', [
    //     'uses' =>'Dealer\DealerOrderController@orderItemSingleCancel',
    //     'as' => 'dealer.orderItemSingleCancel'
    // ]);

    // Route::post('order-info-update/dealer/{dealer}/order/{order}', [
    //     'uses' =>'Dealer\DealerOrderController@orderInfoUpdate',
    //     'as' => 'dealer.orderInfoUpdate'
    // ]);

    // Route::get('all-lead-orders/dealer/{dealer}/status/{status}', [
    //     'uses' =>'Dealer\DealerOrderController@allLeadOrders',
    //     'as' => 'dealer.allLeadOrders'
    // ]);

    // Route::get('lead-order-make-chanage/dealer/{dealer}/item/{item}/status/{status}', [
    //     'uses' =>'Dealer\DealerOrderController@leadOrderMakeChange',
    //     'as' => 'dealer.leadOrderMakeChange'
    // ]);

    // Route::get('lead-order-collect-delivered/dealer/{dealer}/item/{item}/status/{status}', [
    //     'uses' =>'Dealer\DealerOrderController@leadOrderCollectDelivered',
    //     'as' => 'dealer.leadOrderCollectDelivered'
    // ]);

    // Route::get('order-delivered/dealer/{dealer}/order/{order}', [
    //     'uses' =>'Dealer\DealerOrderController@orderDelivered',
    //     'as' => 'dealer.orderDelivered'
    // ]);

    // Route::post('order-payment-submit/dealer/{dealer}/order/{order}', [
    //     'uses' =>'Dealer\DealerOrderController@orderPaymentSubmit',
    //     'as' => 'dealer.orderPaymentSubmit'
    // ]);

});

/**
 *-------------------------------
 * Agent Routes
 *-------------------------------
 */


Route::group(['middleware' => ['myrole:agent', 'auth'], 'prefix' => 'sr'], function () {

    // Route::get('/', [
    //     'uses' => 'Agent\AgentDashboardController@index',
    //     'as' => 'agent.index',
    // ]);
    // Route::get('/{agent}', [
    //     'uses' => 'Agent\AgentDashboardController@ecommerceIndex',
    //     'as' => 'agent.ecommerce.index',
    // ]);
    Route::get('set/agent/',[SrDashboardController::class,'checkLocaion'])->name('sr.checkLocaion');

    Route::get('set/agent/{agent}/location',[SrDashboardController::class,'setAgentLocation'])->name('sr.setAgentLocation');
    Route::get('{sr}/dashboard',[SrDashboardController::class,'srDashboard'])->name('sr.dashboard');
    Route::get('{sr}/shops/type/{type}',[SrShopController::class,'allShops'])->name('sr.shopList');
    Route::get('{sr}/shops/add/new',[SrShopController::class,'newShop'])->name('sr.newShop');
    Route::post('{sr}/shops/add/new',[SrShopController::class,'saveShop'])->name('sr.saveShop');
    Route::get('{sr}/shop/{shop}/edit/',[SrShopController::class,'editShop'])->name('sr.editShop');
    Route::post('{sr}/shop/{shop}/update/',[SrShopController::class,'updateShop'])->name('sr.updateShop');
    Route::get('{sr}/shop/{shop}/destroy/',[SrShopController::class,'destroyShop'])->name('sr.destroyShop');

    // Route::post('{sr}/order/shop/{shop}/by/type/{type}',[SrShopOrderController::class,'shopOrders'])->name('sr.shopOrders');
    Route::get('{sr}/shop/{shop}/payment/collection',[SrShopOrderController::class,'paymentCollection'])->name('sr.paymentCollection');
    Route::post('{sr}/shop/{shop}/payment/collection/save',[SrShopOrderController::class,'paymentCollectionSave'])->name('sr.paymentCollectionSave');

    Route::get('{sr}/payment/method',[SrShopOrderController::class,'paymentMthods'])->name('sr.paymentMthods');
    Route::get('{sr}/shop/{shop}/order',[SrShopOrderController::class,'createOrder'])->name('sr.createOrder');
    Route::get('{sr}/shop/{shop}/order/ajax/search',[SrShopOrderController::class,'productSearchAjax'])->name('sr.productSearchAjax');
    Route::post('{sr}/shop/{shop}/order/now',[SrShopOrderController::class,'orderPost'])->name('sr.orderPost');
    // temp
    Route::get('{sr}/shop/{shop}/product/{product}/select',[SrShopOrderController::class,'selectProduct'])->name('sr.selectProduct');
    Route::get('{sr}/shop/{shop}/product/{product}/unselect',[SrShopOrderController::class,'unSelectProduct'])->name('sr.unSelectProduct');
    Route::get('{sr}/shop/{shop}/temp/{temp}/update/quantity',[SrShopOrderController::class,'updateQuanity'])->name('sr.updateQuanity');


    // temp

    Route::get('{sr}/shop/{shop}/order/history',[SrShopController::class,'shopWiseOrders'])->name('sr.shopWiseOrders');
    Route::get('{sr}/shop/{shop}/order/{order}/type/{type}',[SrShopController::class,'viewShopSingleOrder'])->name('sr.viewShopSingleOrder');
    Route::get('{sr}/shop/{shop}/order/{order}',[SrShopController::class,'deleteShopSingleOrder'])->name('sr.deleteShopSingleOrder');
    Route::get('{sr}/shop/{shop}/order/{order}/item/{item}/update/qty',[SrShopController::class,'updateItemQuantity'])->name('sr.updateItemQuantity');
    Route::get('{sr}/shop/{shop}/order/{order}/shipment/{shipment}/return',[SrShopController::class,'shipmentReturn'])->name('sr.shipmentReturn');
    Route::post('{sr}/shop/{shop}/order/{order}/shipment/{shipment}/update/type/{type}',[SrShopController::class,'orderShipmentUpdate'])->name('sr.orderShipmentUpdate');
    Route::post('{sr}/shop/{shop}/order/{order}/shipment/{shipment}/return/save',[SrShopController::class,'shipmentReturnSave'])->name('sr.shipmentReturnSave');
    Route::get('{sr}/shop/{shop}/shipment/returns/all',[SrShopController::class,'shipmentReturnAll'])->name('sr.shipmentReturnAll');
    Route::get('{sr}/order/history/type/{type}',[SrShopController::class,'OrderHistory'])->name('sr.OrderHistory');
    Route::get('{sr}/order/{order}/details',[SrShopController::class,'OrderDetails'])->name('sr.OrderDetails');


    Route::get('{sr}/shop/collection/list/type/{type?}',[SrShopController::class,'collectionList'])->name('sr.collectionList');
    Route::get('{sr}/shop/salary/list',[SrShopController::class,'salaryStatement'])->name('sr.salaryStatement');
    Route::get('{sr}/shipment/return/list/type/{type}',[SrShopController::class,'shipmentReturnList'])->name('sr.shipmentReturnList');
    Route::get('{sr}/shipment/{shipment}/return/details',[SrShopController::class,'shipmentReturnDetails'])->name('sr.shipmentReturnDetails');






    // Route::get('/{agent}/dashboard', [
    //     'uses' => 'Agent\AgentDashboardController@dashboard',
    //     'as' => 'agent.dashboard',
    // ]);

    Route::get('products/get', function () {
        return 1;
    });

});

//vue layout routes
Route::get('/sr/{agent}/ecommerce/{slug2?}/{slug3?}/{slug4?}/{slug5?}/{slug6?}/{slug7?}/{slug8?}/{slug9?}', [
    'uses' => 'Agent\AgentDashboardController@ecommerceIndex',
])->middleware('auth');
Route::get('/sr/{slug1?}/{slug2?}/{slug3?}/{slug4?}/{slug5?}/{slug6?}/{slug7?}/{slug8?}/{slug9?}', [
    'uses' => 'Agent\AgentDashboardController@index',
])->middleware('auth');
// Route::get('/dealer/ecommerce/{slug2?}/{slug3?}/{slug4?}/{slug5?}', [
//     'uses' => 'Dealer\DealerDashboardController@ecommerceIndex',
//     'as' => 'dealer.index',
// ]);
// Route::get('/dealer/{slug1?}/{slug2?}/{slug3?}/{slug4?}/{slug5?}', [
//     'uses' => 'Dealer\DealerDashboardController@index',
//     'as' => 'dealer.index',
// ]);
Route::any('/{slug1?}/{slug2?}/{slug3?}/{slug4?}/{slug5?}', [
    'uses' => 'Ecommerce\WelcomeController@welcome',
])->middleware('auth');



