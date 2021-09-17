<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Models\Badge;

class AssignBadge extends Model
{
    protected $fillable = [
    	'user_id',
    	'badge_id',
    	'comment',
    	'status',
    	'when',
    	'from_date',
    	'to_date',
    	'from_time',
    	'to_time',
        'created_by',
        'updated_by'
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function badge(){
        return $this->belongsTo(Badge::class);
    }
}
