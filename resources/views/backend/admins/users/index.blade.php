@extends('layouts.app')

@push('style')
@endpush

@section('content')
    <span class="page-title mb-3">
        <span class="title">
            {{ Request()->segment(2) ? Str::upper(Request()->segment(2)) : 'Users' }}
        </span>

        <div class="float-right">
            <a href="{{ route('users.create') }}" class="btn btn-primary">Add New User</a>
        </div>

    </span>

    @livewire('user-table')
@endsection

@push('script')
@endpush
