<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class category_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        Category::create([
            'category_name' => "visi",
            'desc' => "anjayy"
        ]);
    }
}
