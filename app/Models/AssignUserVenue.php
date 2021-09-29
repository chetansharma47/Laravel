<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Venu;

class AssignUserVenue extends Model
{
    protected $fillable = [
    	'venu_id',
    	'venue_user_id'
    ];

    public function venu(){
    	return $this->belongsTo(Venu::class);
    }
}
