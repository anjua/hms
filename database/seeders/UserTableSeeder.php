<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         foreach(Role::all() as $role) {
            $users = $this->call(UsersTableSeeder::class);
            foreach($users as $user){
               $user->assignRole($role);
            }
         }
    }
}