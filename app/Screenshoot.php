<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Screenshoot extends Model
{
    protected $fillable = [
        'teacher_id','file','tanggal'
    ];

    public function teacher()
    {
        return $this->belongsTo('App\Teacher');
    }
}