<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;
use Illuminate\Support\Facades\Route;

class UserTable extends Component
{

    public $currentUrl;
    public $users = [];
    public $selectAll = [];

    public function mount()
    {
        $this->currentUrl = Route::current()->getName();
    }

    public function getUserDataByRole($role)
    {
        $this->currentUrl = $role;
        $this->emit('urlChange', $this->currentUrl);
        $this->users = User::Role([$role])->get();
    }   

    public function render()
    {
        //dd($this->currentUrl);
        return view('livewire.user-table');
    }
}
