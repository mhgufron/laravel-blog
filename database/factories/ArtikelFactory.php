<?php

use Faker\Generator as Faker;
use App\Artikel;
use App\Categori;
use Illuminate\Support\Arr;

$factory->define(App\Artikel::class, function (Faker $faker) {
    $word = $faker->word;

    return [
        'judul'         => Str::slug($faker->unique()->name, '-'),
        'body'          => $word,
        'gambar'        => $faker->unique()->name,
        'categoris_id'  => function() {
            return Categori::all()->random();
        }
    ];
});
