<?php

namespace App\Http\Livewire;

use App\Models\HomeCategory;
use App\Models\Category;
use App\Models\HomeSlider;
use App\Models\Product;
use App\Models\Sale;
use Livewire\Component;

class HomeComponent extends Component
{
    public function render()
    {    
        $category = HomeCategory::find(1);
        $cats = explode(',', $category->sel_categories);
        $categories = Category::whereIn('id', $cats)->get();
        $no_of_products = $category->no_of_products;
        $sproducts = Product::where('sale_price', '>', 0)->inRandomOrder()->get()->take(8);
        $sale = Sale::find(1);
        return view('livewire.home-component', ['categories' => $categories, 'no_of_products' => $no_of_products])->layout('layouts.base');
        // return view('livewire.home-component')->layout('layouts.base');
    }
}
