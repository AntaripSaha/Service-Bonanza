<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceUser extends Model
{
    use HasFactory;
    protected $table = 'service_user';

    public function profile(){
        return $this->belongsTo(User::class,"user_id","id");
    }
}
