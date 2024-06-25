<?php

namespace App\Http\Controllers\Post;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class PostByCategoryController extends Controller
{
    public function newsByCategory(Request $request, $slug)
    {
        $pagination = 4;
        $datas = Post::with('category')->whereHas('category', function (Builder $query) use ($slug){
            $query->where('slug', $slug);
        })->orderBy('id', 'desc')->paginate($pagination);

        return view('news.index', compact('datas'))->with('i', ($request->input('page', 1) - 1) * $pagination);
    }
}
