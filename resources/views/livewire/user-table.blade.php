<div>

    <div class="page-title">Users</div>

    @include('backend/admins/users/header')

    <table class="table mb-0">
        <thead>
            <tr>
                <th><input type="checkbox" name="selectAll" wire:click.prevent="selectAll"></th>
                <th>Name</th>
                <th>Role</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($users as $user)
                <tr>
                    <td><input type="checkbox" name="select" wire:click.prevent="select"></td>
                    <td> <img src="" width="50" class="img-rounded" alt=""> <br> {{ $user->name }}</td>
                    <td>
                        @foreach ($user->getRoleNames() as $role)
                            {{ Str::ucfirst(str_replace('-', ' ', $role)) }}                            
                        @endforeach
                    </td>
                    <td>{{ $user->email }}</td>
                    <td>{{ App\Jambasangsang\Helper::getGenderValue($user->gender) }}</td>
                    <td>{{ App\Jambasangsang\Helper::getStatusValue($user->status) }}</td>
                </tr>
                @empty
                <tr>
                    <td colspan="12">
                        <h2 class="text-center">No Data Found</h2>
                    </td>
                </tr>
            @endforelse
        </tbody>
    </table>
</div>
