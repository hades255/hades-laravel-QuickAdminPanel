@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-md-6">
        <div class="main-card">
            <div class="header">
                Logo image 
            </div>
            <form method="POST" action="{{ route("admin.settings.logo.update") }}"  enctype="multipart/form-data">
                @csrf
            <div class="body">
                <img src="{{ asset('/uploads/' . ($settings->image ?? '')) }}" width="300px" alt=""/>
                <input type="file" name="logoimage" accept="image/*"/>
            </div>
            <div class="footer">
                <button type="submit" class="submit-button">{{ trans('global.save') }}</button>
            </div>
            </form>
        </div>
    </div>
    <div class="col-md-6">
        <div class="main-card">
            <div class="header">
                Software version
            </div>
            <div class="body">
                <div class="form-group">
                <input type="text" id="version" name="version" class="form-control" value="{{$version ?? ''}}">
                </div>
            </div>
            @can('settings_version_edit')
            <div class="footer">
                <button type="button" class="submit-button" onclick="saveVersion()">{{ trans('global.save') }}</button>
            </div>
            @endcan
        </div>
    </div>    
</div>
<div class="main-card mt-3">
    <div class="header">
        Seller Data
    </div>
    <div class="body">
        <form id="seller_form">
        <div class="row">
            <div class="col-md-6">
                <h4>Company</h4>
                <div class="form-group">
                    <label for="company_name" class="text-xs">Name</label>
                    <input type="text" id="company_name" name="company_name" class="form-control" value="{{$settings->comname ?? ''}}">
                </div>
                <div class="form-group">
                    <label for="company_addr" class="text-xs">Address</label>
                    <input type="text" id="company_addr" name="company_addr" class="form-control" value="{{$settings->comaddr ?? ''}}">
                </div>
                <div class="form-group">
                    <label for="company_tel" class="text-xs">Tel. No.</label>
                    <input type="text" id="company_tel" name="company_tel" class="form-control" value="{{$settings->comtel ?? ''}}">
                </div>
                <div class="form-group">
                    <label for="company_fax" class="text-xs">Fax</label>
                    <input type="text" id="company_fax" name="company_fax" class="form-control" value="{{$settings->comfax ?? ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <h4>Contact</h4>
                <div class="form-group">
                    <label for="contact_name" class="text-xs">Name</label>
                    <input type="text" id="contact_name" name="contact_name" class="form-control" value="{{$settings->conname ?? ''}}">
                </div>
                <div class="form-group">
                    <label for="contact_tel" class="text-xs">Tel. No.</label>
                    <input type="text" id="contact_tel" name="contact_tel" class="form-control" value="{{$settings->contel ?? ''}}">
                </div>
                <div class="form-group">
                    <label for="contact_mobile" class="text-xs">Mobile</label>
                    <input type="text" id="contact_mobile" name="contact_mobile" class="form-control" value="{{$settings->conmobile ?? ''}}">
                </div>
                <div class="form-group">
                    <label for="contact_email" class="text-xs">Email</label>
                    <input type="text" id="contact_email" name="contact_email" class="form-control" value="{{$settings->conemail ?? ''}}">
                </div>
            </div>
        </div>
        </form>
    </div>
    <div class="footer">
        <button type="button" class="submit-button" onclick="saveSeller()">{{ trans('global.save') }}</button>
    </div>    
</div>
@endsection
@section('scripts')
    @parent
    <script>
        function saveSeller() {
            $.ajax({
                type: 'POST',
                url: '{{route('admin.settings.save.seller')}}',
                data: $('#seller_form').serialize(),
                headers: {'x-csrf-token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')},                
                success: function(data) {
                    alert("Success in save seller data!");
                },
                error: function(xhr, status, error) {
                    alert("Failed connect to server");
                }
            })
        }

        function saveVersion() {
            $.ajax({
                type: 'POST',
                url: '{{route('admin.settings.save.version')}}',
                data: {version: $('#version').val().trim()},
                headers: {'x-csrf-token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')},                
                success: function(data) {
                    alert("Success in save software version!");
                },
                error: function(xhr, status, error) {
                    alert("Failed connect to server");
                }
            })
        }
    </script>
@endsection