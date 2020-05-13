<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    protected $fillable = [
        'nourut','nama','status'
    ];

    public function screenshoot()
    {
        return $this->hasMany('App\Screenshoot');
    }
}
