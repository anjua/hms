<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Http\Jambasangsang\Traits\updatableAndCreatable;

class BillingTransaction extends Model
{
    use HasFactory;
    use updatableAndCreatable;

    protected $fillable = [
        'pending_amount',
        'payment_amount',
        'status',
        'patient_visit_id',
        'billing_invoice_id',
        'created_by_id',
        'updated_by_id'
    ];

    public function patient_visit(): BelongsTo
    {
        return $this->belongsTo(PatientVisit::class, 'patient_visit_id', 'id');
    }

    public function billing_invoice(): BelongsTo
    {
        return $this->belongsTo(BillingInvoice::class, 'billing_invoice_id', 'id');
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
