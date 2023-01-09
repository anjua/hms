<div>

    <div class="page-title mb-3">{{ Request()->segment(2) ? Str::upper(Request()->segment(2)) : 'Users' }}</div>

    <div class="float-right">
        <button class="btn btn-primary">Add New User</button>
    </div>

    @include('backend/admins/users/header')

    <div class="card">
        <div class="card-header">
            <x-jambasangsang.per-page data="isEnable" />
            <div class="flex float-right">
                <x-jambasangsang.search-box name="search" placeholder="" />
            </div>

        </div>
        <table class="table mb-0 table-borderless">
            <thead>
                <tr>
                    <th><input type="checkbox" name="selectAll" wire:click.prevent="selectAll"></th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($users as $user)
                    <tr>
                        <td><input type="checkbox" name="select" wire:click.prevent="select"></td>
                        <td>
                            <h2 class="table-avatar">
                                <a href="#" class="avatar">
                                    <img src="" width="50" class="img-rounded" alt="">
                                </a>
                                <a href="#">
                                    {{ $user->name }}
                                    <span>
                                        @foreach ($user->getRoleNames() as $role)
                                            {{ Str::ucfirst(str_replace('-', ' ', $role)) }}
                                        @endforeach
                                    </span>
                                </a>
                            </h2>
                        </td>
                        <td>{{ $user->email }}</td>
                        <td>{{ App\Jambasangsang\Helper::getGenderValue($user->gender) }}</td>
                        <td>{{ App\Jambasangsang\Helper::getStatusValue($user->status) }}</td>
                        <td>
                            <div class="btn-group">
                                <a href="#"><i class="fa fa-edit fa-x2 px-2"></i></a>
                                <a href="#"><i class="fa fa-trash text-danger"></i></a>
                            </div>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="12">
                            <x-not-found />
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>
        @if (!empty($users))
            <div class="card-footer">
                {{ $users->links() }}
            </div>
        @endif

    </div>
</div>
