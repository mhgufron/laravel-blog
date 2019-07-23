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
}
