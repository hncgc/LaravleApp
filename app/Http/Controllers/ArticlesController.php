<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\Resource;

class ArticlesController extends Controller
{
    /**
     * Display a Articles listing of for resource
     * @return Resource
     */
    public function index()
    {
        //return "My Articles";
        $articles = Article::all();
//        return $articles;                    //下载
//        return $articles->toArray();        //下载
//        return Article::all()->toString();      //下载
        return view('articles.index', compact('articles'));
    }

    /**
     * Display
     * @param $id
     * @return mixed
     */
    public function show($id)
    {
        $article = Article::findOrFail($id);
        //dd($article);
        if(is_null($article)){
            abort('404');
        }
        return view('articles.show',compact('article'));
    }
}
