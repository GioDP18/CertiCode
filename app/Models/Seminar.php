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
        "about_the_speaker",
        "about_this_seminar",
        "date",
    ];

}
