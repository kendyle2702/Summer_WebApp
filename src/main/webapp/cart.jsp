<%@page import="java.util.List" %>
    <%@page import="Models.Product" %>
        <%@page import="Models.Product" %>
            <!doctype html>
            <html lang="en">

            <head>
                <%@include file="/components/head.jsp" %>
            </head>

            <body id="cart" class="lang-en country-us currency-usd layout-full-width page-cart tax-display-disabled"
                itemscope itemtype="http://schema.org/WebPage">
                <%@include file="/components/header.jsp" %>
                    <div class="ttloading-bg spinner"></div>
                    <div class="newsletter-pop">

                    </div>

                    <main>
                        <div id="page" class="">
                            <nav data-depth="1" class="breadcrumb hidden-sm-down">
                                <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                                    <li>
                                        <span>Cart</span>
                                    </li>

                                </ol>
                            </nav>

                            <section id="wrapper">

                                <aside id="notifications">
                                    <div class="container">

                                    </div>
                                </aside>
                                <div class="container">
<script>
    function updateCartListFirst(){
        $.ajax({
            url: '/ajax',
            type: 'POST',
            success: function (response) {
                let cart = response
                let cartList = ""
                let cartItems = $("#cart-list-detail");
                cartItems.empty();
                cart.forEach(product => {
                    cartList += '<hr class="separator"> <div class="cart-overview js-cart" data-refresh-url=""> <ul class="cart-items"> <li class="cart-item"> <div class="product-line-grid"> <!--  product left content: image--> <div class="product-line-grid-left col-md-3 col-xs-4"> <span class="product-image media-middle"> <img src="/img/'+product.image+'" alt="'+product.productName+'"> </span> </div> <!--  product left body: description --> <div class="product-line-grid-body col-md-4 col-xs-8"> <div class="product-line-info"> <a class="label" href="/product/detail/'+product.productID+'" data-id_customization="0">'+product.productName+'</a> </div> <div class="product-line-info product-price h5 "> <div class="current-price"> <span class="price">'+product.price+'<sup>d</sup></span> </div> </div> </div> <!--  product left body: description --> <div class="product-line-grid-right product-line-actions col-md-5 col-xs-12"> <div class="row"> <div class="col-xs-4 hidden-md-up"></div> <div class="col-md-10 col-xs-6"> <div class="row"> <div class="col-md-6 col-xs-6 qty"> <input class="js-cart-line-product-quantity" data-down-url="" data-up-url="" data-update-url="" data-product-id="'+product.productID+'" type="number" value="'+product.quantity+'" name="product-quantity-spin" min="1" onchange="updateQuantity(event, '+product.productID+')" /> </div> <div class="col-md-6 col-xs-2 price"> <span class="product-price"> <strong> '+(product.price * product.quantity)+'<sup>d</sup> </strong> </span> </div> </div> </div> <div class="col-md-2 col-xs-2 text-xs-right"> <div class="cart-line-product-actions"> <a class="remove-from-cart" rel="nofollow" href="#" data-link-action="delete-from-cart" data-id-product="12" data-id-product-attribute="0" data-id-customization="" onclick="deleteProductInCart('+product.productID+')"> <i class="material-icons float-xs-left">delete</i> </a> </div> </div> </div> </div> <div class="clearfix"></div> </div> </li> </ul> </div>'
                })
                cartItems.html('<div class="card-block"> <h1 class="h1">Shopping Cart</h1></div>'+cartList);
            },
            data: {
                getCart: "true",
            },
            error: function () {
                alert("error ajax get cart");
            }
        });
    }
    function updateCartList(){
        $.ajax({
            url: '/ajax',
            type: 'POST',
            success: function (response) {
                let cart = response
                let cartList = ""
                let cartItems = $("#cart-list-detail");
                cartItems.empty();
                cart.forEach(product => {
                    cartList += '<hr class="separator"> <div class="cart-overview js-cart" data-refresh-url=""> <ul class="cart-items"> <li class="cart-item"> <div class="product-line-grid"> <!--  product left content: image--> <div class="product-line-grid-left col-md-3 col-xs-4"> <span class="product-image media-middle"> <img src="/img/'+product.image+'" alt="'+product.productName+'"> </span> </div> <!--  product left body: description --> <div class="product-line-grid-body col-md-4 col-xs-8"> <div class="product-line-info"> <a class="label" href="/product/detail/'+product.productID+'" data-id_customization="0">'+product.productName+'</a> </div> <div class="product-line-info product-price h5 "> <div class="current-price"> <span class="price">'+product.price+'<sup>d</sup></span> </div> </div> </div> <!--  product left body: description --> <div class="product-line-grid-right product-line-actions col-md-5 col-xs-12"> <div class="row"> <div class="col-xs-4 hidden-md-up"></div> <div class="col-md-10 col-xs-6"> <div class="row"> <div class="col-md-6 col-xs-6 qty"> <div class="input-group bootstrap-touchspin"> <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span> <input id="'+product.productID+'" class="js-cart-line-product-quantity form-control" data-down-url="" data-up-url="" data-update-url="" data-product-id="'+product.productID+'" type="number" value="'+product.quantity+'" name="product-quantity-spin" min="1" onchange="updateQuantity(event, '+product.productID+')" /> <span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span> <span class="input-group-btn-vertical"> <button class="btn btn-touchspin js-touchspin js-increase-product-quantity bootstrap-touchspin-up" type="button" onclick="increaseQuantity('+product.productID+')"> <i class="material-icons touchspin-up"></i> </button> <button class="btn btn-touchspin js-touchspin js-decrease-product-quantity bootstrap-touchspin-down" type="button" onclick="decreaseQuantity('+product.productID+')"> <i class="material-icons touchspin-down"></i> </button> </span> </div> </div> <div class="col-md-6 col-xs-2 price"> <span class="product-price"> <strong> '+(product.price * product.quantity)+'<sup>d</sup></strong> </span> </div> </div> </div> <div class="col-md-2 col-xs-2 text-xs-right"> <div class="cart-line-product-actions"> <a class="remove-from-cart" rel="nofollow" href="#" data-link-action="delete-from-cart" data-id-product="12" data-id-product-attribute="0" data-id-customization="" onclick="deleteProductInCart('+product.productID+')"> <i class="material-icons float-xs-left">delete</i> </a> </div> </div> </div> </div> <div class="clearfix"></div> </div> </li> </ul> </div>'
                })
                cartItems.html('<div class="card-block"> <h1 class="h1">Shopping Cart</h1></div>'+cartList);
            },
            data: {
                getCart: "true",
            },
            error: function (response) {
                alert("error ajax get cart")
            }
        });
    }
    function updateQuantity(e, pID) {
        let quantity = e.target.value;
        if(quantity <= 0){
            quantity = 1
        }
        $.ajax({
            url: '/ajax',
            type: 'POST',
            success: function (response) {
                let cart = response
                let total = 0;
                cart.forEach(product => {
                    let price = product.price * product.quantity;
                    $("#" + product.productID).html(price + "<sup>d</sup>");
                    total += price;
                })
                $(".ajax-price").html(total + "<sup>d</sup>");
                updateHeaderCart();
                updateCartList();
            },
            data: {
                updateQuantity: "true",
                productId: pID,
                quantity: quantity
            },
            error: function (response) {
                let data = response.responseJSON;
                notifyError(data["title"], data["text"])
                updateCartList();
            }
        });
    }
    function updateTotal(){
        $.ajax({
            url: '/ajax',
            type: 'POST',
            success: function (response) {
                let cart = response
                let cartTotal = $(".cart-detailed-totals")
                let total = 0;
                cart.forEach(product => {
                    total += product.price * product.quantity;
                })
                cartTotal.html('<div class="card-block"> <div class="cart-summary-line" id="cart-subtotal-products"> <span class="label js-subtotal">'+cart.length+' items </span> <span class="value ajax-price"> '+total+'<sup>d</sup> </span> </div> </div> <div class="card-block cart-summary-totals"> <div class="cart-summary-line"> <span class="label">Total&nbsp;(tax excl.)</span> <span class="value ajax-price"> '+total+'<sup>d</sup> </span> </div> <div class="cart-summary-line cart-total"> <span class="label">Total (tax incl.)</span> <span class="value ajax-price"> '+total+'<sup>d</sup> </span> </div> <div class="cart-summary-line"> <span class="label sub">Taxes:</span> <span class="value sub">0 <sup>d</sup> </span> </div> </div>')
            },
            data: {
                getCart: "true",
            },
            error: function () {
                alert("error ajax get cart");
            }
        });
    }
    function increaseQuantity(inputID){
        let inputQuantity = $("#" + inputID)
        let quantity = Number(inputQuantity.val())
        inputQuantity.val(quantity + 1)
        inputQuantity.trigger('change')
    }
    function decreaseQuantity(inputID){
        let inputQuantity = $("#" + inputID)
        let quantity = Number(inputQuantity.val())
        if (quantity > 1) {
            inputQuantity.val(quantity - 1)
        }
        inputQuantity.trigger('change')
    }
    updateCartListFirst();
    updateTotal();
</script>
                                    <div id="content-wrapper">

                                        <section id="main">
                                            <div class="cart-grid row">

                                                <!-- Left Block: cart product informations & shpping -->
                                                <div class="cart-grid-body col-xs-12 col-lg-8">

                                                    <!-- cart products detailed -->
                                                    <div class="card cart-container" id="cart-list-detail">
                                                        <div class="card-block">
                                                            <h1 class="h1">Shopping Cart</h1>
                                                        </div>
                                                    </div>

                                                    <a class="label"
                                                        href="/">
                                                        <i class="material-icons">chevron_left</i>Continue shopping
                                                    </a>

                                                    <!-- shipping informations -->

                                                </div>

                                                    <div class="cart-grid-right col-xs-12 col-lg-4">

                                                        <div class="card cart-summary">

                                                            <div class="cart-detailed-totals">

                                                                <div class="card-block">
                                                                    <div class="cart-summary-line"
                                                                        id="cart-subtotal-products">
                                                                        <span class="label js-subtotal">
                                                                             items
                                                                        </span>
                                                                        <span class="value ajax-price" >
                                                                            <sup>d</sup>
                                                                        </span>
                                                                    </div>
                                                                </div>

                                                                <div class="card-block cart-summary-totals">

                                                                    <div class="cart-summary-line">
                                                                        <span class="label">Total&nbsp;(tax
                                                                            excl.)</span>
                                                                        <span class="value ajax-price" >
                                                                            <sup>d</sup>
                                                                        </span>
                                                                    </div>
                                                                    <div class="cart-summary-line cart-total">
                                                                        <span class="label">Total (tax incl.)</span>
                                                                        <span class="value ajax-price">
                                                                            <sup>d</sup>
                                                                        </span>
                                                                    </div>

                                                                    <div class="cart-summary-line">
                                                                        <span class="label sub">Taxes:</span>
                                                                        <span class="value sub">0<sup>d</sup></span>
                                                                    </div>

                                                                </div>

                                                            </div>

                                                            <div class="checkout cart-detailed-actions card-block">
                                                                <div class="text-sm-center" >
                                                                    <a href="/cart/order" class="btn btn-primary" >Proceed to
                                                                        checkout</a>

                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div class="blockreassurance_product">
                                                            <div>
                                                                <span class="item-product">
                                                                    <img class="svg invisible"
                                                                        src="/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/security.svg">
                                                                    &nbsp;
                                                                </span>
                                                                <span class="block-title"
                                                                    style="color:#000000;">Security policy</span>
                                                                <p style="color:#000000;">(edit with the Customer
                                                                    Reassurance module)</p>
                                                            </div>
                                                            <div>
                                                                <span class="item-product">
                                                                    <img class="svg invisible"
                                                                        src="/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/carrier.svg">
                                                                    &nbsp;
                                                                </span>
                                                                <span class="block-title"
                                                                    style="color:#000000;">Delivery policy</span>
                                                                <p style="color:#000000;">(edit with the Customer
                                                                    Reassurance module)</p>
                                                            </div>
                                                            <div>
                                                                <span class="item-product">
                                                                    <img class="svg invisible"
                                                                        src="/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/parcel.svg">
                                                                    &nbsp;
                                                                </span>
                                                                <span class="block-title" style="color:#000000;">Return
                                                                    policy</span>
                                                                <p style="color:#000000;">(edit with the Customer
                                                                    Reassurance module)</p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>

                                            </div>
                                        </section>
                                    </div>

                                </div>

                            </section>
                            <%@include file="/components/footer.jsp" %>
                        </div>
                    </main>


                    <script src="/js/bottom-8d0d2558.js"></script>
            </body>

            </html>