<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class GeneralSettings extends Model
{
    protected $fillable = [
    	'uniq_id',
    	'setting_content',
    	'setting_type',
    ];
}
