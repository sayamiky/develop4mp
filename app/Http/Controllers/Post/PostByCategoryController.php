<?php

namespace App\Http\Controllers\Post;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class PostByCategoryController extends Controller
{
    public function newsByCategory($slug)
    {
        $datas = Post::with('category')->whereHas('category', function (Builder $query) use ($slug){
            $query->where('slug', $slug);
        })->get();

        return view('news.index', compact('datas'));
    }
}
