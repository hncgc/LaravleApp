<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\Resource;
use Carbon\Carbon;
use App\Http\Requests;

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
        //$articles = Article::latest()->get();
        //$articles = Article::latest()->where('published_at', '<=', Carbon::new())->get();
        $articles = Article::latest()->published()->get(); //published()调用model的scopePublished（）
        //return $articles;                   //下载
        //return $articles->toArray();        //下载
        //return Article::all()->toString();  //下载
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
        //dd($article->created_at);
        //dd($article->created_at->year);
        //dd($article->created_at->diffForHumans());
        //dd($article->published_at->diffForHumans());
        if (is_null($article)) {
            abort('404');
        }
        return view('articles.show', compact('article'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('articles.create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     */
    /*
    public function store(Request $request)
    {
        //接收post过来的数据
        //存入数据库
        //重定向
        //dd($request->get('title'));
        //$input = $request->all();
        //$input['published_at'] = Carbon::now();
        //Article::create($input);
        $this->validate($request, ['title'=>'required|min:3', 'content'=>'required', 'published_at'=>'required']);
        Article::create($request->all()); //在model中预处理published_at
        return redirect('/articles');
    }
    */
    public function store(Requests\CreateArticleRequest $request){
        Article::create($request->all()); //在model中预处理published_at
        return redirect('/articles');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $article = Article::findOrFail($id);
        return view('articles.edit', compact('article'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\CreateArticleRequest $request, $id)
    {
        $article = Article::findOrFail($id);
        $article->update($request->all());
        return redirect('/articles');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}