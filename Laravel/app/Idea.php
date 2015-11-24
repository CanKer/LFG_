<?php

namespace LFG;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Idea extends Model
{
  use SoftDeletes;
  
    protected $table = 'ideas';
    protected $fillable = ['nombre', 'descripcion'];

    protected $dates = ['deleted_at'];
}
