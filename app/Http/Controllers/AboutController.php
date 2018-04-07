<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    //

     public function index(){
/*
         $name = "<span style=\"color:red\">Cheng Gongchun<span>";
         return view("about")->with([
             'name'=>$name,
             'date'=>"2018-04-04"
         ]);

         $name = "<span style=\"color:red\">Cheng Gongchun<span>";
         $date = "2018-04-04";
         return view("about", compact('name', 'date'));
*/
         $data = [];
         $data['name'] = "<span style=\"color:red\">Cheng Gongchun<span>";
         $data['date'] = "2018-04-04";
         //return view("about", $data);
         return view("about")->with($data);

    }

}
