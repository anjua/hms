<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class HospitalSettings extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'website',
        'phone',
        'fax',
        'country',
        'address',
        'establish',
        'email',
        'logo',
        'favicon',
        'size',
        'type',
        'facebook',
        'twitter',
        'whatsapp',
        'instagram',
        'driver',
        'encryption',
        'host',
        'port',
        'username',
        'password',
        'email_from',
        'email_from_name',
        'invoice_prefix',
        'invoice_logo',
        'user_prefix',
        'patient_prefix',
        'invoice_number_mode',
        'invoice_last_number',
        'taxes',
        'discount'
    ];

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
