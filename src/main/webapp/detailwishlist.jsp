<%-- 
    Document   : detailwishlist
    Created on : Nov 6, 2023, 10:45:43 PM
    Author     : La Hoang Khoi - CE171855
--%>

<%@page import="DAOs.WishlistDAO"%>
<!doctype html>
<html lang="en">

    <head>
        <%@include file="/components/head.jsp" %>
    </head>

    <body id="module-ttproductwishlist-mywishlist"
          class="lang-en country-us currency-usd layout-full-width page-mywishlist tax-display-disabled" itemscope
          itemtype="http://schema.org/WebPage">
        <%@include file="/components/header.jsp" %>
        <div class="ttloading-bg spinner"></div>

        <div class="newsletter-pop">

        </div>

        <main>
            <div id="page" class="">
                <nav data-depth="3" class="breadcrumb hidden-sm-down">
                    <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/"><span
                                    itemprop="name">Home</span></a>
                            <meta itemprop="position" content="1">
                        </li>
                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item"
                               href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/my-account"><span
                                    itemprop="name">Your Account</span></a>
                            <meta itemprop="position" content="2">
                        </li>
                        <li>
                            <span>Your Wishlist</span>
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


                            <div id="mywishlist">
                                <h1 class="h1 tt-innerpagetitle">My Wishlists</h1>



                                <%                                    WishlistDAO wl = new WishlistDAO();
                                    Account acc = (Account) session.getAttribute("acc");

                                %>
                                <div id="block-order-detail" style="">

                                    <div id="products" class="wlp_bought">
                                        <div class="products">
                                            <div class="row">
                                                <%                                                    int id = (int) session.getAttribute("detailwishlist");
                                                    ResultSet rs = wl.getWistListDetailByEmail(acc.getEmail(), id);
                                                    while (rs.next()) {
                                                %>
                                                <article id="wlp_19_0" class="product-miniature js-product-miniature col-xs-12 col-sm-6 col-md-4 col-xl-3" data-id-product="19" data-id-product-attribute="0" itemscope="" itemtype="http://schema.org/Product">
                                                    <div class="product-container">
                                                        <div class="thumbnail-container">
                                                            <div class="thumbnail-inner">

                                                                <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/home/19-customizable-mug.html" class="thumbnail product-thumbnail">
                                                                    <img src="/img/<%=rs.getString("image")%>" alt="Cucumber Lemonade Mocktail">
                                                                </a>

                                                            </div>
                                                            <a class="lnkdel" href="javascript:;" onclick="WishlistProductManage('wlp_bought', 'delete', '12', '19', '0', $('#quantity_19_0').val(), $('#priority_19_0').val());" title="Delete">
                                                                <i class="fa fa-times-circle"></i>
                                                            </a>
                                                        </div>



                                                        <div class="product-description">

                                                            <h1 class="h3 product-title" itemprop="name">
                                                                <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/home/19-customizable-mug.html">
                                                                    <%=rs.getString("productName")%>
                                                                </a>
                                                            </h1>

                                                            <div class="product-price-and-shipping">
                                                                <span itemprop="price" class="price"> <%=rs.getString("price")%></span>

                                                            </div>


                                                            <p class="form-group">
                                                                <label for="quantity_19_0">
                                                                    Quantity
                                                                </label>
                                                                <input class="form-control" type="text" id="quantity_19_0" value=" <%=rs.getInt("quantity")%>" size="3">
                                                            </p>





                                                            <div class="btn_action">
                                                                <a class="btn btn-primary" href="javascript:;" onclick="WishlistProductManage('wlp_bought_0', 'update', '12', '19', '0', $('#quantity_19_0').val(), $('#priority_19_0').val());" title="Save">
                                                                    <span>Save</span>
                                                                </a>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </article>
                                                <%
                                                    }
                                                %>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="page-footer clearfix">

                                    <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/my-account"
                                       class="account-link">
                                        <i class="material-icons">&#xE408;</i>
                                        <span>Back to your account</span>
                                    </a>
                                    <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/"
                                       class="account-link">
                                        <i class="material-icons">&#xE88A;</i>
                                        <span>Home</span>
                                    </a>

                                </div>
                            </div>


                        </div>



                    </div>

                </section>

                <%@include file="/components/footer.jsp" %>
            </div>
        </main>


        <script src="/js/bottom-8d0d2558.js"></script>

    </body>

</html>