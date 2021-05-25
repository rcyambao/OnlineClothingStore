<main id="main" class="main-site">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="/" class="link">home</a></li>
					<li class="item-link"><span>Cart</span></li>
				</ul>
			</div>
			<div class=" main-content-area">

				<div class="wrap-iten-in-cart">
				@if (Session::has('success_message'))
					<div class="alert alert-success">
						<strong>SUCCESS! </strong>{{Session::get('success_message')}}
				@endif
					
					</div>
					@if (Cart::count()>0)
					<h3 class="box-title">Products Name</h3>
					<ul class="products-cart">
					@foreach (Cart::content() as $item)
						<li class="pr-cart-item">
							<div class="product-image">
								<figure><img src="{{asset('assets/images/products')}}/{{$item->model->image}}" alt="{{$item->model->name}}"></figure>
							</div>
							<div class="product-name">
								<a class="link-to-product" href="{{route('product.details', ['slug'=>$item->model->slug])}}">{{$item->model->name}}</a>
							</div>
							<div class="price-field produtc-price"><p class="price">PHP {{$item->model->regular_price}}</p></div>
							<div class="quantity">
								<div class="quantity-input">
									<input type="text" name="product-quatity" value="{{$item->qty}}" data-max="120" pattern="[0-9]*" >									
									<a class="btn btn-increase" wire:click.prevent="increaseQuantity('{{$item->rowId}}')"></a>
									<a class="btn btn-reduce" wire:click.prevent="decreaseQuantity('{{$item->rowId}}')"></a>
								</div>
							</div>
							<div class="price-field sub-total"><p class="price">PHP {{$item->subtotal}}</p></div>
							<div class="delete">
								<a href="#" wire:click.prevent="destroy('{{$item->rowId}}')" class="btn btn-delete" title="">
									<span>DELETE FROM YOUR CART</span>
									<i class="fa fa-times-circle" aria-hidden="true"></i>
								</a>
							</div>
						</li>	
					@endforeach											
					</ul>
					@else
						<p>No item</p>
					@endif
				</div>

				<div class="summary">
					<div class="order-summary">
						<h4 class="title-box">ORDER SUMMARY</h4>
						<p class="summary-info"><span class="title">SubTotal: </span><b class="index">PHP {{Cart::subtotal()}}</b></p>
						<!-- <p class="summary-info"><span class="title">Tax</span><b class="index">Php{{Cart::tax()}}</b></p> -->
						<p class="summary-info"><span class="title">Shipping Fee: </span><b class="index">FREE SHIPPING</b></p>
						<p class="summary-info total-info "><span class="title">Total Amount Payable: </span><b class="index">PHP {{Cart::subtotal()}}</b></p>
					</div>
					<div class="checkout-info">
						<!-- <label class="checkbox-field">
							<input class="frm-input " name="have-code" id="have-code" value="" type="checkbox"><span>I have promo code</span>
						</label> -->
						<a class="btn btn-checkout" href="#">PROCEED TO CHECKOUT</a>
						<a class="link-to-shop" href="#">Continue Shopping<i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
					</div>
					<div class="update-clear">
						<a class="btn btn-clear" href="#" wire:click.prevent="destroyAll()"> CLEAR SHOPPING CART</a>
						<a class="btn btn-update" href="#"> UPDATE SHOPPING CART </a>
					</div>
				</div>

				<!-- MOST VIEWED PRODUCTS -->
				<div class="wrap-show-advance-info-box style-1 box-in-site">
					<h3 class="title-box">Most Viewed Products</h3>
					<div class="wrap-products">
						<div class="products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"3"},"1200":{"items":"5"}}' >

							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="{{asset('assets/images/products/tees_1.jpg')}}" width="214" height="214" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
									<div class="group-flash">
										<span class="flash-item new-label">new</span>
									</div>
									<div class="wrap-btn">
										<a href="#" class="function-link">quick view</a>
									</div>
								</div>
								<div class="product-info">
									<a href="#" class="product-name"><span>I Do Not Seek, I Find - Croptop</span></a>
									<div class="wrap-price"><span class="product-price">PHP 450.00</span></div>
								</div>
							</div>

							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="{{asset('assets/images/products/tees_2.jpg')}}" width="214" height="214" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
									<div class="group-flash">
										<span class="flash-item sale-label">sale</span>
									</div>
									<div class="wrap-btn">
										<a href="#" class="function-link">quick view</a>
									</div>
								</div>
								<div class="product-info">
									<a href="#" class="product-name"><span>Rainbow Sleeves with Ribbon</span></a>
									<div class="wrap-price"><ins><p class="product-price">PHP 367.50</p></ins> <del><p class="product-price">$250.00</p></del></div>
								</div>
							</div>

							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="{{asset('assets/images/products/tees_3.jpg')}}" width="214" height="214" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
									<div class="group-flash">
										<span class="flash-item new-label">new</span>
										<span class="flash-item sale-label">sale</span>
									</div>
									<div class="wrap-btn">
										<a href="#" class="function-link">quick view</a>
									</div>
								</div>
								<div class="product-info">
									<a href="#" class="product-name"><span>Simple Gray & Black Tees </span></a>
									<div class="wrap-price"><ins><p class="product-price">PHP 200.00</p></ins> <del><p class="product-price"> PHP 350.00</p></del></div>
								</div>
							</div>

							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="{{asset('assets/images/products/tees_4.jpg')}}" width="214" height="214" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
									<div class="group-flash">
										<span class="flash-item bestseller-label">Bestseller</span>
									</div>
									<div class="wrap-btn">
										<a href="#" class="function-link">quick view</a>
									</div>
								</div>
								<div class="product-info">
									<a href="#" class="product-name"><span>Gray Tees with Stripes Sleeves </span></a>
									<div class="wrap-price"><span class="product-price">PHP 350.00</span></div>
								</div>
							</div>

							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="{{asset('assets/images/products/girl_9.jpg')}}" width="214" height="214" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
									<div class="wrap-btn">
										<a href="#" class="function-link">quick view</a>
									</div>
								</div>
								<div class="product-info">
									<a href="#" class="product-name"><span>Pink Long Sleeves with Pearl</span></a>
									<div class="wrap-price"><span class="product-price">PHP 470.00</span></div>
								</div>
							</div>

							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="{{asset('assets/images/products/girl_7.jpg')}}" width="214" height="214" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
									<div class="group-flash">
										<span class="flash-item sale-label">sale</span>
									</div>
									<div class="wrap-btn">
										<a href="#" class="function-link">quick view</a>
									</div>
								</div>
								<div class="product-info">
								<div class="group-flash">
										<span class="flash-item sale-label">sale</span>
									</div>
									<a href="#" class="product-name"><span>Red Bangkok-insired Top</span></a>
									<div class="wrap-price"><ins><p class="product-price">PHP 768.00</p></ins> <del><p class="product-price">PHP 990.00</p></del></div>
								</div>
							</div>

							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="{{asset('assets/images/products/girl_6.jpg')}}" width="214" height="214" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
									<div class="group-flash">
										<span class="flash-item new-label">new</span>
									</div>
									<div class="wrap-btn">
										<a href="#" class="function-link">quick view</a>
									</div>
								</div>
								<div class="product-info">
									<a href="#" class="product-name"><span>Gray Crochet Long Sleeves </span></a>
									<div class="wrap-price"><span class="product-price">PHP 650.00</span></div>
								</div>
							</div>

							<div class="product product-style-2 equal-elem ">
								<div class="product-thumnail">
									<a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="{{asset('assets/images/products/girl_3.jpg')}}" width="214" height="200" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
									<div class="group-flash">
										<span class="flash-item bestseller-label">Bestseller</span>
									</div>
									<div class="wrap-btn">
										<a href="#" class="function-link">quick view</a>
									</div>
								</div>
								<div class="product-info">
									<a href="#" class="product-name"><span>Rose Brown Long Sleeves</span></a>
									<div class="wrap-price"><span class="product-price">PHP 550.00</span></div>
								</div>
							</div>
						</div>
					</div><!--End wrap-products-->
				</div>

			</div><!--end main content area-->
		</div><!--end container-->

	</main>