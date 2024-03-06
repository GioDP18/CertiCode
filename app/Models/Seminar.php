<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seminar extends Model
{
    use HasFactory;

    protected $fillable = [
        "topic",
        "speaker",
        "speaker_image",
        "about_the_speaker",
        "about_this_seminar",
        "date",
    ];

    public function certificate()
    {
        return $this->hasOne(Certificate::class);
    }

    public function participants()
    {
        return $this->hasMany(Participant::class);
    }

}
