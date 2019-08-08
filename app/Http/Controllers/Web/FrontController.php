<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Categori;
use App\Artikel;

class FrontController extends Controller
{
    public function index()
    {
        $categori = Categori::all();
        $artikel = Artikel::latest()->get()->random(2);
        $artikelAll = Artikel::latest()->get();
        $artikelMostRead = Artikel::latest()->limit(3)->get();

        return view('front', compact('categori', 'artikel', 'artikelAll', 'artikelMostRead'));
    }

    public function show(Artikel $artikel)
    {
        $artikel_detail = $artikel;
        $categori = Categori::withCount('artikel')->get();
        $artikelTerkait = Artikel::latest()->get()->random(3);
        $artikelMostRead = Artikel::latest()->limit(3)->get();

        return view('front.artikel_detail', compact('artikel_detail', 'categori','artikelMostRead','artikelTerkait'));
    }

    public function kategori(Categori $kategori)
    {
        $categori = Categori::all();
        $artikel = Artikel::latest()->get()->random(2);
        $artikelAll = $kategori->artikel()->get();
        $artikelMostRead = Artikel::latest()->limit(3)->get();
        
        return view('front', compact('categori', 'artikel', 'artikelAll', 'artikelMostRead'));
    }
    
    public function about()
    {
        $categori = Categori::all();
        return view('front.about', compact('categori'));
    }
}
