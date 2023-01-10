<div class="card-header">
    Header
</div>

<div class="card-body">
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
                <input type="text" placeholder="Enter Full Name" name="fullname" id="fullname" class="form-control">
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="">User Name</label>
                <input type="text" placeholder="Enter User Name" name="username" id="username" class="form-control">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label for="">Gender</label>
                <select name="gender" id="gender" class="form-control">
                    @foreach (App\Jambasangsang\Helper::getGender() as $key => $gender)
                        <option value="{{ $key }}">{{ $gender }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="">Email</label>
                <input type="email" placeholder="Enter Email" name="email" id="email" class="form-control">
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="">Phone</label>
                <input type="text" placeholder="Enter Phone" name="phone" id="phone" class="form-control">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="">Religion</label>
                <select name="religion" id="gender" class="form-control">
                    @foreach (App\Jambasangsang\Helper::getReligion() as $key => $religion)
                        <option value="{{ $key }}">{{ $religion }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="">Date of Birth</label>
                <input type="date" name="dob" id="dob" class="form-control">
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="">Role</label>
                <select name="role_id" id="role_id" class="form-control">
                    @foreach (App\Jambasangsang\Helper::getRoles() as $key => $role)
                        <option value="{{ $role->name }}">{{ Str::ucfirst(Str::replace('-', ' ', $role->name)) }}
                        </option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-1">
            <div class="form-group">
                <label for="">Status</label>
                <div class="check-toggle">
                    <input type="checkbox" name="status" id="status" class="check">
                    <label for="status" class="checktoggle">Status</label>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="">Address 1</label>
                <textarea name="address1" id="address1" cols="30" rows="10" class="form-control"></textarea>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="">Address 2</label>
                <textarea name="address2" id="address2" cols="30" rows="10" class="form-control"></textarea>
            </div>
        </div>
    </div>
</div>

<div class="card-footer">
    <div class="btn-group">
        <button class="btn btn-success btn-flat btn-lg">Simpan</button>
    </div>
</div>
