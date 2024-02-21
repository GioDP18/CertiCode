<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Certificate extends Model
{
    use HasFactory;

    protected $fillable = [
        "logo",
        "description",
        "issuer"
    ];
    
    public function seminar()
    {
        return $this->belongsTo(Seminar::class, 'seminar_id');
    }
}
