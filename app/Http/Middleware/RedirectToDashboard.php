<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route ;

class RedirectToDashboard
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (auth()->check() && Route::getCurrentRoute()->getName() == 'welcome') {
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
        return $next($request);
    }
}
