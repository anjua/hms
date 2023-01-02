<?php
namespace App\Http\Jambasangsang\Traits;

trait updatableAndCreatable
{
    public static function bootCreatable($model)
    {
        if (auth()->check()) {
            static::creating(function ($model) {
                $model->create_by_id = auth()->user()->id;
            });

            static::updating(function($model){
                $model->update_by_id = auth()->user()->id;
            });
        }
    }
}
