<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Departement extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_faculty',
        'departement_name'
    ];

    public function faculty(){
        return $this->belongsTo(Faculty::class,'id','id_faculty');
    }

    public function certification(){
        return $this->hasMany(Certification::class,'id','id_study');
    }

}
