<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seminar extends Model
{
    use HasFactory;

    public function certificate()
    {
        return $this->hasOne(Certificate::class);
    }

    protected $fillable = [
        "topic",
        "speaker",
        "speaker_image",
        "about_the_speaker",
        "about_this_seminar",
        "date",
    ];

}
