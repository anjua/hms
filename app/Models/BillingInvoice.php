<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Http\Jambasangsang\Traits\updatableAndCreatable;

class BillingInvoice extends Model
{
    use HasFactory;
    use updatableAndCreatable;

    protected $fillable = [
        'invoice_number',
        'total',
        'pending_amount',
        'payment_amount',
        'mood',
        'discount_type',
        'discount_amount',
        'discount_note',
        'note',
        'tax',
        'additional_fee',
        'status',
        'patient_id',
        'patient_visit_id',
        'doctor_order_id',
        'created_by_id',
        'updated_by_id'
    ];

    public function patient(): BelongsTo
    {
        return $this->belongsTo(Patient::class, 'patient_id', 'id');
    }

    public function doctor_Order(): BelongsTo
    {
        return $this->belongsTo(DoctorOrder::class, 'doctor_order_id', 'id');
    }

    public function patient_visit(): BelongsTo
    {
        return $this->belongsTo(PatientVisit::class, 'patient_visit_id', 'id');
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
