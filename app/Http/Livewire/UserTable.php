<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Route;

class UserTable extends Component
{
    use WithPagination;

    public $currentUrl;
    public $selectAll = false;
    public $checked = [];
    public $perPage = 8;
    public $search = '';
    public $sortBy = 'desc';

    public function mount()
    {
        $this->currentUrl = Route::current()->getName();
    }

    public function getUserDataByRole($role)
    {
        
        $this->emit('urlChange', $role);
        $this->currentUrl = $role;
        $this->resetPage();
        //dd($this->currentUrl);
        //$this->users = User::Role([$role])->get();
        //User::find();
    }   

    public function render()
    {
        if (!in_array($this->currentUrl, ['users.index'])) {
            $users = User::search($this->search)->Role([Str::replaceFirst('users.', '', $this->currentUrl)])->orderBy('name', $this->sortBy)->paginate($this->perPage);
        } else {
            $users = [];
        }
        //dd($this->currentUrl);
        return view('livewire.user-table', ['users' => $users]);
    }
}
