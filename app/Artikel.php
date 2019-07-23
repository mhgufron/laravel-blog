<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    protected $table = 'table_artikels';
    protected $guarded = ['id'];

    public function kategori()
    {
        return $this->belongsTo(\App\Categori::class, 'categoris_id', 'id');
    }

    public function getRouteKeyName()
    {
        return 'judul';
    }
}
