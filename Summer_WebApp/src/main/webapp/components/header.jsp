<%@page import="Models.Product" %>
    <%@page import="java.util.List" %>
        <%@page import="java.sql.ResultSet" %>
            <%@page import="DAOs.ProductDAO" %>
                <%@page import="Models.Account" %>
                    <%
                        ProductDAO proDAO=new ProductDAO();
                        Account account = (Account)session.getAttribute("acc");
                    %>
                        <style>
                            .ttuserheading {
                                display: flex;
                                gap: 5px;
                                align-items: center;
                            }

                            .ttuserheading span {
                                display: inline-block;
                                max-width: 100px;
                                white-space: nowrap;
                                overflow: hidden;
                                text-overflow: ellipsis;
                            }
                        </style>
                        <script>
                            function notifySuccess() {
                              Swal.fire({
                                icon: "success",
                                title: "Add to cart successful!",
                                showConfirmButton: true,
                                timer: 2000,
                              });
                            }
                            function notifyFail() {
                              Swal.fire({
                                icon: "error",
                                title: "Please login to shopping!",
                                showConfirmButton: true,
                                timer: 2000,
                              }).then(() => window.location.href = "/login");
                            }
                            function notifyError(title, text){
                              Swal.fire({
                                icon: "error",
                                title: title,
                                text: text,
                                showConfirmButton: true,
                              })
                            }
                            function addToCart(pID){
                                let quantity = 1;
                                if ($("#quantity_wanted").val()) {
                                    quantity = $("#quantity_wanted").val();
                                } $.ajax({
                                    url: '/ajax',
                                    type: 'POST',
                                    success: function (response) {
                                        products = response
                                    },
                                    data: {
                                        addCart: "true",
                                        productId: pID,
                                        quantity: quantity
                                    },
                                    success: function (response) {
                                        notifySuccess();
                                        updateHeaderCart();
                                    },
                                    error: function (response) {
                                        let data = response.responseJSON;
                                        notifyError(data["title"], data["text"]);
                                    }
                                });
                            }
                            $(document).ready(function () {
                                let products = []
                                let filter = [];
                                $.ajax({
                                    url: '/ajax',
                                    type: 'POST',
                                    success: function (response) {
                                        products = response
                                    },
                                    data: {
                                        "getAllProduct": "true",
                                    },
                                    error: function () {
                                        alert("error ajax get products");
                                    }
                                });
                                $("#search_query_top").on("input", function () {
                                    let searchBox = $("#ui-id-1")
                                    searchBox.empty()
                                    filter = products.filter(fil => fil.productName.toLowerCase().trim().includes($(this).val().toLowerCase().trim()))
                                    filter.forEach(product => {
                                        searchBox.append(" <li class='ui-menu-item' role='presentation'> <img src='/img/" + product.image + "' class='product-img'> <a id='" + product.productID + "' class='ui-corner-all' tabindex='-1'> <span class='category'>" + product.categoryName + "</span> <span class='separator'> &gt; </span> <span class='product'>" + product.productName + "</span> <span class='price'>" + product.price + "</span> </a> </li> ");
                                    });
                                    console.log(filter)
                                    if (filter.length === 0) {
                                        searchBox.css("display", "none")
                                    } else {
                                        const inputSearchRect = document.querySelector("#search_query_top").getBoundingClientRect()
                                        console.log(inputSearchRect)
                                        searchBox.css({
                                            "display": "block",
                                            "position": "fixed",
                                            "top": inputSearchRect.bottom - (inputSearchRect.height / 2),
                                            "left": inputSearchRect.left
                                        })
                                    }
                                })
                                updateHeaderCart();
                            });
                                    function updateHeaderCart() {
                                        $.ajax({
                                            url: '/ajax',
                                            type: 'POST',
                                            success: function (response) {
                                                let cart = response
                                                let desktopCart = $("#_desktop_cart")
                                                desktopCart.empty()
                                                if (cart.length === 0) {
                                                    desktopCart.append('<div class="blockcart cart-preview inactive" data-refresh-url=""> <div class="header"> <span class="shopping"> <i class="material-icons shopping-cart">shopping_cart</i> <span class="hidden-sm-down">Cart</span> <span class="cart-productsount">0</span> </span> </div> <div class="cart_block block exclusive"> <div class="block_content"> <div class="cart_head"></div> <div class="cart_block_list"> <p class="no-item">No products in the cart.</p> </div> </div> </div></div>')
                                                } else {
                                                    let totalPrice = 0;
                                                    let productList = ""
                                                    cart.forEach(product => {
                                                        totalPrice += product.price * product.quantity
                                                        productList += '<div class="products"> <div class="img"> <a href="/product/detail/' + product.productID + '" class="thumbnail product-thumbnail"> <img src="/img/' + product.image + '" alt="" data-full-size-image-url="/img/' + product.image + '" style="width: 70px; height: 70px;"> </a> </div> <div class="cart-info"> <h2 class="h2 productname" itemprop="name"> <a href="/product/detail/' + product.productID + '"> ' + product.productName + ' </a> </h2> <div class="ttPrice"> <span class="quantity"> ' + product.quantity + 'X </span> <span class="price">' + product.price + ' <sup>d</sup> </span> </div> </div> <p class="remove_link"> <a class="remove-from-cart" onclick="deleteProductInCart('+product.productID+')" rel="nofollow" href="#" data-link-action="delete-from-cart" data-id-product="13" data-id-product-attribute="0" data-id-customization=""><i class="material-icons">close</i></a></p></div>'
                                                    })
                                                    desktopCart.append('<div class="blockcart cart-preview active" data-refresh-url=""> <div class="header"> <span class="shopping"> <i class="material-icons shopping-cart">shopping_cart</i> <span class="hidden-sm-down">Cart</span> <span class="cart-products-count">' + cart.length + '</span> </span> </div> <div class="cart_block block exclusive"> <div class="block_content"> <div class="cart_head"> </div> <div class="cart_block_list"> <div class="cart_block_product_list"> ' + productList + ' </div> </div> </div> <div class="cart-prices"> <span class="total pull-left"> Total: </span> <span class="amount pull-right"> ' + totalPrice + '<sup>d</sup> </span> </div> <div class="cart-buttons"> <a rel="nofollow" href="/cart/checkout" class="btn-primary"> Check out <i class="ion-chevron-right"></i> </a> </div> </div> </div>')
                                                }
                                            },
                                            data: {
                                                "getCart": "true",
                                            },
                                            error: function () {
                                                alert("error ajax get products");
                                            }
                                        });
                                    }
                            function toURL(url) {
                                window.location.href = url;
                            }
                            function deleteProductInCart(pID){
                                $.ajax({
                                    url: '/ajax',
                                    type: 'POST',
                                    success: function (response) {
                                        updateHeaderCart();
                                        updateCartList();
                                        updateTotal();
                                    },
                                    data:{
                                        deleteCart: "true",
                                        productId: pID
                                    },
                                    error: function () {
                                        alert("error ajax delete product in cart");
                                    }
                                });
                            }
                        </script>
                        <header id="header">
                            <div class="header-banner"></div>

                            <div class="full-header">
                                <nav class="header-nav">
                                    <div class="left-nav">
                                        <div id="_desktop_language_selector"></div>
                                        <div id="_desktop_currency_selector">
                                            <div class="currency-selector dropdown ttdropdown js-dropdown">
                                                <span id="currency-selector-label" class="hidden-md-up">Currency:</span>
                                                <button data-target="#" data-toggle="dropdown"
                                                    class="hidden-sm-down btn-unstyle" aria-haspopup="true"
                                                    aria-expanded="false" aria-label="Currency dropdown">
                                                    <span class="expand-more _gray-darker">USD $</span>
                                                    <i class="material-icons expand-more">&#xE313;</i>
                                                    <i class="material-icons expand-less">&#xE316;</i>
                                                </button>
                                                <ul class="dropdown-menu hidden-sm-down"
                                                    aria-labelledby="currency-selector-label">
                                                    <li>
                                                        <a title="Euro" rel="nofollow"
                                                            href="index6edc.html?SubmitCurrency=1&amp;id_currency=2"
                                                            class="dropdown-item">EUR ?</a>
                                                    </li>
                                                    <li class="current">
                                                        <a title="US Dollar" rel="nofollow"
                                                            href="#"
                                                            class="dropdown-item">USD $</a>
                                                    </li>
                                                </ul>
                                                <select class="link hidden-md-up"
                                                    aria-labelledby="currency-selector-label">
                                                    <option
                                                        value="">
                                                        USD $
                                                    </option>
                                                    <option
                                                        value=""
                                                        selected="selected">
                                                        VND <sup>d</sup>
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </nav>

                                <div class="header-top">
                                    <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
                                        <h1>
                                            <a href="/">
                                                <img class="logo img-responsive" src="/img/demo-logo-1615016276.jpg"
                                                    alt="demo store" width="185" height="60" />
                                            </a>
                                        </h1>
                                    </div>

                                    <div class="top-wishlist" id="top-wishlist">
                                        <a class="wishtlist_top" href="/" title="Wishlists" rel="nofollow">
                                            <i class="material-icons">favorite_border</i><span
                                                class="cart-wishlist-number">0</span>
                                        </a>
                                    </div>

                                    <div class="hidden-md-up text-sm-center mobile">
                                        <div id="mobile_menu">
                                            <div class="float-xs-left" id="menu-icon">
                                                <i class="material-icons">&#xE5D2;</i>
                                            </div>
                                            <div class="float-xs-right" id="_mobile_cart"></div>
                                            <div class="float-xs-right" id="_mobile_user_info"></div>
                                        </div>
                                    </div>
                                    <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display: none">
                                        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
                                    </div>
                                    <!-- Module Megamenu-->
                                    <div class="container_tt_megamenu">
                                        <div id="tt-menu-horizontal" class="tt-menu-horizontal clearfix">
                                            <div class="title-menu-mobile">
                                                <span>Shop Categories</span><i class="material-icons">&#xE5D2;</i>
                                            </div>
                                            <div class="ttmenu-content">
                                                <ul class="menu-content">
                                                    <li class="level-1 parent">
                                                        <a href="/product/iceCream" class="ttinnermenu">
                                                            <span class="catagory">Ice Cream</span>
                                                        </a>
                                                        <span class="icon-drop-mobile"></span>
                                                        <ul class="menu-dropdown cat-drop-menu tt-sub-right">
                                                            <% ResultSet rsCreamh=proDAO.getProductByCategory(3); while
                                                                (rsCreamh.next()) { %>
                                                                <li class="level-2">
                                                                    <a class="ttinnermenu"
                                                                        href="/product/detail/<%= rsCreamh.getInt("productID")%>"><span class="catagory">
                                                                            <%= rsCreamh.getString("ProductName")%>
                                                                        </span></a>
                                                                </li>
                                                                <% } %>

                                                        </ul>
                                                    </li>
                                                    <li class="level-1 parent">
                                                        <a href="/product/iceDrink" class="ttinnermenu">
                                                            <span class="catagory">Ice Drink</span>
                                                        </a>
                                                        <span class="icon-drop-mobile"></span>
                                                        <ul class="menu-dropdown cat-drop-menu tt-sub-right">
                                                            <% ResultSet rsDrinkh=proDAO.getProductByCategory(4); while
                                                                (rsDrinkh.next()) { %>
                                                                <li class="level-2">
                                                                    <a class="ttinnermenu"
                                                                        href="/product/detail/<%= rsDrinkh.getInt("productID")%>"><span class="catagory">
                                                                            <%= rsDrinkh.getString("ProductName")%>
                                                                        </span></a>
                                                                </li>
                                                                <% } %>
                                                        </ul>
                                                    </li>
                                                    <li class="level-1 parent">
                                                        <a class="ttinnermenu" href="/product/iceJuice"><span
                                                                class="catagory">Ice Juice</span></a><span
                                                            class="icon-drop-mobile"></span>
                                                        <ul class="menu-dropdown cat-drop-menu tt-sub-right">
                                                            <% ResultSet rsJuiceh=proDAO.getProductByCategory(2); while
                                                                (rsJuiceh.next()) { %>
                                                                <li class="level-2">
                                                                    <a class="ttinnermenu"
                                                                        href="/product/detail/<%= rsJuiceh.getInt("productID")%>"><span class="catagory">
                                                                            <%= rsJuiceh.getString("ProductName")%>
                                                                        </span></a>
                                                                </li>
                                                                <% } %>
                                                        </ul>
                                                    </li>
                                                    <li class="level-1 parent">
                                                        <a class="ttinnermenu" href="/product/icePop"><span
                                                                class="catagory">Ice Pop</span></a><span
                                                            class="icon-drop-mobile"></span>
                                                        <ul class="menu-dropdown cat-drop-menu tt-sub-right">
                                                            <% ResultSet rsPoph=proDAO.getProductByCategory(1); while
                                                                (rsPoph.next()) { %>
                                                                <li class="level-2">
                                                                    <a class="ttinnermenu"
                                                                        href="/product/detail/<%= rsPoph.getInt("productID")%>"><span class="catagory">
                                                                            <%= rsPoph.getString("ProductName")%>
                                                                        </span></a>
                                                                </li>
                                                                <% } %>
                                                        </ul>
                                                    </li>

                                                    <li class="level-1">
                                                        <a href="#" class="ttinnermenu">
                                                            <span class="catagory">About us</span>
                                                        </a>
                                                        <span class="icon-drop-mobile"></span>
                                                    </li>

                                                    <li class="level-1">
                                                        <a href="contact-us.jsp" class="ttinnermenu">
                                                            <span class="catagory">Contact us</span>
                                                        </a>
                                                        <span class="icon-drop-mobile"></span>
                                                    </li>
                                                </ul>
                                                <div class="js-top-menu-bottom">
                                                    <div id="_mobile_currency_selector"></div>
                                                    <div id="_mobile_language_selector"></div>
                                                    <div id="_mobile_contact_link"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <script>
                                        $(document).ready(function () {
                                            var max_link = 4;
                                            var items = $(".tt-menu-horizontal li.level-1");
                                            var surplus = items.slice(max_link, items.length);
                                            var more_info = "More";

                                            surplus.wrapAll(
                                                '<li class="more_menu level-1"><ul class="menu-dropdown cat-drop-menu">'
                                            );
                                            $(".more_menu").prepend(
                                                '<a href="#" class="dropdown-item">' +
                                                more_info +
                                                '<span class="blog-nav-dot blog-detail-dot"></span></a>'
                                            );
                                            $(window).resize(function () {
                                                if ($(window).width() >= 992) {
                                                    $(".more_menu .menu-dropdown li")
                                                        .addClass("level-2")
                                                        .removeClass("level-1");
                                                }
                                            });

                                            $(window).resize();

                                            var ttcat_count = $(".more_menu ul > li.level-2 .CAT").length;
                                            if (ttcat_count > 2) {
                                                $(".more_menu > ul").addClass("tt-sub-auto");
                                            }
                                            $(".container_tt_megamenu").css("display", "inline-block");
                                        });
                                    </script>
                                    <!-- /Module Megamenu -->

                                            <div id="_desktop_cart">
                                                
                                            </div>


                                                    <div id="_desktop_user_info">
                                                        <div class="ttuserheading">
                                                            <i class="material-icons user">&#xE7FF;</i>
                                                            <% Account a=(Account) session.getAttribute("acc"); %>
                                                                <%=a !=null ? "<span> " + a.getFullName() + "</span>"
                                                                    : "<span>My Account</span> " %>
                                                                    <i class="material-icons expand-more">&#xE313;</i>
                                                                    <i class="material-icons expand-less">&#xE316;</i>
                                                        </div>
                                                        <ul class="user-info">
                                                            <li>
                                                                <a href="<%=a != null ? "/login/out" : "/login" %>"
                                                                    title="Log in to your customer account"
                                                                    rel="nofollow">
                                                                    <i class="material-icons user">&#xE7FF;</i>
                                                                    <%= a !=null ? "<span class=\" hidden-sm-down\">Sign Out</span>" : "<span class=\"hidden-sm-down\">Sign In</span>"%>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a class="bt_compare"
                                                                    href="module/ttcompare/compare.html" title="Compare"
                                                                    rel="nofollow">
                                                                    <span>Compare (<span
                                                                            class="total-compare-val">0</span>)</span>
                                                                </a>
                                                                <input type="hidden" name="compare_product_count"
                                                                    class="compare_product_count" value="0" />
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- Block search module TOP -->
                                                    <div id="search_widget" class="search-widget"
                                                        data-search-controller-url="">
                                                        <span class="ttsearch_button">
                                                            <i class="material-icons search">&#xE8B6;</i>
                                                        </span>
                                                        <div class="ttsearchtoggle">
                                                            <form method="get"
                                                                action="">
                                                                <input type="hidden" name="controller" value="search" />
                                                                <input type="text" name="s" id="search_query_top"
                                                                    value="" placeholder="Search our catalog"
                                                                    aria-label="Search" />
                                                                <button type="submit">
                                                                    <i class="material-icons search">&#xE8B6;</i>
                                                                    <span class="hidden-xl-down">Search</span>
                                                                </button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <!-- /Block search module TOP -->

                                                    <div class="top-logo" id="_mobile_logo"></div>
                                </div>
                            </div>
                        </header>