<%@page import="java.sql.ResultSet"%>
<%@page import="DAOs.ProductDAO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="/components/head.jsp" %>
    </head>

    <body
        id="category"
        class="lang-en country-us currency-usd layout-left-column page-category tax-display-disabled category-id-6 category-drinks category-id-parent-2 category-depth-level-2"
        itemscope
        itemtype="http://schema.org/WebPage"
        >
        <%@include file="/components/header.jsp" %>

        <%            ProductDAO pDAO = new ProductDAO();
            HttpSession session1 = request.getSession();
            int caterogy = (int) session1.getAttribute("type");
            String[] cate = {"Ice Cream", "Ice Juice", "Ice Pop", "Ice Drink"};
        %>
        <div class="ttloading-bg spinner"></div>

        <div class="newsletter-pop"></div>

        <main>
            <div id="page" class="">
                <nav data-depth="2" class="breadcrumb hidden-sm-down">
                    <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="/"><span itemprop="name">Home</span></a>
                            <meta itemprop="position" content="1" />
                        </li>

                        <li>
                            <span><%=cate[caterogy - 1]%></span>
                        </li>
                    </ol>
                </nav>

                <section id="wrapper">
                    <aside id="notifications">
                        <div class="container"></div>
                    </aside>

                    <div class="container">
                        <div id="left-column" class="col-xs-12 col-sm-4 col-md-3">
                            <div class="block-categories">
                                <div class="title clearfix hidden-md-up" data-target="#categories" data-toggle="collapse">
                                    <span class="h3 text-uppercase">Categories</span>
                                    <span class="float-xs-right">
                                        <span class="navbar-toggler collapse-icons">
                                            <i class="material-icons add">&#xE145;</i>
                                            <i class="material-icons remove">&#xE15B;</i>
                                        </span>
                                    </span>
                                </div>
                                <ul id="categories" class="category-top-menu collapse toggle">
                                    <a class="text-uppercase h6" href="#"><%=cate[caterogy - 1]%></a>
                                </ul>
                            </div>

                            <div class="ttleftbanner">
                                <a href="#" title="PrestaShop"
                                   ><img src="/modules/ttadvertising/img/advertising-s1.jpg" alt="PrestaShop" title="PrestaShop" width="300" height="500"
                                      /></a>
                            </div>
                        </div>

                        <div id="content-wrapper" class="left-column col-xs-12 col-sm-8 col-md-9">
                            <section id="main">
                                <div id="js-product-list-header">
                                    <div class="block-category card card-block">
                                        <div class="category-cover">
                                            <img src="/c/6-category_default/drinks.jpg" alt="Drinks" />
                                        </div>
                                        <h1 class="h1 title-category"><%=cate[caterogy - 1]%></h1>
                                        <div id="category-description" class="text-muted">
                                            <p>
                                                <span style="font-size: 10pt; font-style: normal"
                                                      >Items and accessories for your desk, kitchen or living room. Make your house a home with our eye-catching designs.
                                                </span>
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Subcategories -->
                                </div>

                                <section id="products">
                                    <div>
                                        <div id="js-product-list-top" class="products-selection">
                                            <div class="col-md-6 hidden-sm-down total-products">
                                                <!-- Grid-List Buttons -->
                                                <div class="grid-list col-md-2">
                                                    <span id="ttgrid" class="active"></span>
                                                    <span id="ttlist"></span>
                                                </div>

                                                <%
                                                    int numberProductByCategory = pDAO.getNumberProductByCategory(caterogy);
                                                    String url = "";
                                                    if (caterogy == 1) {
                                                        url = "iceCream";
                                                    } else if (caterogy == 2) {
                                                        url = "iceJuice";
                                                    } else if (caterogy == 3) {
                                                        url = "icePop";
                                                    } else if (caterogy == 4) {
                                                        url = "iceDrink";
                                                    }
                                                %>
                                                
                                                <p>There are <%=numberProductByCategory%> products.</p>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="row sort-by-row">
                                                    <span class="col-sm-3 col-md-3 hidden-sm-down sort-by">Sort by:</span>
                                                    <div class="col-sm-9 col-xs-8 col-md-9 products-sort-order dropdown">
                                                        <button class="btn-unstyle select-title" rel="nofollow" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            Relevance
                                                            <i class="material-icons float-xs-right">&#xE5C5;</i>
                                                        </button>
                                                        <div class="dropdown-menu">
                                                            <a rel="nofollow" href="/product/<%=url%>/sort/name" onclick="toURL('/product/<%=url%>/sort/name')" class="select-list js-search-link"> Name, A to Z </a>
                                                            <a rel="nofollow" href="/product/<%=url%>/sort/price" onclick="toURL('/product/<%=url%>/sort/price')" class="select-list js-search-link">
                                                                Price, low to high
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-3 col-xs-4 hidden-md-up filter-button">
                                                        <button id="search_filter_toggler" class="btn btn-secondary">Filter</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 hidden-md-up text-sm-center showing">Showing 1-12 of 19 item(s)</div>
                                        </div>
                                    </div>

                                    <div class="hidden-sm-down">
                                        <section id="js-active-search-filters" class="hide">
                                            <p class="h6 hidden-xs-up">Active filters</p>
                                        </section>
                                    </div>

                                    <div>
                                        <div id="js-product-list">
                                            <div class="products product-thumbs row">
                                                <%
                                                    String sort = (String) session.getAttribute("sort");
                                                    ResultSet rs = null;
                                                    if (sort != null) {
                                                        rs = pDAO.getProductByCategoryAndSort(caterogy, sort);
                                                    } else {
                                                        rs = pDAO.getProductByCategory(caterogy);
                                                    }
                                                    while (rs.next()) {
                                                %>
                                                <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                    <article class="product-miniature js-product-miniature col-sm-4" data-id-product="<%=rs.getInt("productID")%>" data-id-product-attribute="0">
                                                        <div class="thumbnail-container">
                                                            <div class="ttproduct-image">
                                                                <a href="/product/detail/<%=rs.getInt("productID")%>" class="thumbnail product-thumbnail" style="width: 100%">
                                                                    <img
                                                                        class="ttproduct-img1"
                                                                        src="/img/<%=rs.getString("image")%>"
                                                                        alt="Polycarbonate Hurricane"
                                                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/60-large_default/mug-the-adventure-begins.jpg"
                                                                        width="290"
                                                                        height="290"
                                                                        style="height: 300px"
                                                                        />
                                                                </a>

                                                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                <ul class="product-flags">
                                                                    <li class="online-only">Online only</li>
                                                                    <li class="on-sale">On sale!</li>
                                                                    <li class="discount">-<%=rs.getInt("discount")%></li>
                                                                    <li class="new">New</li>
                                                                </ul>

                                                                <div class="wishlist">
                                                                    <a
                                                                        class="addToWishlist btn btn-primary wishlistProd_7"
                                                                        href="#"
                                                                        data-dismiss="modal"
                                                                        data-rel="7"
                                                                        title="Add to wishlist"
                                                                        onclick="<%= account != null ? "addProductToWishList("+ rs.getInt("productID") +")": "notifyFail()" %>"
                                                                        >
                                                                        <i class="material-icons wishlist-icon">favorite_border</i>
                                                                        <span class="wishlist-name">Add to Wishlist</span>
                                                                        <span class="loading"><i class="material-icons">cached</i></span>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                            <div class="ttproduct-desc">
                                                                <div class="product-description">
                                                                    <h5 class="cat-name">home</h5>
                                                                    <div class="ttproducthover">



                                                                        <div class="tt-button-container">
                                                                            <div class="product-add-to-cart">
                                                                                <form
                                                                                    method="post" class="add-to-cart-or-refresh" > <div class="product-quantity" style="display: none">
                                                                                        <input type="number" name="productId" value="<%=rs.getInt("productID")%>" class="product_page_product_id" />
                                                                                        <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                                                        <input type="hidden" name="addCart" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                        <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                                                                        <input type="hidden" name="quantity" id="quantity_wanted" value="1" class="input-group" min="1" aria-label="Quantity"/>
                                                                                    </div>
                                                                                    <button
                                                                                        class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                        data-button-action="add-to-cart"
                                                                                        title="Add to cart"
                                                                                        type="button" onclick="<%= account != null ? "addToCart("+rs.getInt("productID")+")" : "notifyFail()"%>">
                                                                                        <i class="material-icons add_to_cart_icon" style="display: block;">shopping_cart</i>
                                                                                        <span>Add to cart</span>
                                                                                    </button>
                                                                                </form>
                                                                            </div>
                                                                        </div>

                                                                    </div>

                                                                    <div class="hook-reviews">
                                                                        <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
                                                                            <div class="star_content clearfix">
                                                                                <div class="star"></div>
                                                                                <div class="star"></div>
                                                                                <div class="star"></div>
                                                                                <div class="star"></div>
                                                                                <div class="star"></div>
                                                                                <meta itemprop="ratingValue" content="0" />
                                                                            </div>

                                                                            <meta itemprop="itemReviewed" content="Polycarbonate Hurricane" />
                                                                            <span class="reviewCount" itemprop="reviewCount">0</span>
                                                                        </div>
                                                                    </div>

                                                                    <span class="h3 product-title" itemprop="name"
                                                                          ><a href="#"><%=rs.getString("productName")%></a></span
                                                                    >

                                                                    <div class="product-desc-short" itemprop="description">
                                                                        <%=rs.getString("description")%>
                                                                    </div>

                                                                    <div class="product-price-and-shipping">
                                                                        <span itemprop="price" class="price">
                                                                            <%= (100 - rs.getInt("discount")) * rs.getInt("price") / 100 + "<sup>d</sup>"%>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-amount discount-product">
                                                                                <%= rs.getInt("discount") == 0 ? "" : "-" + rs.getInt("discount") + "%"%>
                                                                            </span>
                                                                            <span class="regular-price"><%= rs.getInt("discount") == 0 ? "" : rs.getInt("price") + "<sup>d</sup>"%>
                                                                            </span>

                                                                            <span class="sr-only">Price</span>
                                                                    </div>

                                                                    <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <%
                                                    }
                                                %>

                                            </div>



                                            <div class="hidden-md-up text-xsright up">
                                                <a href="#header" class="btn btn-secondary">
                                                    Back to top
                                                    <i class="material-icons">&#xE316;</i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="js-product-list-bottom">
                                        <div id="js-product-list-bottom"></div>
                                    </div>
                                </section>
                            </section>
                        </div>
                    </div>
                </section>
                <%@ include file="/components/footer.jsp" %>
            </div>
        </main>

        <script src="/js/bottom-26d3e758.js"></script>
    </body>
</html>
