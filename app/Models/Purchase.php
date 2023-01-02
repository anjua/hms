<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Http\Jambasangsang\Traits\updatableAndCreatable;

class Purchase extends Model
{
    use HasFactory;
    use updatableAndCreatable;

    protected $fillable = [
        'code',
        'name',
        'type',
        'medicine_generic_name',
        'medicine_unit',
        'medicine_strength',
        'medicine_shelf',
        'quantity',
        'quantity_type',
        'price',
        'expiration_date',
        'note',
        'image',
        'status',
        'medicine_type_id',
        'medicine_category_id',
        'supplier_id',
        'created_by_id',
        'updated_by_id'
    ];

    public function medicine_type(): BelongsTo
    {
        return $this->belongsTo(MedicineType::class, 'medicine_type_id', 'id');
    }

    public function medicine_category(): BelongsTo
    {
        return $this->belongsTo(MedicineCategory::class, 'medicine_category_id', 'id');
    }

    public function supplier(): BelongsTo
    {
        return $this->belongsTo(Supplier::class, 'supplier_id', 'id');
    }

    /**
     * Get the user that owns the User
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function createdBy(): BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by_id', 'id');
    }

    /**
     * Get the user that owns the User
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function updatedBy(): BelongsTo
    {
        return $this->belongsTo(User::class, 'updated_by_id', 'id');
    }
}
