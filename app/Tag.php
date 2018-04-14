<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = ['name'];

    /**
     * 声明Eloquent的关系多对多
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function articles()
    {
        return $this->belongsToMany('App\Article');
    }

}
