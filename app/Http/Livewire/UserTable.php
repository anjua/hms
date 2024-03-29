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
    public $user;

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

    public function changeStatus($userId, $status)
    {
        $updateStatus = $status == 0 ? 1 : 0;
        //dd($updateStatus);
        User::find($userId)->update(['status' => $updateStatus]);
    }

    public function openDeleteModal($userId)
    {
        $this->user = User::find('$userId');
        $this->dispatchBrowserEvent('openModal');
    }

    public function deleteUser()
    {
        $this->user->destroy();
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
