<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Support\Carbon;
use Carbon\Carbon;

class Article extends Model
{
    protected $fillable = ['title', 'content', 'published_at'];

    //作为Carbon对象的字段
    protected $dates = ['published_at', 'created_at'];

    //预处理published_at
    public function setPublishedAtAttribute($date){
        //$this->attributes['published_at'] = date('Y-m-d H:i:s',$date->getTimestamp());
        $this->attributes['published_at'] = Carbon::createFromFormat('Y-m-d',$date);
    }

    /**
     * 在Controller中用在限定显示的条件，用published()调用
     * @param $query
     */
    public function scopePublished($query){
        $query->where('published_at', '<=', Carbon::now());
    }

    /**
     * 声明Eloquent的关系多对多
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function tags()
    {
        //return $this->belongsToMany('App\Tag');
        return $this->belongsToMany('App\Tag')->withTimestamps();
    }

}
