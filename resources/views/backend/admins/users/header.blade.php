<ul class="nav nav-tabs nav-tabs-sloid mb-2 bg-white" id="myHeader">
    @foreach (App\Jambasangsang\Helper::getRoles() as $key => $role)
        <li class="nav-item">
            <a href="#" wire:click.prevent="getUserDataByRole('{{ $role->name }}')"
                class="nav-link 
                {{ Str::lower($role->name) == Str::replaceFirst('users.', '', $currentUrl)
                 ? 'active' : '' }}">
                {{ Str::upper(str_replace('-', ' ', $role->name)) }} </a>
        </li>
    @endforeach
</ul>
