<?php
namespace App\Jambasangsang\Service;


use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserService
{
    public function getUsersData()
    {
        # code...
    }

    public function storeUsersData($request)
    {

        //dd($request->all());
        $user = User::updateOrCreate(
            ['id' => $request->edit_id], 
        [
            'title' => $request->title,
            'name' => $request->fullname,
            'username' => $request->username,
            'gender' => $request->gender,
            'email' => $request->email,
            'phone' => $request->phone,
            'religion' => $request->religion,
            'dob' => $request->dob,
            'addres_1' => $request->address1,
            'address_2' => $request->address2,
            'password' => Hash::make($request->role_id),
            'status' => $request->status == 'on' ? 1 : 0,
        ]);
        // $request->except(['status', 'role_id']) + $request->status == 'on' ? 1 : 0);

        $user->assignRole($request->role_id);

        return $this;
    }
}