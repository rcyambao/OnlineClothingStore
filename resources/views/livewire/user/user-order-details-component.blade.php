<div>
    <div class="container" style="padding: 30px 0">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                <b>ORDERED DETAILS</b>
                            </div>
                            
                            <div class="col-md-6">
                                <a href="{{route('user.orders')}}" class="btn btn-success pull-right">My Orders</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>Order ID</td>
                                <td>{{$order->id}}</td>
                                <td>Order Date</td>
                                <td>{{$order->created_at}}</td>
                                <td>Status</td>
                                <td>{{$order->status}}</td>
                                @if($order->status == "delivered")
                                <td>Delivery Date</td>
                                <td>{{$order->delivered_date}}</td>
                                @elseif($order->status == "cancelled")
                                <td>Cancellation Date</td>
                                <td>{{$order->cancelled_date}}</td>
                                @endif
                            </tr>
                        
                        </table>
                    
                    </div>



                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                <b>ORDERED ITEMS</b>
                            </div>
                        
                            <div class="col-md-6">
                                <!-- <a href="{{route('admin.orders')}}" class="btn btn-success pull-right">All Orders</a> -->
                            </div>
                        </div>
                    </div>

                    <div class="panel-body">
                        <div class="wrap-iten-in-cart">                            
                            <h3 class="box-title">Products Name</h3>
                                <ul class="products-cart">
                                    @foreach($order ->orderItems as $item)
                                        <li class="pr-cart-item">
                                            <div class="product-image">
                                                <figure><img src="{{ asset('assets/images/products') }}/{{$item->product->image}}" alt="{{$item->product->name}}"></figure>
                                            </div>
                                            <div class="product-name">
                                                <a class="link-to-product" href="{{route('product.details',['slug'=>$item->product->slug])}}">{{$item->product->name}}</a>
                                            </div>
                                            <div class="price-field product-price">
                                                <p class="price">Php {{$item->price}}</p>
                                            </div>
                                            <div class="quantity">
                                                <h5>{{$item->quantity}}</h5>
                                            </div>
                                            <div class="price-field sub-total">
                                                <p class="price">Php {{$item->price * $item->quantity}}</p>
                                            </div>
                                        </li>
                                    @endforeach
                                </ul>
                        </div>
                        
                        <div class="summary">
                            <div class="order-summary">
                                <h4 class="title-box">Order Summary</h4>
                                <p class="summary-info"><span class="title">Subtotal</span><b class="index">Php {{$order->subtotal}}</b></p>
                                <p class="summary-info"><span class="title">Tax</span><b class="index">Php {{$order->tax}}</b></p>
                                <p class="summary-info"><span class="title">Shipping</span><b class="index">Free Shipping</b></p>
                                <p class="summary-info"><span class="title">Total</span><b class="index">Php {{$order->total}}</b></p>
                            </div>
                        </div>
                    </div> 

                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <b>BILLING DETAILS</b>
                    </div>
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>First Name</td>
                                <td>{{$order->firstname}}</td>
                                <td>Last Name</td>
                                <td>{{$order->lastname}}</td>
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td>{{$order->mobile}}</td>
                                <td>Email</td>
                                <td>{{$order->email}}</td>
                            </tr>
                            <tr>
                                <td>Line 1</td>
                                <td>{{$order->line1}}</td>
                                <td>Line 2</td>
                                <td>{{$order->line2}}</td>
                            </tr>
                            <tr>
                                <td>City</td>
                                <td>{{$order->city}}</td>
                                <td>Province</td>
                                <td>{{$order->province}}</td>
                            </tr>
                            <tr>
                                <td>Country</td>
                                <td>{{$order->country}}</td>
                                <td>Zipcode</td>
                                <td>{{$order->zipcode}}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        @if($order->is_shipping_different)
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <b>SHIPPING DETAILS</b>
                    </div>
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>First Name</td>
                                <td>{{$order->shipping->firstname}}</td>
                                <td>Last Name</td>
                                <td>{{$order->shipping->lastname}}</td>
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td>{{$order->shipping->mobile}}</td>
                                <td>Email</td>
                                <td>{{$order->shipping->email}}</td>
                            </tr>
                            <tr>
                                <td>Line 1</td>
                                <td>{{$order->shipping->line1}}</td>
                                <td>Line 2</td>
                                <td>{{$order->shipping->line2}}</td>
                            </tr>
                            <tr>
                                <td>City</td>
                                <td>{{$order->shipping->city}}</td>
                                <td>Province</td>
                                <td>{{$order->shipping->province}}</td>
                            </tr>
                            <tr>
                                <td>Country</td>
                                <td>{{$order->shipping->country}}</td>
                                <td>Zipcode</td>
                                <td>{{$order->shipping->zipcode}}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        @endif

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <b>TRANSACTION</b>
                    </div>
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <th>Transaction Mode</th>
                                <td>{{$order->transaction->mode}}</td>
                            </tr>
                            <!-- <tr>
                                <th>Status</th>
                                <td>{{$order->transaction->status}}</td>
                            </tr> -->
                            <tr>
                                <th>Transaction Date</th>
                                <td>{{$order->transaction->created_at}}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>