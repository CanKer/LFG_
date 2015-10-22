<?php

namespace LFG;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Users extends Model
{
  use SoftDeletes;
    protected $table = 'users';
    protected $fillable = ['user', 'password'];
    protected $dates = ['deleted_at'];
}
