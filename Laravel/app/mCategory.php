<?php

namespace LFG;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class mCategory extends Model
{

    protected $table = 'mCategory';
    protected $fillable = ['nombre', 'descripcion'];
}
