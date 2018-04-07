<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\Resource;
use Carbon\Carbon;

class ArticlesController extends Controller
{
    /**
     * Display a Articles listing of for resource
     * @return Resource
     */
    public function index()
    {
        //return "My Articles";
        //$articles = Article::all();
        $articles = Article::latest()->get();
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
        if (is_null($article)) {
            abort('404');
        }
        return view('articles.show', compact('article'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('articles.create');
    }

    /**
     * 保存表单数据
     * @param Request $request
     */
    public function store(Request $request)
    {
        //接收post过来的数据
        //存入数据库
        //重定向
        //dd($request->get('title'));
        $input = $request->all();
        $input['published_at'] = Carbon::now();
        Article::create($input);
        return redirect('/articles');
    }
}