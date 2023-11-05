<%@page import="Models.Account"%>
<style>
    .ttuserheading{
        display: flex;
        gap: 5px;
        align-items: center;
    }
    .ttuserheading span{
        display: inline-block;
        max-width: 100px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
     
   
</style>
<header id="header">
    <div class="header-banner"></div>

    <div class="full-header">
        <nav class="header-nav">
            <div class="left-nav">
                <div id="_desktop_language_selector"></div>
                <div id="_desktop_currency_selector">
                    <div class="currency-selector dropdown ttdropdown js-dropdown">
                        <span id="currency-selector-label" class="hidden-md-up">Currency:</span>
                        <button data-target="#" data-toggle="dropdown" class="hidden-sm-down btn-unstyle" aria-haspopup="true"
                                aria-expanded="false" aria-label="Currency dropdown">
                            <span class="expand-more _gray-darker">USD $</span>
                            <i class="material-icons expand-more">&#xE313;</i>
                            <i class="material-icons expand-less">&#xE316;</i>
                        </button>
                        <ul class="dropdown-menu hidden-sm-down" aria-labelledby="currency-selector-label">
                            <li>
                                <a title="Euro" rel="nofollow" href="index6edc.html?SubmitCurrency=1&amp;id_currency=2"
                                   class="dropdown-item">EUR €</a>
                            </li>
                            <li class="current">
                                <a title="US Dollar" rel="nofollow" href="indexe3c8.html?SubmitCurrency=1&amp;id_currency=1"
                                   class="dropdown-item">USD $</a>
                            </li>
                        </ul>
                        <select class="link hidden-md-up" aria-labelledby="currency-selector-label">
                            <option
                                value="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/?SubmitCurrency=1&amp;id_currency=2">
                                EUR €
                            </option>
                            <option
                                value="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/?SubmitCurrency=1&amp;id_currency=1"
                                selected="selected">
                                USD $
                            </option>
                        </select>
                    </div>
                </div>
            </div>
        </nav>

        <div class="header-top">
            <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
                <h1>
                    <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/">
                        <img class="logo img-responsive" src="../img/demo-logo-1615016276.jpg" alt="demo store" width="185"
                             height="60" />
                    </a>
                </h1>
            </div>
            <%
                if (session.getAttribute("acc") != null) {
                    Account acc2 = (Account) session.getAttribute("acc");
                    if (acc2.getRole() == "member") {%>
                        <div class="top-wishlist" id="top-wishlist">
                            <a class="wishtlist_top" href="loginb6ea.html" title="Wishlists" rel="nofollow">
                                <i class="material-icons">favorite_border</i><span class="cart-wishlist-number">0</span>
                            </a>
                        </div> 
                    <%}
                }
                else{%>
                    <div class="top-wishlist" id="top-wishlist">
                            <a class="wishtlist_top" href="loginb6ea.html" title="Wishlists" rel="nofollow">
                                <i class="material-icons">favorite_border</i><span class="cart-wishlist-number">0</span>
                            </a>
                    </div> 
                <%}
            %>


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
                                <a href="6-drinks.html" class="ttinnermenu">
                                    <span class="catagory">Ice Cream</span>
                                </a>
                                <span class="icon-drop-mobile"></span>
                                <ul class="menu-dropdown cat-drop-menu tt-sub-right">
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="71-choco-browie.html"><span class="catagory">Mint
                                                Chocolate</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="72-dark-chocolate.html"><span class="catagory">Buttered
                                                Pecan</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="73-cornetto-chokiss.html"><span class="catagory">Strawberry</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="74-cookies-creams.html"><span class="catagory">Vanilla</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="75-avocado-corn.html"><span class="catagory">Baskin
                                                Robbins</span></a>
                                    </li>
                                </ul>
                            </li>
                            <li class="level-1 parent">
                                <a href="9-treats.html" class="ttinnermenu">
                                    <span class="catagory">Ice Drink</span>
                                </a>
                                <span class="icon-drop-mobile"></span>
                                <ul class="menu-dropdown cat-drop-menu tt-sub-right">
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="71-choco-browie.html"><span class="catagory">Black
                                                Raspberry</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="72-dark-chocolate.html"><span class="catagory">Strawberry
                                                Lemonade</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="73-cornetto-chokiss.html"><span class="catagory">Grape
                                                Raspberry</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="74-cookies-creams.html"><span class="catagory">Crisp Apple</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="75-avocado-corn.html"><span class="catagory">Kiwi
                                                Strawberry</span></a>
                                    </li>
                                </ul>
                            </li>
                            <li class="level-1 parent">
                                <a class="ttinnermenu" href="43-flavours.html"><span class="catagory">Ice Juice</span></a><span
                                    class="icon-drop-mobile"></span>
                                <ul class="menu-dropdown cat-drop-menu tt-sub-right">
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="61-badam-roasted.html"><span class="catagory">Apple Juice.</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="62-kesar-pista.html"><span class="catagory">Cranberry
                                                Juice</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="63-choco-treat.html"><span class="catagory">Beet Juice</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="60-butterscotch.html"><span class="catagory">Cantaloupe
                                                Juice</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="64-vanilla-mini.html"><span class="catagory">Grapefruit
                                                Juice</span></a>
                                    </li>
                                </ul>
                            </li>
                            <li class="level-1 parent">
                                <a class="ttinnermenu" href="40-scoops.html"><span class="catagory">Ice Pop</span></a><span
                                    class="icon-drop-mobile"></span>
                                <ul class="menu-dropdown cat-drop-menu tt-sub-right">
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="45-vanilla.html"><span class="catagory">Lemon Lime</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="46-strawberry.html"><span class="catagory">Punch Pink</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="47-pista.html"><span class="catagory">Tropical Tip</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="48-butter-scotch.html"><span class="catagory">Berry Blue</span></a>
                                    </li>
                                    <li class="level-2">
                                        <a class="ttinnermenu" href="49-plain-pista.html"><span class="catagory">Strawberry Red</span></a>
                                    </li>
                                </ul>
                            </li>

                            <li class="level-1">
                                <a href="content/4-about-us.html" class="ttinnermenu">
                                    <span class="catagory">About us</span>
                                </a>
                                <span class="icon-drop-mobile"></span>
                            </li>
                            <li class="level-1 parent">
                                <a class="ttinnermenu" href="6-drinks.html"><span class="catagory">Drinks</span></a><span
                                    class="icon-drop-mobile"></span>
                                <ul class="menu-dropdown cat-drop-menu tt-sub-auto">
                                    <li class="level-2 parent">
                                        <a class="ttinnermenu" href="40-scoops.html"><span class="catagory">Scoops</span></a><span
                                            class="icon-drop-mobile"></span>
                                        <ul class="menu-dropdown cat-drop-menu">
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="45-vanilla.html"><span class="catagory">Vanilla</span></a>
                                            </li>
                                            <li class="level-3 parent">
                                                <a class="ttinnermenu" href="46-strawberry.html"><span
                                                        class="catagory">Strawberry</span></a><span class="icon-drop-mobile"></span>
                                                <ul class="menu-dropdown cat-drop-menu">
                                                    <li class="level-4">
                                                        <a class="ttinnermenu" href="80-strawberry-juice.html"><span class="catagory">Strawberry
                                                                Juice</span></a>
                                                    </li>
                                                    <li class="level-4">
                                                        <a class="ttinnermenu" href="81-strawberry-ice.html"><span class="catagory">Strawberry
                                                                Ice</span></a>
                                                    </li>
                                                    <li class="level-4">
                                                        <a class="ttinnermenu" href="82-strawberry-cream.html"><span class="catagory">Strawberry
                                                                Cream</span></a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="47-pista.html"><span class="catagory">Pista</span></a>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="48-butter-scotch.html"><span class="catagory">Butter
                                                        Scotch</span></a>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="49-plain-pista.html"><span class="catagory">Plain
                                                        Pista</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="level-2 parent">
                                        <a class="ttinnermenu" href="44-premium-tubs.html"><span class="catagory">Premium
                                                Tubs</span></a><span class="icon-drop-mobile"></span>
                                        <ul class="menu-dropdown cat-drop-menu">
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="65-vanilla-400ml.html"><span class="catagory">Vanilla
                                                        400ml</span></a>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="66-choco-chips-400ml.html"><span class="catagory">Choco Chips
                                                        400ml</span></a>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="67-tutti-fruitti-400ml.html"><span class="catagory">Tutti Fruitti
                                                        400ml</span></a>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="68-pista-400ml.html"><span class="catagory">Pista
                                                        400ml</span></a>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="69-strawberry-400ml.html"><span class="catagory">Strawberry
                                                        400ml</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="level-2 parent">
                                        <a class="ttinnermenu" href="70-ice-cones.html"><span class="catagory">Ice Cones</span></a><span
                                            class="icon-drop-mobile"></span>
                                        <ul class="menu-dropdown cat-drop-menu">
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="71-choco-browie.html"><span class="catagory">Choco
                                                        Browie</span></a>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="72-dark-chocolate.html"><span class="catagory">Dark
                                                        Chocolate</span></a>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="73-cornetto-chokiss.html"><span class="catagory">Cornetto
                                                        Chokiss</span></a>
                                            </li>
                                            <li class="level-3 parent">
                                                <a class="ttinnermenu" href="74-cookies-creams.html"><span class="catagory">Cookies &
                                                        Creams</span></a><span class="icon-drop-mobile"></span>
                                                <ul class="menu-dropdown cat-drop-menu">
                                                    <li class="level-4">
                                                        <a class="ttinnermenu" href="83-cookies.html"><span class="catagory">Cookies</span></a>
                                                    </li>
                                                    <li class="level-4">
                                                        <a class="ttinnermenu" href="84-cookies-biscuit.html"><span class="catagory">Cookies
                                                                Biscuit</span></a>
                                                    </li>
                                                    <li class="level-4">
                                                        <a class="ttinnermenu" href="85-corn-cookies.html"><span class="catagory">Corn
                                                                Cookies</span></a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="level-3">
                                                <a class="ttinnermenu" href="75-avocado-corn.html"><span class="catagory">Avocado
                                                        Corn</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li class="level-1">
                                <a href="contact-us.html" class="ttinnermenu">
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
             <%
                if (session.getAttribute("acc") != null) {
                    Account acc1 = (Account) session.getAttribute("acc");
                    if (acc1.getRole() == "member") {%>
                        <div id="_desktop_cart">
                            <div class="blockcart cart-preview inactive"
                                 data-refresh-url="//prestashop1.templatetrip.com/PRS01/PRS001_summer/en/module/ps_shoppingcart/ajax">
                                <div class="header">
                                    <span class="shopping">
                                        <i class="material-icons shopping-cart">shopping_cart</i>
                                        <span class="hidden-sm-down">Cart</span>
                                        <span class="cart-productsount">0</span>
                                    </span>
                                </div>
                                <div class="cart_block block exclusive">
                                    <div class="block_content">
                                        <div class="cart_head"></div>
                                        <div class="cart_block_list">
                                            <p class="no-item">No products in the cart.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <%}
                }
                else{%>
                    <div id="_desktop_cart">
                            <div class="blockcart cart-preview inactive"
                                 data-refresh-url="//prestashop1.templatetrip.com/PRS01/PRS001_summer/en/module/ps_shoppingcart/ajax">
                                <div class="header">
                                    <span class="shopping">
                                        <i class="material-icons shopping-cart">shopping_cart</i>
                                        <span class="hidden-sm-down">Cart</span>
                                        <span class="cart-productsount">0</span>
                                    </span>
                                </div>
                                <div class="cart_block block exclusive">
                                    <div class="block_content">
                                        <div class="cart_head"></div>
                                        <div class="cart_block_list">
                                            <p class="no-item">No products in the cart.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                <%}
            %>
            
            
            
            
            
            <%
                if (session.getAttribute("acc") != null) {
                    Account admin = (Account) session.getAttribute("acc");
                    if (admin.getRole() != "member") {%>
                    <style>
                        #header .blockcart .header>span::after{
                            content: '' !important;
                        }
                    </style>
                   
                    <div id="_desktop_cart">
                        <a href="/admin">
                            <div class="blockcart cart-preview inactive"
                                 data-refresh-url="//prestashop1.templatetrip.com/PRS01/PRS001_summer/en/module/ps_shoppingcart/ajax">
                                <div class="header">
                                    <span class="">
                                        <span class="hidden-sm-down">Dashboard</span>
                                    </span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <%}
                }
            %>
            
            <div id="_desktop_user_info">
                <div class="ttuserheading">
                    <i class="material-icons user">&#xE7FF;</i>
                    <%
                        Account a = (Account) session.getAttribute("acc");
                    %>
                    <%=a != null ? "<span> " + a.getFullName() + "</span>" : "<span>My Account</span> "%>
                    <i class="material-icons expand-more">&#xE313;</i>
                    <i class="material-icons expand-less">&#xE316;</i>
                </div>
                <ul class="user-info">
                    <li>
                        <a href="<%=a != null ? "/login/out" : "/login"%>" title="Log in to your customer account" rel="nofollow">
                            <i class="material-icons user">&#xE7FF;</i>
                            <%= a != null ? "<span class=\"hidden-sm-down\">Sign Out</span>" : "<span class=\"hidden-sm-down\">Sign In</span>"%>
                        </a>
                    </li>
                    <li>
                        <a class="bt_compare" href="module/ttcompare/compare.html" title="Compare" rel="nofollow">
                            <span>Compare (<span class="total-compare-val">0</span>)</span>
                        </a>
                        <input type="hidden" name="compare_product_count" class="compare_product_count" value="0" />
                    </li>
                </ul>
            </div>
            <!-- Block search module TOP -->
            <div id="search_widget" class="search-widget"
                 data-search-controller-url="//prestashop1.templatetrip.com/PRS01/PRS001_summer/en/search">
                <span class="ttsearch_button">
                    <i class="material-icons search">&#xE8B6;</i>
                </span>
                <div class="ttsearchtoggle">
                    <form method="get" action="http://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/search">
                        <input type="hidden" name="controller" value="search" />
                        <input type="text" name="s" id="search_query_top" value="" placeholder="Search our catalog"
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