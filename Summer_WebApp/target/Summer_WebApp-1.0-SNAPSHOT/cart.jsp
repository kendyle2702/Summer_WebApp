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

                                    <div id="content-wrapper">

                                        <section id="main">
                                            <div class="cart-grid row">

                                                <!-- Left Block: cart product informations & shpping -->
                                                <div class="cart-grid-body col-xs-12 col-lg-8">

                                                    <!-- cart products detailed -->
                                                    <div class="card cart-container">
                                                        <div class="card-block">
                                                            <h1 class="h1">Shopping Cart</h1>
                                                        </div>
                                                        <% List<Product> cartItem = (List<Product>)
                                                                session.getAttribute("cart");
                                                                for (Product product : cartItem) {
                                                                %>
                                                                <hr class="separator">

                                                                <div class="cart-overview js-cart"
                                                                    data-refresh-url="//prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart?ajax=1&action=refresh">
                                                                    <ul class="cart-items">
                                                                        <li class="cart-item">

                                                                            <div class="product-line-grid">
                                                                                <!--  product left content: image-->
                                                                                <div
                                                                                    class="product-line-grid-left col-md-3 col-xs-4">
                                                                                    <span
                                                                                        class="product-image media-middle">

                                                                                        <img src="/img/<%=product.getImage()%>"
                                                                                            alt="Blended Smoothie cocktail">
                                                                                    </span>
                                                                                </div>

                                                                                <!--  product left body: description -->
                                                                                <div
                                                                                    class="product-line-grid-body col-md-4 col-xs-8">
                                                                                    <div class="product-line-info">
                                                                                        <a class="label"
                                                                                            href="/product/detail/<%=product.getProductID()%>"
                                                                                            data-id_customization="0">
                                                                                            <%=product.getProductName()%>
                                                                                        </a>
                                                                                    </div>

                                                                                    <div
                                                                                        class="product-line-info product-price h5 ">
                                                                                        <div class="current-price">
                                                                                            <span class="price">
                                                                                                <%=product.getPrice()%>
                                                                                            </span>
                                                                                        </div>

                                                                                    </div>

                                                                                </div>

                                                                                <!--  product left body: description -->
                                                                                <div
                                                                                    class="product-line-grid-right product-line-actions col-md-5 col-xs-12">
                                                                                    <div class="row">
                                                                                        <div
                                                                                            class="col-xs-4 hidden-md-up">
                                                                                        </div>
                                                                                        <div class="col-md-10 col-xs-6">
                                                                                            <div class="row">
                                                                                                <div class="col-md-6 col-xs-6 qty">
                                                            <script>
                                                                    function updateQuantity(e, pID) {
                                                                        let cart = [] 
                                                                        $.ajax({
                                                                            url: '/ajax',
                                                                            type: 'POST',
                                                                            success: function (response) {
                                                                                cart = response
                                                                                let total = 0;
                                                                                cart.forEach(product => {
                                                                                    let price = product.price * product.quantity;
                                                                                    $("#" + product.productID).html(price+"<sup>d</sup>");
                                                                                    total += price;
                                                                                })
                                                                                $(".ajax-price").html(total+"<sup>d</sup>");
                                                                                updateHeaderCart();
                                                                            },
                                                                            data: {
                                                                                updateQuantity: "true",
                                                                                productId: pID,
                                                                                quantity: e.target.value
                                                                            },
                                                                            error: function () {
                                                                                alert("error ajax get cart");
                                                                            }
                                                                        });
                                                                    }
                                                            </script>
                                    <input class="js-cart-line-product-quantity" data-down-url="" data-up-url="" data-update-url="" data-product-id="<%=product.getProductID()%>" type="number" value="<%=product.getQuantity()%>" name="product-quantity-spin" min="1" onchange="updateQuantity(event, <%=product.getProductID()%>)"/>
                                                                                                </div>
                                                                                                <div
                                                                                                    class="col-md-6 col-xs-2 price">
                                                                                                    <span
                                                                                                        class="product-price">
                                                                                                        <strong id="<%=product.getProductID()%>">
                                                                                                            <%=(float)
                                                                                                                product.getPrice()
                                                                                                                *
                                                                                                                product.getQuantity()%><sup>d</sup>
                                                                                                        </strong>
                                                                                                    </span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>


                                                                                        <script>
                                                                                            function toURL(url) {
                                                                                                window.location.href = url;
                                                                                            }
                                                                                        </script>

                                                                                        <div
                                                                                            class="col-md-2 col-xs-2 text-xs-right">
                                                                                            <div
                                                                                                class="cart-line-product-actions">
                                                                                                <a class="remove-from-cart"
                                                                                                    rel="nofollow"
                                                                                                    onclick="toURL('/cart/delete/<%=product.getProductID()%>')"
                                                                                                    href="/cart/delete/<%=product.getProductID()%>"
                                                                                                    data-link-action="delete-from-cart"
                                                                                                    data-id-product="<%=product.getProductID()%>"
                                                                                                    data-id-product-attribute="0"
                                                                                                    data-id-customization="">
                                                                                                    <i
                                                                                                        class="material-icons float-xs-left">delete</i>
                                                                                                </a>

                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>

                                                                                <div class="clearfix"></div>
                                                                            </div>

                                                                        </li>

                                                                    </ul>
                                                                </div>
                                                                <% } %>
                                                    </div>

                                                    <a class="label"
                                                        href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/">
                                                        <i class="material-icons">chevron_left</i>Continue shopping
                                                    </a>

                                                    <!-- shipping informations -->

                                                </div>

                                                <% float totalPrice=0; for (Product product : cartItem) { totalPrice
                                                    +=(float) product.getPrice() * product.getQuantity(); } %>
                                                    <!-- Right Block: cart subtotal & cart total -->
                                                    <div class="cart-grid-right col-xs-12 col-lg-4">

                                                        <div class="card cart-summary">

                                                            <div class="cart-detailed-totals">

                                                                <div class="card-block">
                                                                    <div class="cart-summary-line"
                                                                        id="cart-subtotal-products">
                                                                        <span class="label js-subtotal">
                                                                            <%=cartItem.size()%> items
                                                                        </span>
                                                                        <span class="value ajax-price" >
                                                                            <%=totalPrice%><sup>d</sup>
                                                                        </span>
                                                                    </div>
                                                                </div>

                                                                <div class="card-block cart-summary-totals">

                                                                    <div class="cart-summary-line">
                                                                        <span class="label">Total&nbsp;(tax
                                                                            excl.)</span>
                                                                        <span class="value ajax-price" >
                                                                            <%=totalPrice%><sup>d</sup>
                                                                        </span>
                                                                    </div>
                                                                    <div class="cart-summary-line cart-total">
                                                                        <span class="label">Total (tax incl.)</span>
                                                                        <span class="value ajax-price">
                                                                            <%=totalPrice%><sup>d</sup>
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
                                                                    <a href="#" class="btn btn-primary" >Proceed to
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