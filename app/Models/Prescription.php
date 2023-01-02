<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Http\Jambasangsang\Traits\updatableAndCreatable;

class Prescription extends Model
{
    use HasFactory;
    use updatableAndCreatable;

    protected $fillable = [
        'dosage',
        'frequency',
        'duration',
        'food_relation',
        'route',
        'instruction',
        'status',
        'patient_id',
        'patient_visit_id',
        'user_id',
        'medicine_id',
        'created_by_id',
        'updated_by_id'
    ];

    public function patient(): BelongsTo
    {
        return $this->belongsTo(Patient::class, 'patient_id', 'id');
    }

    public function patient_visit(): BelongsTo
    {
        return $this->belongsTo(PatientVisit::class, 'patient_visit_id', 'id');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function medicine(): BelongsTo
    {
        return $this->belongsTo(Medicine::class, 'medicine_id', 'id');
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
