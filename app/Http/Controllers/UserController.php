<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use App\Jambasangsang\Service\UserService;
use Jambasangsang\Flash\Facades\LaravelFlash;

class UserController extends Controller
{
    public function create()
    {
        return view('backend.admins.users.create', ['permissions' => Permission::get()]);
    }

    public function store(Request $request, UserService $userService)
    {
        $userService->storeUsersData($request);
        LaravelFlash::withSuccess('User Added Successfully!');
        return to_route('users.'.$request->role_id);
    }
}
