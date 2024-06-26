<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasFactory, Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function post(){
        return $this->hasMany(Post::class);
    }

    // public function roles()
    // {
            // return $this->belongsToMany(
            //     config('permission.models.role'),
            //     config('permission.table_names.model_has_roles'),
            //     'model_id',
            //     'role_id'
            // );

            // return $this->belongsToMany(
            //     config('laravel-permission.models.role'),
            //     config('laravel-permission.table_names.user_has_roles'),
            //     'user_id',
            //     'role_id',
            //     'user'
            // );
    // }
}
