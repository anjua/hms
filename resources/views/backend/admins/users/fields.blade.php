<div class="card-header">
    Header
</div>

<div class="card-body bg-white" style="background: white">
    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label for="">Title</label>
                <select name="title" id="title" class="form-control">
                    <option value="0">Mr.</option>
                    <option value="1">Mrs.</option>
                    <option value="3">Dr.</option>
                </select>
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="">Full Name</label>
                <input type="text" value="{{ isset($user) ? $user->name : old('name') }}" placeholder="Enter Full Name" name="fullname" id="fullname" class="form-control">
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="">User Name</label>
                <input type="text" value="{{ isset($user) ? $user->username : old('username') }}" placeholder="Enter User Name" name="username" id="username" class="form-control">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label for="">Gender</label>
                <select name="gender" id="gender" class="form-control">
                    @foreach (App\Jambasangsang\Helper::getGender() as $key => $gender)
                        <option value="{{ $key }}" {{ isset($user) ? App\Jambasangsang\Helper::selected($key, $user->gender) : old('gender') }}>{{ $gender }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="">Email</label>
                <input type="email" value="{{ isset($user) ? $user->email : old('email') }}" placeholder="Enter Email" name="email" id="email" class="form-control">
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="">Phone</label>
                <input type="text" value="{{ isset($user) ? $user->phone : old('phone') }}" placeholder="Enter Phone" name="phone" id="phone" class="form-control">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="">Religion</label>
                <select name="religion" id="gender" class="form-control">
                    @foreach (App\Jambasangsang\Helper::getReligion() as $key => $religion)
                        <option value="{{ $key }}" {{ isset($user) ? App\Jambasangsang\Helper::selected($key, $user->religion) : old('religion') }}>{{ $religion }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="">Date of Birth</label>
                <x-flatpickr name="dob" value="{{ isset($user) ? $user->dob : old('dob') }}"/>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="">Role</label>
                <select name="role_id" id="role_id" class="form-control">
                    @foreach (App\Jambasangsang\Helper::getRoles() as $key => $role)
                        <option value="{{ $role->name }}" {{ isset($user) ? App\Jambasangsang\Helper::selected($role->name, $user->getRoleNames()->contains($role->name)) : old('role_id') }}>{{ Str::ucfirst(Str::replace('-', ' ', $role->name)) }}
                        </option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-1">
            <div class="form-group">
                <label for="">Status</label>
                <div class="check-toggle">
                    <input type="checkbox" name="status" id="status"{{ isset($user) ? App\Jambasangsang\Helper::getStatusValue($user->status) : old('status') }} class="check">
                    <label for="status" class="checktoggle">Status</label>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="">Address 1</label>
                <textarea name="address1" value="{{ isset($user) ? $user->address_1 : old('address_1') }}" id="address1" cols="30" rows="10" class="form-control"></textarea>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="">Address 2</label>
                <textarea name="address2" value="{{ isset($user) ? $user->address_2 : old('address_2') }}" id="address2" cols="30" rows="10" class="form-control"></textarea>
            </div>
        </div>
    </div>
</div>

<div class="card-footer">
    <div class="form-group">
        <button class="btn btn-success btn-flat btn-lg float-right">Simpan</button>
    </div>
</div>
