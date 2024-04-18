<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class GeneralSetting extends Model
{
    protected $fillable = [
    	'uniq_id',
    	'setting_content',
    	'setting_type',
    	'setting_enabled_disbaled',
    ];
}
