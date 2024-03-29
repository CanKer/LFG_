<?php

namespace LFG;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Blog extends Model
{
    use SoftDeletes;

    protected $table = 'blog';
    protected $fillable = ['titulo', 'contenido'];

    protected $dates = ['deleted_at'];
}
