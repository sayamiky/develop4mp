<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class P4mpAboutController extends Controller
{

    public function visimisi()
    {
        $path = Storage::disk('public')->get('visi_misi.json');
        $data = json_decode($path,true);
        return view('dashboard.about.visi',compact('data'));
    }

    public function indexvisimisi(Request $request)
    {
        $path = Storage::disk('public')->get('visi_misi.json');
        $data = json_decode($path,true);
        return view('about.visi_misi',compact('data'));
    }

    public function addvisimisi(Request $request)
    {
        $path = Storage::disk('public')->get('visi_misi.json');
        $data = json_decode($path,true);

        $data['text'] = $request->content;

        try{
            $newJson = json_encode($data);
            Storage::disk('public')->put('visi_misi.json',$newJson);
            return redirect()->back()->with('success','Data Berhasil Diubah');
        }catch(\Throwable $th){
            throw $th;
        }
    }


    public function spmi()
    {
        $path = Storage::disk('public')->get('spmi.json');
        $data = json_decode($path,true);
        return view('dashboard.about.spmi',compact('data'));
    }

    public function indexspmi(Request $request)
    {
        $path = Storage::disk('public')->get('spmi.json');
        $data = json_decode($path,true);
        return view('about.spmi',compact('data'));
    }

    public function addspmi(Request $request)
    {
        $path = Storage::disk('public')->get('spmi.json');
        $data = json_decode($path,true);

        $data['text'] = $request->content;

        try{
            $newJson = json_encode($data);
            Storage::disk('public')->put('spmi.json',$newJson);
            return redirect()->back()->with('success','Data Berhasil Diubah');
        }catch(\Throwable $th){
            throw $th;
        }
    }

    // AMI

    public function ami()
    {
        $path = Storage::disk('public')->get('ami.json');
        $data = json_decode($path,true);
        return view('dashboard.about.ami',compact('data'));
    }

    public function indexami(Request $request)
    {
        $path = Storage::disk('public')->get('ami.json');
        $data = json_decode($path,true);
        return view('about.ami',compact('data'));
    }

    public function addami(Request $request)
    {
        $path = Storage::disk('public')->get('ami.json');
        $data = json_decode($path,true);

        $data['text'] = $request->content;

        try{
            $newJson = json_encode($data);
            Storage::disk('public')->put('ami.json',$newJson);
            return redirect()->back()->with('success','Data Berhasil Diubah');
        }catch(\Throwable $th){
            throw $th;
        }
    }

    public function sambutan()
    {
        $path = Storage::disk('public')->get('sambutan.json');
        $data = json_decode($path,true);
        return view('dashboard.about.sambutan',compact('data'));
    }

    public function indexsambutan(Request $request)
    {
        $path = Storage::disk('public')->get('sambutan.json');
        $data = json_decode($path,true);
        return view('about.sambutan',compact('data'));
    }

    public function addsambutan(Request $request)
    {
        $path = Storage::disk('public')->get('sambutan.json');
        $data = json_decode($path,true);

        

        $data['text'] = $request->content;
        $data['name'] = $request->name;
        
        try{
            if ($request->file('foto') !== null) {
                $file = $request->file('foto');

                $fileName = 'kepala.'.$file->getClientOriginalExtension();

                $file->move('img',$fileName);

                $data['img'] = "img/$fileName";
            }
            $newJson = json_encode($data);
            Storage::disk('public')->put('sambutan.json',$newJson);
            return redirect()->back()->with('success','Data Berhasil Diubah');
        }catch(\Throwable $th){
            throw $th;
        }
    }

    public function structure()
    {
        $path = Storage::disk('public')->get('struktur.json');
        $data = json_decode($path,true);
        return view('dashboard.about.structure',compact('data'));
    }

    public function indexstructure(Request $request)
    {
        $path = Storage::disk('public')->get('struktur.json');
        $data = json_decode($path,true);
        return view('about.structure',compact('data'));
    }

    public function addstructure(Request $request)
    {
        $path = Storage::disk('public')->get('struktur.json');
        $data = json_decode($path,true);

        

        $data['text'] = $request->content;
        $data['name'] = $request->name;
        // $file = $request->file('foto');

        // $fileName = 'structure.'.$file->getClientOriginalExtension();

        // $file->move('img',$fileName);

        // $data['img'] = "img/$fileName";
        try{
            $newJson = json_encode($data);
            Storage::disk('public')->put('struktur.json',$newJson);
            return redirect()->back()->with('success','Data Berhasil Diubah');
        }catch(\Throwable $th){
            throw $th;
        }
    }
}
