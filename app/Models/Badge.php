<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Badge extends Model
{
    protected $fillable = [
    	'admin_id',
    	'badge_name',
    	'image',
    	'name_of_file_show',
    	'status',
    	'created_by',
    	'updated_by'
    ];
}
