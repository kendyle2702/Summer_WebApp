<%@page import="DAOs.ProductDAO" %>
<%@page import="java.sql.ResultSet" %>
 <%! ProductDAO pDAO = new ProductDAO();%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="/components/head.jsp" %>
    </head>

    <body id="index" class="lang-en country-us currency-usd layout-full-width page-index tax-display-disabled" itemscope
          itemtype="http://schema.org/WebPage">
        <div class="ttloading-bg spinner"></div>

        <%@include file="/components/header.jsp" %>

        <div class="newsletter-pop">
            <div id="ttPopupnewsletter" class="modal fade" tabindex="-1" role="dialog">
                <div class="ttPopupnewsletter-i" role="document" style="">
                    <div class="ttpopupnewsletter" style="height: 490px; width: 600px">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="material-icons">&#xE14C;</i>
                            <span>close</span>
                        </button>

                        <div id="newsletter_block_popup" class="block">
                            <div class="block_content">
                                <div class="ttnewslatterpopup-img col-sm-6">
                                    <img src="../modules/ttpopupnewsletter/views/img/newsletter.jpg" class="img" alt="bg-img"
                                         width="290" height="470" />
                                </div>
                                <div class="ttnewslatterpopup-content col-sm-6">
                                    <form method="post">
                                        <div class="newsletter_title">
                                            <h3 class="h3">Newsletter</h3>
                                        </div>

                                        <div class="ttContent">
                                            Subscribe to the Complex mailing list to receive updates on new arrivals, special offers and
                                            other
                                            discount information.
                                        </div>
                                        <div class="ttAlert"></div>

                                        <input class="inputNew" id="ttnewsletter-input" type="text" name="email"
                                               placeholder="Enter your mail..." />

                                        <div class="send-reqest button_unique btn-primary">Subscribe</div>
                                    </form>

                                    <div class="newsletter_block_popup-bottom">
                                        <div class="subscribe-bottom">
                                            <input id="tt_newsletter_dont_show_again" type="checkbox" />
                                        </div>

                                        <label class="tt_newsletter_dont_show_again" for="tt_newsletter_dont_show_again">Do not show
                                            this
                                            popup again</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <script type="text/javascript">
                var placeholder2 = "Enter your mail...";

                var elem = document.createElement("script");
                elem.onload = function () {
                    $(document).ready(function () {
                        $("#ttnewsletter-input").on({
                            focus: function () {
                                if ($(this).val() == placeholder2) {
                                    $(this).val("");
                                }
                            },
                            blur: function () {
                                if ($(this).val() == "") {
                                    $(this).val(placeholder2);
                                }
                            },
                        });
                    });
                };
            </script>

            <script type="text/javascript">
                var field_width = 600;
                var field_height = 490;
                var field_newsletter = 1;
                var field_path = "https://prestashop1.templatetrip.com/PRS01/PRS001_summer/modules/ttpopupnewsletter/ajax.php";
            </script>
        </div>

        <main>
            <div id="page" class="">
                <div id="top_column" class="">
                    <div id="carousel" data-ride="carousel" class="carousel slide homeslider" data-interval="5000"
                         data-wrap="true" data-pause="hover">
                        <div class="ttloading-bg"></div>
                        <ul class="carousel-inner" role="listbox">
                            <li class="carousel-item active" role="option" aria-hidden="false">
                                <a href="index.html">
                                    <figure>
                                        <img
                                            src="../modules/ps_imageslider/images/ee137d975ece14977f9e49140199c16439b48eea_slider-01.jpg"
                                            alt="sample-1" width="1903" height="1000" />
                                        <figcaption class="caption">
                                            <div class="caption-description">
                                                <h5>Summer Shop</h5>
                                                <h3>Healthy Summer Juice Everyday</h3>
                                                <p class="offer">Get Save 35% OFF All Juice</p>
                                                <p>
                                                    <button class="shop_now animation-btn">Shop Now</button>
                                                </p>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </a>
                            </li>
                            <li class="carousel-item" role="option" aria-hidden="true">
                                <a href="index.html">
                                    <figure>
                                        <img
                                            src="../modules/ps_imageslider/images/9252f4a4f320db92addbc4e5547c60e07ada7540_slider-02.jpg"
                                            alt="sample-2" width="1903" height="1000" />
                                        <figcaption class="caption">
                                            <div class="caption-description">
                                                <h5>Yammy &amp; Tasty Shop</h5>
                                                <h3>Ice Cream Made With Passion</h3>
                                                <p class="offer">Exclusive Summer Shop, Big Deals</p>
                                                <p>
                                                    <button class="shop_now animation-btn">Shop Now</button>
                                                </p>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </a>
                            </li>
                        </ul>
                        <div class="direction">
                            <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
                                <span class="icon-prev hidden-xs" aria-hidden="true">
                                    <i class="material-icons">&#xE5C4;</i>
                                </span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
                                <span class="icon-next" aria-hidden="true">
                                    <i class="material-icons">&#xE5C8;</i>
                                </span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <div id="tt_category_feature" class="tt_category_feature">
                        <div class="tt-titletab">
                            <h3 class="tt-title text-uppercase">Top categories</h3>
                        </div>

                        <div class="list_carousel responsive container">
                            <div id="tt_cat_featured" class="product-list">
                                <div class="item">
                                    <div class="content">
                                        <div class="cat-img">
                                            <a href="10-ice-cream.html" title="Ice Cream">
                                                <img src="../img/c/10_thumb.jpg" alt="" width="270" height="351" />
                                            </a>
                                        </div>

                                        <div class="ttcat-content">
                                            <div class="cat-infor">
                                                <h4 class="title">
                                                    <a href="10-ice-cream.html"> Ice Cream </a>
                                                </h4>
                                            </div>
                                            <div class="sub-cat">
                                               
                                                <ul>
                                                    <%														ResultSet rsCream = pDAO.getProductByCategory(3);
                                                        while (rsCream.next()) {
                                                            String productName = rsCream.getString("ProductName");
                                                    %>
                                                    <li>
                                                        <a href="<%= rsCream.getInt("productID")%>" title="<%= productName%>"><%=productName%></a>
                                                    </li>
                                                    <% } %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="content">
                                        <div class="cat-img">
                                            <a href="11-ice-drink.html" title="Ice Drink">
                                                <img src="../img/c/11_thumb.jpg" alt="" width="270" height="351" />
                                            </a>
                                        </div>

                                        <div class="ttcat-content">
                                            <div class="cat-infor">
                                                <h4 class="title">
                                                    <a href="11-ice-drink.html"> Ice Drink </a>
                                                </h4>
                                            </div>
                                            <div class="sub-cat">
                                                <ul>
                                                    <% ResultSet rsDrink = pDAO.getProductByCategory(4);
                                                                                                                                                                                                                    while (rsDrink.next()) {
                                                                                                                                                                                                                        String productName = rsDrink.getString("ProductName");%>
                                                    <li>
                                                        <a href="<%= rsDrink.getInt("productID")%>" title="<%= productName%>"><%=productName%></a>
                                                    </li>
                                                    <%}%>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="content">
                                        <div class="cat-img">
                                            <a href="12-ice-juice.html" title="Ice Juice">
                                                <img src="../img/c/12_thumb.jpg" alt="" width="270" height="351" />
                                            </a>
                                        </div>

                                        <div class="ttcat-content">
                                            <div class="cat-infor">
                                                <h4 class="title">
                                                    <a href="12-ice-juice.html"> Ice Juice </a>
                                                </h4>
                                            </div>
                                            <div class="sub-cat">
                                                <ul>
                                                    <%
                                                        ResultSet rsJuice = pDAO.getProductByCategory(2);
                                                        while (rsJuice.next()) {
                                                                                                                                                                                                                        String productName = rsJuice.getString("ProductName");%>
                                                    <li>
                                                        <a href="<%= rsJuice.getInt("productID")%>" title="<%= productName%>"><%=productName%></a>
                                                    </li>
                                                    <%}%>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="content">
                                        <div class="cat-img">
                                            <a href="13-ice-pop.html" title="Ice Pop">
                                                <img src="../img/c/13_thumb.jpg" alt="" width="270" height="351" />
                                            </a>
                                        </div>

                                        <div class="ttcat-content">
                                            <div class="cat-infor">
                                                <h4 class="title">
                                                    <a href="13-ice-pop.html"> Ice Pop </a>
                                                </h4>
                                            </div>
                                            <div class="sub-cat">
                                                <ul>
                                                    <%
                                                        ResultSet rsPop = pDAO.getProductByCategory(1);
                                                        while (rsPop.next()) {
                                                                                                                                                                                                                        String productName = rsPop.getString("ProductName");%>
                                                    <li>
                                                        <a href="<%= rsPop.getInt("productID")%>" title="<%= productName%>"><%= productName%>
                                                        </a>
                                                    </li>
                                                    <%}%>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="customNavigation">
                                <a class="btn prev ttcategoryfeature_prev"><i class="material-icons">&#xe408;</i>Prev</a>
                                <a class="btn next ttcategoryfeature_next"><i class="material-icons">&#xe409;</i>Next</a>
                            </div>
                        </div>
                    </div>

                    <script>
                        $(document).ready(function () {
                            var max_link = 5;
                            var more_info = "View All";
                            $(".tt_category_feature .content .ttcat-content .sub-cat > ul").each(function () {
                                var subcat = $(this).find("li");
                                var mainul = $(this).parent().closest(".ttcat-content").find(".cat-infor > .title > a");
                                var ahref = mainul.attr("href");
                                if (subcat.length > max_link) {
                                    $(this).append(
                                            '<li class="cat-more"><div class="cat-more-menu"><span class="categories"><a href="' +
                                            ahref +
                                            '">' +
                                            more_info +
                                            "</a></span></div></li>"
                                            );
                                }
                                subcat.each(function (j) {
                                    if (j >= max_link) {
                                        $(this).css("display", "none");
                                        $(this).addClass("disable");
                                    }
                                });
                            });
                        });
                    </script>
                    <div id="ttcmsaboutus">
                        <div class="ttcmsaboutus container">
                            <div class="row">
                                <div class="ttcmsaboutus ttaboutusbanner col-sm-6 col-md-7 col-xs-12">
                                    <div class="ttcmsaboutus-bg">
                                        <div class="image1 ttimg">
                                            <div class="ttbanner-img">
                                                <a href="#"> <img src="../img/cms/about-us.png" alt="cms-img-01.jpg" width="675"
                                                                  height="620" /></a>
                                            </div>
                                        </div>
                                        <div class="image2 ttimg">
                                            <div class="ttbanner-img">
                                                <a href="#"> <img src="../img/cms/tag.png" alt="cms-img-02.jpg" width="190"
                                                                  height="145" /></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ttcmsaboutus ttaboutusdesc col-sm-6 col-md-5 col-xs-12">
                                    <div class="ttcmsaboutusblock">
                                        <div class="ttcmsaboutus-content">
                                            <div class="ttcmsaboutus-head">Fresh Juice Shop</div>
                                            <div class="ttcmsaboutus-title">Summer Juice</div>
                                            <div class="ttcmsaboutus-desc">
                                                Lorem ipsum dolor sit amet, consectetur adialiquip commodincididunt ut labore etsectetur
                                                adialiquipsectetur adialiquip
                                            </div>
                                            <div class="ttcmsaboutus-btn">
                                                <a href="#" class="animation-btn">shop now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <nav data-depth="1" class="breadcrumb hidden-sm-down">
                    <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                        <li>
                            <span>Home</span>
                        </li>
                    </ol>
                </nav>

                <section id="wrapper">
                    <aside id="notifications">
                        <div class="container"></div>
                    </aside>

                    <div class="full-container">
                        <div id="content-wrapper">
                            <section id="main">
                                <div class="homebg bottom-to-top hb-animate-element">
                                    <div class="tthometab-title">Trending Products</div>

                                    <div id="hometab" class="home-tab container">
                                        <section class="ttnew-products clearfix col-sm-4">
                                            <h3 class="tab-title">New products</h3>
																						
                                            <div class="ttnew-content products">
										<%
											ResultSet rsNewProduct = pDAO.getNearSevenDay();
											while(rsNewProduct.next()){
										%>
										   <div
                          itemprop="itemListElement"
                          itemscope
                          itemtype="http://schema.org/ListItem"
                        >
                          <article
                            class="product-miniature js-product-miniature col-sm-4"
                            data-id-product="16"
                            data-id-product-attribute="28"
                          >
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a
																		href="#"
                                  class="thumbnail product-thumbnail"
                                >
                                  <img
                                    class="ttproduct-img1"
                                    src="/img/<%= rsNewProduct.getString("image")%>"
                                    alt="Vodka Cranberry drink"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/114-large_default/mountain-fox-notebook.jpg"
                                    width="290"
                                    height="290"
                                  />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a
                                    class="addToWishlist btn btn-primary wishlistProd_16"
                                    href="#"
                                    data-dismiss="modal"
                                    data-rel="16"
                                    title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '16', '28', 1); return false;"
                                  >
                                    <i class="material-icons wishlist-icon"
                                      >favorite_border</i
                                    >
                                    <span class="wishlist-name"
                                      >Add to Wishlist</span
                                    >
                                    <span class="loading"
                                      ><i class="material-icons"
                                        >cached</i
                                      ></span
                                    >
                                  </a>
                                </div>
                              </div>

                              <div class="ttproduct-desc">
                                <div class="product-description">
                                  <h5 class="cat-name">home</h5>
                                  <div class="ttproducthover">
                                    <div class="quick-view-block">
                                      <a
                                        href="#"
                                        class="quick-view btn btn-primary"
                                        data-link-action="quickview"
                                        title="Quick view"
                                      >
                                        <i
                                          class="material-icons quick_view_icon"
                                          >visibility</i
                                        >
                                        <span>Quick view</span>
                                        <span class="loading"
                                          ><i class="material-icons"
                                            >cached</i
                                          ></span
                                        >
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div
                                            class="product-quantity"
                                            style="display: none"
                                          >
                                            <input
                                              type="number"
                                              name="id_product"
                                              value="16"
                                              class="product_page_product_id"
                                            />
                                            <input
                                              type="number"
                                              name="id_customization"
                                              value="0"
                                              class="product_customization_id"
                                            />
                                            <input
                                              type="hidden"
                                              name="token"
                                              value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token"
                                            />
                                            <input
                                              type="number"
                                              name="qty"
                                              class="quantity_wanted input-group"
                                              value="1"
                                              min="1"
                                            />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i
                                              class="material-icons add_to_cart_icon"
                                              >shopping_cart</i
                                            >
                                            <span class="loading"
                                              ><i class="material-icons"
                                                >cached</i
                                              ></span
                                            >
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a
                                        class="add_to_compare btn btn-primary"
                                        href="#"
                                        data-id-product="16"
                                        data-dismiss="modal"
                                        title="Add to Compare"
                                      >
                                        <i class="material-icons compare_icon"
                                          >equalizer</i
                                        >
                                        <span>Add to Compare</span>
                                        <span class="loading"
                                          ><i class="material-icons"
                                            >cached</i
                                          ></span
                                        >
                                      </a>
                                    </div>
                                  </div>

                                  <div class="hook-reviews">
                                    <div
                                      class="comments_note"
                                      itemprop="aggregateRating"
                                      itemscope
                                      itemtype="https://schema.org/AggregateRating"
                                    >
                                      <div class="star_content clearfix">
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <meta
                                          itemprop="ratingValue"
                                          content="5"
                                        />
                                      </div>

                                      <meta
                                        itemprop="itemReviewed"
                                        content="Vodka Cranberry drink"
                                      />
                                      <span
                                        class="reviewCount"
                                        itemprop="reviewCount"
                                        >1</span
                                      >
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"
                                    ><a
                                      href="home/16-mountain-fox-notebook.html"
                                      >Vodka Cranberry drink</a
                                    ></span
                                  >

                                  <div
                                    class="product-desc-short"
                                    itemprop="description"
                                  >
                                    Lorem Ipsum is simply dummied text of the
                                    printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price"
                                      >$12.90</span
                                    >

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div
                                    class="highlighted-informations no-variants hidden-sm-down"
                                  ></div>
                                </div>
                              </div>
                            </div>
                          </article>
                        </div>
										<%
											}
										%>
                                            
                            
                                            </div>
																						
                                            <div class="customNavigation">
                                                <a class="btn prev ttnew_prev"><i class="material-icons">&#xe408;</i>Prev</a>
                                                <a class="btn next ttnew_next"><i class="material-icons">&#xe409;</i>Next</a>
                                            </div>
                                            <div class="allproduct">
                                                <a href="new-products.html">All new products</a>
                                            </div>
                                        </section>
                                        <section class="ttfeatured-products clearfix">
                                            <h3 class="tab-title">Featured</h3>
																						
                                            <div class="ttfeatured-content products">
										<div
                          itemprop="itemListElement"
                          itemscope
                          itemtype="http://schema.org/ListItem"
                        >
                          <article
                            class="product-miniature js-product-miniature col-sm-4"
                            data-id-product="16"
                            data-id-product-attribute="28"
                          >
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a
                                  href="home/16-mountain-fox-notebook.html"
                                  class="thumbnail product-thumbnail"
                                >
                                  <img
                                    class="ttproduct-img1"
                                    src="../114-home_default/mountain-fox-notebook.jpg"
                                    alt="Vodka Cranberry drink"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/114-large_default/mountain-fox-notebook.jpg"
                                    width="290"
                                    height="290"
                                  />
                                  <img
                                    class="fade second_image img-responsive"
                                    src="../115-home_default/mountain-fox-notebook.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/115-large_default/mountain-fox-notebook.jpg"
                                    alt=""
                                    width="300"
                                    height="390"
                                  />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a
                                    class="addToWishlist btn btn-primary wishlistProd_16"
                                    href="#"
                                    data-dismiss="modal"
                                    data-rel="16"
                                    title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '16', '28', 1); return false;"
                                  >
                                    <i class="material-icons wishlist-icon"
                                      >favorite_border</i
                                    >
                                    <span class="wishlist-name"
                                      >Add to Wishlist</span
                                    >
                                    <span class="loading"
                                      ><i class="material-icons"
                                        >cached</i
                                      ></span
                                    >
                                  </a>
                                </div>
                              </div>

                              <div class="ttproduct-desc">
                                <div class="product-description">
                                  <h5 class="cat-name">home</h5>
                                  <div class="ttproducthover">
                                    <div class="quick-view-block">
                                      <a
                                        href="#"
                                        class="quick-view btn btn-primary"
                                        data-link-action="quickview"
                                        title="Quick view"
                                      >
                                        <i
                                          class="material-icons quick_view_icon"
                                          >visibility</i
                                        >
                                        <span>Quick view</span>
                                        <span class="loading"
                                          ><i class="material-icons"
                                            >cached</i
                                          ></span
                                        >
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div
                                            class="product-quantity"
                                            style="display: none"
                                          >
                                            <input
                                              type="number"
                                              name="id_product"
                                              value="16"
                                              class="product_page_product_id"
                                            />
                                            <input
                                              type="number"
                                              name="id_customization"
                                              value="0"
                                              class="product_customization_id"
                                            />
                                            <input
                                              type="hidden"
                                              name="token"
                                              value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token"
                                            />
                                            <input
                                              type="number"
                                              name="qty"
                                              class="quantity_wanted input-group"
                                              value="1"
                                              min="1"
                                            />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i
                                              class="material-icons add_to_cart_icon"
                                              >shopping_cart</i
                                            >
                                            <span class="loading"
                                              ><i class="material-icons"
                                                >cached</i
                                              ></span
                                            >
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a
                                        class="add_to_compare btn btn-primary"
                                        href="#"
                                        data-id-product="16"
                                        data-dismiss="modal"
                                        title="Add to Compare"
                                      >
                                        <i class="material-icons compare_icon"
                                          >equalizer</i
                                        >
                                        <span>Add to Compare</span>
                                        <span class="loading"
                                          ><i class="material-icons"
                                            >cached</i
                                          ></span
                                        >
                                      </a>
                                    </div>
                                  </div>

                                  <div class="hook-reviews">
                                    <div
                                      class="comments_note"
                                      itemprop="aggregateRating"
                                      itemscope
                                      itemtype="https://schema.org/AggregateRating"
                                    >
                                      <div class="star_content clearfix">
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <meta
                                          itemprop="ratingValue"
                                          content="5"
                                        />
                                      </div>

                                      <meta
                                        itemprop="itemReviewed"
                                        content="Vodka Cranberry drink"
                                      />
                                      <span
                                        class="reviewCount"
                                        itemprop="reviewCount"
                                        >1</span
                                      >
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"
                                    ><a
                                      href="home/16-mountain-fox-notebook.html"
                                      >Vodka Cranberry drink</a
                                    ></span
                                  >

                                  <div
                                    class="product-desc-short"
                                    itemprop="description"
                                  >
                                    Lorem Ipsum is simply dummied text of the
                                    printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price"
                                      >$12.90</span
                                    >

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div
                                    class="highlighted-informations no-variants hidden-sm-down"
                                  ></div>
                                </div>
                              </div>
                            </div>
                          </article>
                        </div>
                                            </div>
																						
                                            <div class="customNavigation">
                                                <a class="btn prev ttfeature_prev"><i class="material-icons">&#xe408;</i>Prev</a>
                                                <a class="btn next ttfeature_next"><i class="material-icons">&#xe409;</i>Next</a>
                                            </div>
                                            <div class="allproduct">
                                                <a href="2-home.html">All products</a>
                                            </div>
                                        </section>

                                        <section class="ttbestseller-products clearfix col-sm-4">
                                            <h3 class="tab-title">Best Sellers</h3>

								<div class="ttbestseller-content products">
																						
                        <div
                          itemprop="itemListElement"
                          itemscope
                          itemtype="http://schema.org/ListItem"
                        >
                          <article
                            class="product-miniature js-product-miniature col-sm-4"
                            data-id-product="16"
                            data-id-product-attribute="28"
                          >
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a
                                  href="home/16-mountain-fox-notebook.html"
                                  class="thumbnail product-thumbnail"
                                >
                                  <img
                                    class="ttproduct-img1"
                                    src="../114-home_default/mountain-fox-notebook.jpg"
                                    alt="Vodka Cranberry drink"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/114-large_default/mountain-fox-notebook.jpg"
                                    width="290"
                                    height="290"
                                  />
                                  <img
                                    class="fade second_image img-responsive"
                                    src="../115-home_default/mountain-fox-notebook.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/115-large_default/mountain-fox-notebook.jpg"
                                    alt=""
                                    width="300"
                                    height="390"
                                  />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a
                                    class="addToWishlist btn btn-primary wishlistProd_16"
                                    href="#"
                                    data-dismiss="modal"
                                    data-rel="16"
                                    title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '16', '28', 1); return false;"
                                  >
                                    <i class="material-icons wishlist-icon"
                                      >favorite_border</i
                                    >
                                    <span class="wishlist-name"
                                      >Add to Wishlist</span
                                    >
                                    <span class="loading"
                                      ><i class="material-icons"
                                        >cached</i
                                      ></span
                                    >
                                  </a>
                                </div>
                              </div>

                              <div class="ttproduct-desc">
                                <div class="product-description">
                                  <h5 class="cat-name">home</h5>
                                  <div class="ttproducthover">
                                    <div class="quick-view-block">
                                      <a
                                        href="#"
                                        class="quick-view btn btn-primary"
                                        data-link-action="quickview"
                                        title="Quick view"
                                      >
                                        <i
                                          class="material-icons quick_view_icon"
                                          >visibility</i
                                        >
                                        <span>Quick view</span>
                                        <span class="loading"
                                          ><i class="material-icons"
                                            >cached</i
                                          ></span
                                        >
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div
                                            class="product-quantity"
                                            style="display: none"
                                          >
                                            <input
                                              type="number"
                                              name="id_product"
                                              value="16"
                                              class="product_page_product_id"
                                            />
                                            <input
                                              type="number"
                                              name="id_customization"
                                              value="0"
                                              class="product_customization_id"
                                            />
                                            <input
                                              type="hidden"
                                              name="token"
                                              value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token"
                                            />
                                            <input
                                              type="number"
                                              name="qty"
                                              class="quantity_wanted input-group"
                                              value="1"
                                              min="1"
                                            />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i
                                              class="material-icons add_to_cart_icon"
                                              >shopping_cart</i
                                            >
                                            <span class="loading"
                                              ><i class="material-icons"
                                                >cached</i
                                              ></span
                                            >
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a
                                        class="add_to_compare btn btn-primary"
                                        href="#"
                                        data-id-product="16"
                                        data-dismiss="modal"
                                        title="Add to Compare"
                                      >
                                        <i class="material-icons compare_icon"
                                          >equalizer</i
                                        >
                                        <span>Add to Compare</span>
                                        <span class="loading"
                                          ><i class="material-icons"
                                            >cached</i
                                          ></span
                                        >
                                      </a>
                                    </div>
                                  </div>

                                  <div class="hook-reviews">
                                    <div
                                      class="comments_note"
                                      itemprop="aggregateRating"
                                      itemscope
                                      itemtype="https://schema.org/AggregateRating"
                                    >
                                      <div class="star_content clearfix">
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <div class="star star_on"></div>
                                        <meta
                                          itemprop="ratingValue"
                                          content="5"
                                        />
                                      </div>

                                      <meta
                                        itemprop="itemReviewed"
                                        content="Vodka Cranberry drink"
                                      />
                                      <span
                                        class="reviewCount"
                                        itemprop="reviewCount"
                                        >1</span
                                      >
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"
                                    ><a
                                      href="home/16-mountain-fox-notebook.html"
                                      >Vodka Cranberry drink</a
                                    ></span
                                  >

                                  <div
                                    class="product-desc-short"
                                    itemprop="description"
                                  >
                                    Lorem Ipsum is simply dummied text of the
                                    printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price"
                                      >$12.90</span
                                    >

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div
                                    class="highlighted-informations no-variants hidden-sm-down"
                                  ></div>
                                </div>
                              </div>
                            </div>
                          </article>
                        </div>

                      
                      </div>

                                            <div class="customNavigation">
                                                <a class="btn prev ttbestseller_prev"><i class="material-icons">&#xe408;</i>Prev</a>
                                                <a class="btn next ttbestseller_next"><i class="material-icons">&#xe409;</i>Next</a>
                                            </div>
                                            <!-- Left and right controls -->
                                            <div class="allproduct">
                                                <a href="best-sales.html">All best sellers</a>
                                            </div>
                                        </section>
                                    </div>

                                    <div class="animation-img animation-img1"></div>
                                    <div class="animation-img animation-img2"></div>
                                    <div class="animation-img animation-img3"></div>
                                    <div class="animation-img animation-img4"></div>
                                </div>
                                <section id="content" class="page-home">
                                    <div id="ttcmsbanner">
                                        <div class="ttbanners container">
                                            <div class="ttbannerblock row">
                                                <div class="ttbanner1 ttbanner col-sm-6 col-xs-12">
                                                    <div class="ttbanner-img">
                                                        <a href="#"><img src="../img/cms/banner-01.jpg" alt="banner-01.jpg" width="600"
                                                                         height="290" /></a>
                                                    </div>
                                                    <div class="ttbanner-text">
                                                        <h3>Fresh Made Fruit Juice</h3>
                                                        <button class="animation-btn">Get Flat 30% OFF</button>
                                                    </div>
                                                </div>
                                                <div class="ttbanner2 ttbanner col-sm-6 col-xs-12">
                                                    <div class="ttbanner-img">
                                                        <a href="#"><img src="../img/cms/banner-02.jpg" alt="banner-02.jpg" width="600"
                                                                         height="290" /></a>
                                                    </div>
                                                    <div class="ttbanner-text">
                                                        <h3>Summer Season Sale</h3>
                                                        <button class="animation-btn">Shop Now</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="ttcmstestimonial" class="bottom-to-top hb-animate-element">
                                        <div class="ttcmsclient container bottom-to-top hb-animate-element">
                                            <div class="row">
                                                <div class="Client-block col-sm-12">
                                                    <ul id="ttclient-carousel" class="ttclient-carousel">
                                                        <li class="client-user1 tt-client">
                                                            <div class="client-img col-sm-4">
                                                                <div class="user-details">
                                                                    <div class="image">
                                                                        <a href="#"><img src="../img/cms/user1.jpg" alt="user1" width="120"
                                                                                         height="120" /></a>
                                                                    </div>
                                                                    <div class="client-user">
                                                                        <div class="client-usertitle">Johny deep</div>
                                                                        <div class="client-subtitle">CEO &amp; Founder</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="client-content col-sm-8">
                                                                <div class="client-desc">
                                                                    The majority have suffered alteration in some form, by injected believable. There
                                                                    variation words able s, but also
                                                                    the leap into electronic typesetting, the 1960s with the release of Letraset sheet
                                                                    passage.
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="client-user2 tt-client">
                                                            <div class="client-img col-sm-4">
                                                                <div class="user-details">
                                                                    <div class="image">
                                                                        <a href="#"><img src="../img/cms/user2.jpg" alt="user2" width="120"
                                                                                         height="120" /></a>
                                                                    </div>
                                                                    <div class="client-user">
                                                                        <div class="client-usertitle">Johny deep</div>
                                                                        <div class="client-subtitle">CEO &amp; Founder</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="client-content col-sm-8">
                                                                <div class="client-desc">
                                                                    The majority have suffered alteration in some form, by injected believable. There
                                                                    variation words able s, but also
                                                                    the leap into electronic typesetting, the 1960s with the release of Letraset sheet
                                                                    passage.
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="client-user3 tt-client">
                                                            <div class="client-img col-sm-4">
                                                                <div class="user-details">
                                                                    <div class="image">
                                                                        <a href="#"><img src="../img/cms/user3.jpg" alt="user3" width="120"
                                                                                         height="120" /></a>
                                                                    </div>
                                                                    <div class="client-user">
                                                                        <div class="client-usertitle">Johny deep</div>
                                                                        <div class="client-subtitle">CEO &amp; Founder</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="client-content col-sm-8">
                                                                <div class="client-desc">
                                                                    The majority have suffered alteration in some form, by injected believable. There
                                                                    variation words able s, but also
                                                                    the leap into electronic typesetting, the 1960s with the release of Letraset sheet
                                                                    passage.
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="ttcmsservices" class="bottom-to-top hb-animate-element">
                                        <div class="services container">
                                            <div class="ttservices-inner">
                                                <div
                                                    class="ttservice-left col-sm-6 col-xs-12 col-lg-4 hb-animate-element right-to-left hb-in-viewport">
                                                    <div class="ttoffers ttservices col-sm-12">
                                                        <div class="ttcontent_inner">
                                                            <div class="service">
                                                                <div class="ttoffers_img service-icon"></div>
                                                                <div class="service-content">
                                                                    <div class="service-title">Ice cubes Juice</div>
                                                                    <div class="service-desc">Add in a few ice cubes. The drink is best served
                                                                        chilled!
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ttreturn ttservices col-sm-12">
                                                        <div class="ttcontent_inner">
                                                            <div class="service">
                                                                <div class="ttreturn_img service-icon"></div>
                                                                <div class="service-content">
                                                                    <div class="service-title">Garnish Juice</div>
                                                                    <div class="service-desc">Garnish with fresh lime a few ice cubes. served chilled!
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tteasyuse ttservices col-sm-12">
                                                        <div class="ttcontent_inner">
                                                            <div class="service">
                                                                <div class="tteasyuse_img service-icon"></div>
                                                                <div class="service-content">
                                                                    <div class="service-title">High ball Juice</div>
                                                                    <div class="service-desc">Recommend to serve in a highball Add in a served
                                                                        chilled!.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="ttservice-right col-sm-6 col-xs-12 col-lg-4 hb-animate-element left-to-right hb-in-viewport">
                                                    <div class="ttexchange ttservices col-sm-12">
                                                        <div class="ttcontent_inner">
                                                            <div class="service">
                                                                <div class="ttexchange_img service-icon"></div>
                                                                <div class="service-content">
                                                                    <div class="service-title">100% Healthy</div>
                                                                    <div class="service-desc">Add in a few ice cubes. The drink is best served
                                                                        chilled!
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ttshinpping ttservices col-sm-12">
                                                        <div class="ttcontent_inner">
                                                            <div class="service">
                                                                <div class="ttshinpping_img service-icon"></div>
                                                                <div class="service-content">
                                                                    <div class="service-title">Fresh &amp; Natural</div>
                                                                    <div class="service-desc">Garnish with fresh lime a few ice cubes. served chilled!
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ttdelivery ttservices col-sm-12">
                                                        <div class="ttcontent_inner">
                                                            <div class="service">
                                                                <div class="ttdelivery_img service-icon"></div>
                                                                <div class="service-content">
                                                                    <div class="service-title">Full Creamy</div>
                                                                    <div class="service-desc">Recommend to serve in a highball Add in a served
                                                                        chilled!.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="ttservice-middle ttservicebanner col-sm-4 col-xs-12 hb-animate-element bottom-to-top hb-in-viewport">
                                                    <div class="ttservices-img">
                                                        <a href="#"><img alt="services-image" src="../img/cms/services-img.png" width="400"
                                                                         height="440" /></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <section class="ttspecial-products clearfix bottom-to-top hb-animate-element">
                                        <h3 class="tt-title">Special products</h3>
                                        <div class="ttspecial-list container">
                                            <div class="row">
                                                <div class="products">
                                                    <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                        <article class="product-miniature js-product-miniature col-sm-4" data-id-product="2"
                                                                 data-id-product-attribute="9">
                                                            <div class="thumbnail-container">
                                                                <div class="ttproduct-image">
                                                                    <a href="home/2-brown-bear-printed-sweater.html"
                                                                       class="thumbnail product-thumbnail">
                                                                        <img class="ttproduct-img1"
                                                                             src="/products/30-home_default/brown-bear-printed-sweater.jpg"
                                                                             alt="Various carbonated flavors"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/30-large_default/brown-bear-printed-sweater.jpg"
                                                                             width="290" height="290" />
                                                                        <img class="fade second_image img-responsive"
                                                                             src="/products/31-home_default/brown-bear-printed-sweater.jpg"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/31-large_default/brown-bear-printed-sweater.jpg"
                                                                             alt="" width="300" height="390" />
                                                                    </a>

                                                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                    <ul class="product-flags">
                                                                        <li class="discount">-20%</li>
                                                                        <li class="new">New</li>
                                                                    </ul>

                                                                    <div class="wishlist">
                                                                        <a class="addToWishlist btn btn-primary wishlistProd_2" href="#"
                                                                           data-dismiss="modal" data-rel="2" title="Add to wishlist"
                                                                           onclick="WishlistCart('wishlist_block_list', 'add', '2', '9', 1);
                                                                                                                                                                                                                                                                                                                 return false;">
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
                                                                            <div class="quick-view-block">
                                                                                <a href="#" class="quick-view btn btn-primary" data-link-action="quickview"
                                                                                   title="Quick view">
                                                                                    <i class="material-icons quick_view_icon">visibility</i>
                                                                                    <span>Quick view</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>

                                                                            <div class="tt-button-container">
                                                                                <div class="product-add-to-cart">
                                                                                    <form
                                                                                        action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                                                                        method="post" class="add-to-cart-or-refresh">
                                                                                        <div class="product-quantity" style="display: none">
                                                                                            <input type="number" name="id_product" value="2"
                                                                                                   class="product_page_product_id" />
                                                                                            <input type="number" name="id_customization" value="0"
                                                                                                   class="product_customization_id" />
                                                                                            <input type="hidden" name="token"
                                                                                                   value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                                                                                   value="1" min="1" />
                                                                                        </div>
                                                                                        <button
                                                                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                            data-button-action="add-to-cart" title="Add to cart">
                                                                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                                            <span>Add to cart</span>
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                            <div class="compare">
                                                                                <a class="add_to_compare btn btn-primary" href="#" data-id-product="2"
                                                                                   data-dismiss="modal" title="Add to Compare">
                                                                                    <i class="material-icons compare_icon">equalizer</i>
                                                                                    <span>Add to Compare</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="hook-reviews">
                                                                            <div class="comments_note" itemprop="aggregateRating" itemscope
                                                                                 itemtype="https://schema.org/AggregateRating">
                                                                                <div class="star_content clearfix">
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <meta itemprop="ratingValue" content="0" />
                                                                                </div>

                                                                                <meta itemprop="itemReviewed" content="Various carbonated flavors" />
                                                                                <span class="reviewCount" itemprop="reviewCount">0</span>
                                                                            </div>
                                                                        </div>

                                                                        <span class="h3 product-title" itemprop="name"><a
                                                                                href="home/2-brown-bear-printed-sweater.html">Various
                                                                                carbonated...</a></span>

                                                                        <div class="product-desc-short" itemprop="description">
                                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                                                            Lorem
                                                                            Ipsum has...
                                                                        </div>

                                                                        <div class="product-price-and-shipping">
                                                                            <span itemprop="price" class="price">$28.72</span>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-percentage discount-product">-20%</span>
                                                                            <span class="regular-price">$35.90</span>

                                                                            <span class="sr-only">Price</span>
                                                                        </div>

                                                                        <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </div>

                                                    <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                        <article class="product-miniature js-product-miniature col-sm-4" data-id-product="4"
                                                                 data-id-product-attribute="16">
                                                            <div class="thumbnail-container">
                                                                <div class="ttproduct-image">
                                                                    <a href="treats/4-the-adventure-begins-framed-poster.html"
                                                                       class="thumbnail product-thumbnail">
                                                                        <img class="ttproduct-img1"
                                                                             src="/products/42-home_default/the-adventure-begins-framed-poster.jpg"
                                                                             alt="Cantaloupe juice &amp; cocktail"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/42-large_default/the-adventure-begins-framed-poster.jpg"
                                                                             width="290" height="290" />
                                                                        <img class="fade second_image img-responsive"
                                                                             src="/products/43-home_default/the-adventure-begins-framed-poster.jpg"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/43-large_default/the-adventure-begins-framed-poster.jpg"
                                                                             alt="" width="300" height="390" />
                                                                    </a>

                                                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                    <ul class="product-flags">
                                                                        <li class="online-only">Online only</li>
                                                                        <li class="on-sale">On sale!</li>
                                                                        <li class="discount">-$4.00</li>
                                                                        <li class="new">New</li>
                                                                    </ul>

                                                                    <div class="wishlist">
                                                                        <a class="addToWishlist btn btn-primary wishlistProd_4" href="#"
                                                                           data-dismiss="modal" data-rel="4" title="Add to wishlist"
                                                                           onclick="WishlistCart('wishlist_block_list', 'add', '4', '16', 1); return false;">
                                                                            <i class="material-icons wishlist-icon">favorite_border</i>
                                                                            <span class="wishlist-name">Add to Wishlist</span>
                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <div class="ttproduct-desc">
                                                                    <div class="product-description">
                                                                        <h5 class="cat-name">treats</h5>
                                                                        <div class="ttproducthover">
                                                                            <div class="quick-view-block">
                                                                                <a href="#" class="quick-view btn btn-primary" data-link-action="quickview"
                                                                                   title="Quick view">
                                                                                    <i class="material-icons quick_view_icon">visibility</i>
                                                                                    <span>Quick view</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>

                                                                            <div class="tt-button-container">
                                                                                <div class="product-add-to-cart">
                                                                                    <form
                                                                                        action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                                                                        method="post" class="add-to-cart-or-refresh">
                                                                                        <div class="product-quantity" style="display: none">
                                                                                            <input type="number" name="id_product" value="4"
                                                                                                   class="product_page_product_id" />
                                                                                            <input type="number" name="id_customization" value="0"
                                                                                                   class="product_customization_id" />
                                                                                            <input type="hidden" name="token"
                                                                                                   value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                                                                                   value="1" min="1" />
                                                                                        </div>
                                                                                        <button
                                                                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                            data-button-action="add-to-cart" title="Add to cart">
                                                                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                                            <span>Add to cart</span>
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                            <div class="compare">
                                                                                <a class="add_to_compare btn btn-primary" href="#" data-id-product="4"
                                                                                   data-dismiss="modal" title="Add to Compare">
                                                                                    <i class="material-icons compare_icon">equalizer</i>
                                                                                    <span>Add to Compare</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="hook-reviews">
                                                                            <div class="comments_note" itemprop="aggregateRating" itemscope
                                                                                 itemtype="https://schema.org/AggregateRating">
                                                                                <div class="star_content clearfix">
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <meta itemprop="ratingValue" content="5" />
                                                                                </div>

                                                                                <meta itemprop="itemReviewed" content="Cantaloupe juice &amp; cocktail" />
                                                                                <span class="reviewCount" itemprop="reviewCount">1</span>
                                                                            </div>
                                                                        </div>

                                                                        <span class="h3 product-title" itemprop="name"><a
                                                                                href="treats/4-the-adventure-begins-framed-poster.html">Cantaloupe juice
                                                                                &amp;...</a></span>

                                                                        <div class="product-desc-short" itemprop="description">
                                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                                                            Lorem
                                                                            Ipsum has...
                                                                        </div>

                                                                        <div class="product-price-and-shipping">
                                                                            <span itemprop="price" class="price">$25.00</span>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-amount discount-product">-$4.00</span>
                                                                            <span class="regular-price">$29.00</span>

                                                                            <span class="sr-only">Price</span>
                                                                        </div>

                                                                        <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </div>

                                                    <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                        <article class="product-miniature js-product-miniature col-sm-4" data-id-product="1"
                                                                 data-id-product-attribute="1">
                                                            <div class="thumbnail-container">
                                                                <div class="ttproduct-image">
                                                                    <a href="home/1-hummingbird-printed-t-shirt.html"
                                                                       class="thumbnail product-thumbnail">
                                                                        <img class="ttproduct-img1"
                                                                             src="/products/24-home_default/hummingbird-printed-t-shirt.jpg"
                                                                             alt="Strawberry Daiquiri"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/24-large_default/hummingbird-printed-t-shirt.jpg"
                                                                             width="290" height="290" />
                                                                        <img class="fade second_image img-responsive"
                                                                             src="/products/25-home_default/hummingbird-printed-t-shirt.jpg"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/25-large_default/hummingbird-printed-t-shirt.jpg"
                                                                             alt="" width="300" height="390" />
                                                                    </a>

                                                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                    <ul class="product-flags">
                                                                        <li class="online-only">Online only</li>
                                                                        <li class="on-sale">On sale!</li>
                                                                        <li class="discount">-20%</li>
                                                                        <li class="new">New</li>
                                                                    </ul>

                                                                    <div class="wishlist">
                                                                        <a class="addToWishlist btn btn-primary wishlistProd_1" href="#"
                                                                           data-dismiss="modal" data-rel="1" title="Add to wishlist"
                                                                           onclick="WishlistCart('wishlist_block_list', 'add', '1', '1', 1); return false;">
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
                                                                            <div class="quick-view-block">
                                                                                <a href="#" class="quick-view btn btn-primary" data-link-action="quickview"
                                                                                   title="Quick view">
                                                                                    <i class="material-icons quick_view_icon">visibility</i>
                                                                                    <span>Quick view</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>

                                                                            <div class="tt-button-container">
                                                                                <div class="product-add-to-cart">
                                                                                    <form
                                                                                        action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                                                                        method="post" class="add-to-cart-or-refresh">
                                                                                        <div class="product-quantity" style="display: none">
                                                                                            <input type="number" name="id_product" value="1"
                                                                                                   class="product_page_product_id" />
                                                                                            <input type="number" name="id_customization" value="0"
                                                                                                   class="product_customization_id" />
                                                                                            <input type="hidden" name="token"
                                                                                                   value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                                                                                   value="1" min="1" />
                                                                                        </div>
                                                                                        <button
                                                                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                            data-button-action="add-to-cart" title="Add to cart">
                                                                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                                            <span>Add to cart</span>
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                            <div class="compare">
                                                                                <a class="add_to_compare btn btn-primary" href="#" data-id-product="1"
                                                                                   data-dismiss="modal" title="Add to Compare">
                                                                                    <i class="material-icons compare_icon">equalizer</i>
                                                                                    <span>Add to Compare</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="hook-reviews">
                                                                            <div class="comments_note" itemprop="aggregateRating" itemscope
                                                                                 itemtype="https://schema.org/AggregateRating">
                                                                                <div class="star_content clearfix">
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <meta itemprop="ratingValue" content="0" />
                                                                                </div>

                                                                                <meta itemprop="itemReviewed" content="Strawberry Daiquiri" />
                                                                                <span class="reviewCount" itemprop="reviewCount">0</span>
                                                                            </div>
                                                                        </div>

                                                                        <span class="h3 product-title" itemprop="name"><a
                                                                                href="home/1-hummingbird-printed-t-shirt.html">Strawberry
                                                                                Daiquiri</a></span>

                                                                        <div class="product-desc-short" itemprop="description">
                                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                                                            Lorem
                                                                            Ipsum has...
                                                                        </div>

                                                                        <div class="product-price-and-shipping">
                                                                            <span itemprop="price" class="price">$19.12</span>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-percentage discount-product">-20%</span>
                                                                            <span class="regular-price">$23.90</span>

                                                                            <span class="sr-only">Price</span>
                                                                        </div>

                                                                        <div class="highlighted-informations hidden-sm-down">
                                                                            <div class="variant-links">
                                                                                <a href="home/1-1-hummingbird-printed-t-shirt.html#/1-size-s/8-color-white"
                                                                                   class="color" title="White" style="background-color: #ffffff"><span
                                                                                        class="sr-only">White</span></a>
                                                                                <a href="home/1-2-hummingbird-printed-t-shirt.html#/1-size-s/11-color-black"
                                                                                   class="color" title="Black" style="background-color: #434a54"><span
                                                                                        class="sr-only">Black</span></a>
                                                                                <span class="js-count count"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </div>

                                                    <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                        <article class="product-miniature js-product-miniature col-sm-4" data-id-product="11"
                                                                 data-id-product-attribute="26">
                                                            <div class="thumbnail-container">
                                                                <div class="ttproduct-image">
                                                                    <a href="home/11-hummingbird-cushion.html" class="thumbnail product-thumbnail">
                                                                        <img class="ttproduct-img1"
                                                                             src="/products/84-home_default/hummingbird-cushion.jpg"
                                                                             alt="Simply Organic Juice"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/84-large_default/hummingbird-cushion.jpg"
                                                                             width="290" height="290" />
                                                                        <img class="fade second_image img-responsive"
                                                                             src="/products/85-home_default/hummingbird-cushion.jpg"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/85-large_default/hummingbird-cushion.jpg"
                                                                             alt="" width="300" height="390" />
                                                                    </a>

                                                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                    <ul class="product-flags">
                                                                        <li class="online-only">Online only</li>
                                                                        <li class="on-sale">On sale!</li>
                                                                        <li class="discount">-$3.00</li>
                                                                        <li class="new">New</li>
                                                                    </ul>

                                                                    <div class="wishlist">
                                                                        <a class="addToWishlist btn btn-primary wishlistProd_11" href="#"
                                                                           data-dismiss="modal" data-rel="11" title="Add to wishlist" onclick="WishlistCart('wishlist_block_list', 'add', '11', '26', 1);
                                                                                                                                                                                                                                                                                                                 return false;">
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
                                                                            <div class="quick-view-block">
                                                                                <a href="#" class="quick-view btn btn-primary" data-link-action="quickview"
                                                                                   title="Quick view">
                                                                                    <i class="material-icons quick_view_icon">visibility</i>
                                                                                    <span>Quick view</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>

                                                                            <div class="tt-button-container">
                                                                                <div class="product-add-to-cart">
                                                                                    <form
                                                                                        action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                                                                        method="post" class="add-to-cart-or-refresh">
                                                                                        <div class="product-quantity" style="display: none">
                                                                                            <input type="number" name="id_product" value="11"
                                                                                                   class="product_page_product_id" />
                                                                                            <input type="number" name="id_customization" value="0"
                                                                                                   class="product_customization_id" />
                                                                                            <input type="hidden" name="token"
                                                                                                   value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                                                                                   value="1" min="1" />
                                                                                        </div>
                                                                                        <button
                                                                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                            data-button-action="add-to-cart" title="Add to cart">
                                                                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                                            <span>Add to cart</span>
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                            <div class="compare">
                                                                                <a class="add_to_compare btn btn-primary" href="#" data-id-product="11"
                                                                                   data-dismiss="modal" title="Add to Compare">
                                                                                    <i class="material-icons compare_icon">equalizer</i>
                                                                                    <span>Add to Compare</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="hook-reviews">
                                                                            <div class="comments_note" itemprop="aggregateRating" itemscope
                                                                                 itemtype="https://schema.org/AggregateRating">
                                                                                <div class="star_content clearfix">
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <meta itemprop="ratingValue" content="5" />
                                                                                </div>

                                                                                <meta itemprop="itemReviewed" content="Simply Organic Juice" />
                                                                                <span class="reviewCount" itemprop="reviewCount">1</span>
                                                                            </div>
                                                                        </div>

                                                                        <span class="h3 product-title" itemprop="name"><a
                                                                                href="home/11-hummingbird-cushion.html">Simply Organic Juice</a></span>

                                                                        <div class="product-desc-short" itemprop="description">
                                                                            Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                                                            Lorem
                                                                            Ipsum has...
                                                                        </div>

                                                                        <div class="product-price-and-shipping">
                                                                            <span itemprop="price" class="price">$15.90</span>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-amount discount-product">-$3.00</span>
                                                                            <span class="regular-price">$18.90</span>

                                                                            <span class="sr-only">Price</span>
                                                                        </div>

                                                                        <div class="highlighted-informations hidden-sm-down">
                                                                            <div class="variant-links">
                                                                                <a href="home/11-26-hummingbird-cushion.html#/8-color-white" class="color"
                                                                                   title="White" style="background-color: #ffffff"><span
                                                                                        class="sr-only">White</span></a>
                                                                                <a href="home/11-27-hummingbird-cushion.html#/11-color-black" class="color"
                                                                                   title="Black" style="background-color: #434a54"><span
                                                                                        class="sr-only">Black</span></a>
                                                                                <span class="js-count count"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </div>

                                                    <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                        <article class="product-miniature js-product-miniature col-sm-4" data-id-product="19"
                                                                 data-id-product-attribute="0">
                                                            <div class="thumbnail-container">
                                                                <div class="ttproduct-image">
                                                                    <a href="home/19-customizable-mug.html" class="thumbnail product-thumbnail">
                                                                        <img class="ttproduct-img1"
                                                                             src="/products/132-home_default/customizable-mug.jpg"
                                                                             alt="Cucumber Lemonade Mocktail"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/132-large_default/customizable-mug.jpg"
                                                                             width="290" height="290" />
                                                                        <img class="fade second_image img-responsive"
                                                                             src="/products/133-home_default/customizable-mug.jpg"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/133-large_default/customizable-mug.jpg"
                                                                             alt="" width="300" height="390" />
                                                                    </a>

                                                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                    <ul class="product-flags">
                                                                        <li class="online-only">Online only</li>
                                                                        <li class="on-sale">On sale!</li>
                                                                        <li class="discount">-$3.00</li>
                                                                        <li class="new">New</li>
                                                                        <li class="pack">Pack</li>
                                                                    </ul>

                                                                    <div class="wishlist">
                                                                        <a class="addToWishlist btn btn-primary wishlistProd_19" href="#"
                                                                           data-dismiss="modal" data-rel="19" title="Add to wishlist"
                                                                           onclick="WishlistCart('wishlist_block_list', 'add', '19', '0', 1);
                                                                                                                                                                                                                                                                                                                 return false;">
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
                                                                            <div class="quick-view-block">
                                                                                <a href="#" class="quick-view btn btn-primary" data-link-action="quickview"
                                                                                   title="Quick view">
                                                                                    <i class="material-icons quick_view_icon">visibility</i>
                                                                                    <span>Quick view</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>

                                                                            <div class="tt-button-container">
                                                                                <div class="product-add-to-cart">
                                                                                    <form
                                                                                        action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                                                                        method="post" class="add-to-cart-or-refresh">
                                                                                        <div class="product-quantity" style="display: none">
                                                                                            <input type="number" name="id_product" value="19"
                                                                                                   class="product_page_product_id" />
                                                                                            <input type="number" name="id_customization" value="0"
                                                                                                   class="product_customization_id" />
                                                                                            <input type="hidden" name="token"
                                                                                                   value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                                                                                   value="1" min="1" />
                                                                                        </div>
                                                                                        <button
                                                                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                            data-button-action="add-to-cart" title="Add to cart">
                                                                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                                            <span>Add to cart</span>
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                            <div class="compare">
                                                                                <a class="add_to_compare btn btn-primary" href="#" data-id-product="19"
                                                                                   data-dismiss="modal" title="Add to Compare">
                                                                                    <i class="material-icons compare_icon">equalizer</i>
                                                                                    <span>Add to Compare</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="hook-reviews">
                                                                            <div class="comments_note" itemprop="aggregateRating" itemscope
                                                                                 itemtype="https://schema.org/AggregateRating">
                                                                                <div class="star_content clearfix">
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <meta itemprop="ratingValue" content="5" />
                                                                                </div>

                                                                                <meta itemprop="itemReviewed" content="Cucumber Lemonade Mocktail" />
                                                                                <span class="reviewCount" itemprop="reviewCount">1</span>
                                                                            </div>
                                                                        </div>

                                                                        <span class="h3 product-title" itemprop="name"><a
                                                                                href="home/19-customizable-mug.html">Cucumber Lemonade...</a></span>

                                                                        <div class="product-desc-short" itemprop="description">
                                                                            Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                                                            Lorem
                                                                            Ipsum has...
                                                                        </div>

                                                                        <div class="product-price-and-shipping">
                                                                            <span itemprop="price" class="price">$10.90</span>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-amount discount-product">-$3.00</span>
                                                                            <span class="regular-price">$13.90</span>

                                                                            <span class="sr-only">Price</span>
                                                                        </div>

                                                                        <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </div>

                                                    <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                        <article class="product-miniature js-product-miniature col-sm-4" data-id-product="7"
                                                                 data-id-product-attribute="0">
                                                            <div class="thumbnail-container">
                                                                <div class="ttproduct-image">
                                                                    <a href="home/7-mug-the-adventure-begins.html"
                                                                       class="thumbnail product-thumbnail">
                                                                        <img class="ttproduct-img1"
                                                                             src="/products/60-home_default/mug-the-adventure-begins.jpg"
                                                                             alt="Polycarbonate Hurricane"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/60-large_default/mug-the-adventure-begins.jpg"
                                                                             width="290" height="290" />
                                                                        <img class="fade second_image img-responsive"
                                                                             src="/products/61-home_default/mug-the-adventure-begins.jpg"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/61-large_default/mug-the-adventure-begins.jpg"
                                                                             alt="" width="300" height="390" />
                                                                    </a>

                                                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                    <ul class="product-flags">
                                                                        <li class="online-only">Online only</li>
                                                                        <li class="on-sale">On sale!</li>
                                                                        <li class="discount">-$2.00</li>
                                                                        <li class="new">New</li>
                                                                    </ul>

                                                                    <div class="wishlist">
                                                                        <a class="addToWishlist btn btn-primary wishlistProd_7" href="#"
                                                                           data-dismiss="modal" data-rel="7" title="Add to wishlist"
                                                                           onclick="WishlistCart('wishlist_block_list', 'add', '7', '0', 1);
                                                                                                                                                                                                                                                                                                                 return false;">
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
                                                                            <div class="quick-view-block">
                                                                                <a href="#" class="quick-view btn btn-primary" data-link-action="quickview"
                                                                                   title="Quick view">
                                                                                    <i class="material-icons quick_view_icon">visibility</i>
                                                                                    <span>Quick view</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>

                                                                            <div class="tt-button-container">
                                                                                <div class="product-add-to-cart">
                                                                                    <form
                                                                                        action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                                                                        method="post" class="add-to-cart-or-refresh">
                                                                                        <div class="product-quantity" style="display: none">
                                                                                            <input type="number" name="id_product" value="7"
                                                                                                   class="product_page_product_id" />
                                                                                            <input type="number" name="id_customization" value="0"
                                                                                                   class="product_customization_id" />
                                                                                            <input type="hidden" name="token"
                                                                                                   value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                                                                                   value="1" min="1" />
                                                                                        </div>
                                                                                        <button
                                                                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                            data-button-action="add-to-cart" title="Add to cart">
                                                                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                                            <span>Add to cart</span>
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                            <div class="compare">
                                                                                <a class="add_to_compare btn btn-primary" href="#" data-id-product="7"
                                                                                   data-dismiss="modal" title="Add to Compare">
                                                                                    <i class="material-icons compare_icon">equalizer</i>
                                                                                    <span>Add to Compare</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="hook-reviews">
                                                                            <div class="comments_note" itemprop="aggregateRating" itemscope
                                                                                 itemtype="https://schema.org/AggregateRating">
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

                                                                        <span class="h3 product-title" itemprop="name"><a
                                                                                href="home/7-mug-the-adventure-begins.html">Polycarbonate
                                                                                Hurricane</a></span>

                                                                        <div class="product-desc-short" itemprop="description">
                                                                            Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                                                            Lorem
                                                                            Ipsum has...
                                                                        </div>

                                                                        <div class="product-price-and-shipping">
                                                                            <span itemprop="price" class="price">$10.90</span>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-amount discount-product">-$2.00</span>
                                                                            <span class="regular-price">$12.90</span>

                                                                            <span class="sr-only">Price</span>
                                                                        </div>

                                                                        <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </div>

                                                    <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                        <article class="product-miniature js-product-miniature col-sm-4" data-id-product="14"
                                                                 data-id-product-attribute="0">
                                                            <div class="thumbnail-container">
                                                                <div class="ttproduct-image">
                                                                    <a href="treats/14-hummingbird-vector-graphics.html"
                                                                       class="thumbnail product-thumbnail">
                                                                        <img class="ttproduct-img1"
                                                                             src="/products/102-home_default/hummingbird-vector-graphics.jpg"
                                                                             alt="Screwdriver Cocktail"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/102-large_default/hummingbird-vector-graphics.jpg"
                                                                             width="290" height="290" />
                                                                        <img class="fade second_image img-responsive"
                                                                             src="/products/103-home_default/hummingbird-vector-graphics.jpg"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/103-large_default/hummingbird-vector-graphics.jpg"
                                                                             alt="" width="300" height="390" />
                                                                    </a>

                                                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                    <ul class="product-flags">
                                                                        <li class="online-only">Online only</li>
                                                                        <li class="on-sale">On sale!</li>
                                                                        <li class="discount">-$5.00</li>
                                                                        <li class="new">New</li>
                                                                    </ul>

                                                                    <div class="wishlist">
                                                                        <a class="addToWishlist btn btn-primary wishlistProd_14" href="#"
                                                                           data-dismiss="modal" data-rel="14" title="Add to wishlist"
                                                                           onclick="WishlistCart('wishlist_block_list', 'add', '14', '0', 1);
                                                                                                                                                                                                                                                                                                                 return false;">
                                                                            <i class="material-icons wishlist-icon">favorite_border</i>
                                                                            <span class="wishlist-name">Add to Wishlist</span>
                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <div class="ttproduct-desc">
                                                                    <div class="product-description">
                                                                        <h5 class="cat-name">treats</h5>
                                                                        <div class="ttproducthover">
                                                                            <div class="quick-view-block">
                                                                                <a href="#" class="quick-view btn btn-primary" data-link-action="quickview"
                                                                                   title="Quick view">
                                                                                    <i class="material-icons quick_view_icon">visibility</i>
                                                                                    <span>Quick view</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>

                                                                            <div class="tt-button-container">
                                                                                <div class="product-add-to-cart">
                                                                                    <form
                                                                                        action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                                                                        method="post" class="add-to-cart-or-refresh">
                                                                                        <div class="product-quantity" style="display: none">
                                                                                            <input type="number" name="id_product" value="14"
                                                                                                   class="product_page_product_id" />
                                                                                            <input type="number" name="id_customization" value="0"
                                                                                                   class="product_customization_id" />
                                                                                            <input type="hidden" name="token"
                                                                                                   value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                                                                                   value="1" min="1" />
                                                                                        </div>
                                                                                        <button
                                                                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                            data-button-action="add-to-cart" title="Add to cart">
                                                                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                                            <span>Add to cart</span>
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                            <div class="compare">
                                                                                <a class="add_to_compare btn btn-primary" href="#" data-id-product="14"
                                                                                   data-dismiss="modal" title="Add to Compare">
                                                                                    <i class="material-icons compare_icon">equalizer</i>
                                                                                    <span>Add to Compare</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="hook-reviews">
                                                                            <div class="comments_note" itemprop="aggregateRating" itemscope
                                                                                 itemtype="https://schema.org/AggregateRating">
                                                                                <div class="star_content clearfix">
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <meta itemprop="ratingValue" content="5" />
                                                                                </div>

                                                                                <meta itemprop="itemReviewed" content="Screwdriver Cocktail" />
                                                                                <span class="reviewCount" itemprop="reviewCount">1</span>
                                                                            </div>
                                                                        </div>

                                                                        <span class="h3 product-title" itemprop="name"><a
                                                                                href="treats/14-hummingbird-vector-graphics.html">Screwdriver
                                                                                Cocktail</a></span>

                                                                        <div class="product-desc-short" itemprop="description">
                                                                            Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                                                            Lorem
                                                                            Ipsum has...
                                                                        </div>

                                                                        <div class="product-price-and-shipping">
                                                                            <span itemprop="price" class="price">$10.00</span>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-amount discount-product">-$5.00</span>
                                                                            <span class="regular-price">$15.00</span>

                                                                            <span class="sr-only">Price</span>
                                                                        </div>

                                                                        <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </div>

                                                    <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                                        <article class="product-miniature js-product-miniature col-sm-4" data-id-product="17"
                                                                 data-id-product-attribute="0">
                                                            <div class="thumbnail-container">
                                                                <div class="ttproduct-image">
                                                                    <a href="home/17-brown-bear-notebook.html" class="thumbnail product-thumbnail">
                                                                        <img class="ttproduct-img1"
                                                                             src="/products/120-home_default/brown-bear-notebook.jpg"
                                                                             alt="Malibu &amp; Orange Juice"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/120-large_default/brown-bear-notebook.jpg"
                                                                             width="290" height="290" />
                                                                        <img class="fade second_image img-responsive"
                                                                             src="/products/121-home_default/brown-bear-notebook.jpg"
                                                                             data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/121-large_default/brown-bear-notebook.jpg"
                                                                             alt="" width="300" height="390" />
                                                                    </a>

                                                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                                                    <ul class="product-flags">
                                                                        <li class="online-only">Online only</li>
                                                                        <li class="on-sale">On sale!</li>
                                                                        <li class="discount">-$5.00</li>
                                                                        <li class="new">New</li>
                                                                        <li class="pack">Pack</li>
                                                                    </ul>

                                                                    <div class="wishlist">
                                                                        <a class="addToWishlist btn btn-primary wishlistProd_17" href="#"
                                                                           data-dismiss="modal" data-rel="17" title="Add to wishlist"
                                                                           onclick="WishlistCart('wishlist_block_list', 'add', '17', '0', 1);
                                                                                                                                                                                                                                                                                                                 return false;">
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
                                                                            <div class="quick-view-block">
                                                                                <a href="#" class="quick-view btn btn-primary" data-link-action="quickview"
                                                                                   title="Quick view">
                                                                                    <i class="material-icons quick_view_icon">visibility</i>
                                                                                    <span>Quick view</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>

                                                                            <div class="tt-button-container">
                                                                                <div class="product-add-to-cart">
                                                                                    <form
                                                                                        action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                                                                        method="post" class="add-to-cart-or-refresh">
                                                                                        <div class="product-quantity" style="display: none">
                                                                                            <input type="number" name="id_product" value="17"
                                                                                                   class="product_page_product_id" />
                                                                                            <input type="number" name="id_customization" value="0"
                                                                                                   class="product_customization_id" />
                                                                                            <input type="hidden" name="token"
                                                                                                   value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                                                                                   value="1" min="1" />
                                                                                        </div>
                                                                                        <button
                                                                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                                                            data-button-action="add-to-cart" title="Add to cart">
                                                                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                                                            <span class="loading"><i class="material-icons">cached</i></span>
                                                                                            <span>Add to cart</span>
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                            <div class="compare">
                                                                                <a class="add_to_compare btn btn-primary" href="#" data-id-product="17"
                                                                                   data-dismiss="modal" title="Add to Compare">
                                                                                    <i class="material-icons compare_icon">equalizer</i>
                                                                                    <span>Add to Compare</span>
                                                                                    <span class="loading"><i class="material-icons">cached</i></span>
                                                                                </a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="hook-reviews">
                                                                            <div class="comments_note" itemprop="aggregateRating" itemscope
                                                                                 itemtype="https://schema.org/AggregateRating">
                                                                                <div class="star_content clearfix">
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <div class="star star_on"></div>
                                                                                    <meta itemprop="ratingValue" content="5" />
                                                                                </div>

                                                                                <meta itemprop="itemReviewed" content="Malibu &amp; Orange Juice" />
                                                                                <span class="reviewCount" itemprop="reviewCount">1</span>
                                                                            </div>
                                                                        </div>

                                                                        <span class="h3 product-title" itemprop="name"><a
                                                                                href="home/17-brown-bear-notebook.html">Malibu &amp; Orange Juice</a></span>

                                                                        <div class="product-desc-short" itemprop="description">
                                                                            Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                                                            Lorem
                                                                            Ipsum has...
                                                                        </div>

                                                                        <div class="product-price-and-shipping">
                                                                            <span itemprop="price" class="price">$7.90</span>

                                                                            <span class="sr-only">Regular price</span>
                                                                            <span class="discount-amount discount-product">-$5.00</span>
                                                                            <span class="regular-price">$12.90</span>

                                                                            <span class="sr-only">Price</span>
                                                                        </div>

                                                                        <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </div>
                                                </div>
                                                <div class="customNavigation">
                                                    <a class="btn prev ttspecial_prev"><i class="material-icons">&#xe408;</i>Prev</a>
                                                    <a class="btn next ttspecial_next"><i class="material-icons">&#xe409;</i>Next</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="allproduct">
                                            <a href="prices-drop.html">All sale products</a>
                                        </div>

                                        <div class="animation-img animation11"></div>
                                        <div class="animation-img animation22"></div>
                                        <div class="animation-img animation33"></div>
                                    </section>

                                    <section class="brands bottom-to-top hb-animate-element">
                                        <div class="container">
                                            <span class="h1 products-section-title text-uppercase tt-title"> Brands </span>
                                            <div class="products">
                                                <ul id="ttbrandlogo-carousel" class="product_list">
                                                    <li>
                                                        <div class="brand-image">
                                                            <a href="brand/3-brand-3.html" title="Brand 3">
                                                                <img src="../img/m/3.jpg" alt="Brand 3" width="140" height="100" />
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="brand-image">
                                                            <a href="brand/4-brand-4.html" title="Brand 4">
                                                                <img src="../img/m/4.jpg" alt="Brand 4" width="140" height="100" />
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="brand-image">
                                                            <a href="brand/5-brand-5.html" title="Brand 5">
                                                                <img src="../img/m/5.jpg" alt="Brand 5" width="140" height="100" />
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="brand-image">
                                                            <a href="brand/6-brand-6.html" title="Brand 6">
                                                                <img src="../img/m/6.jpg" alt="Brand 6" width="140" height="100" />
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="brand-image">
                                                            <a href="brand/7-brand-7.html" title="Brand 7">
                                                                <img src="../img/m/7.jpg" alt="Brand 7" width="140" height="100" />
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="brand-image">
                                                            <a href="brand/8-brand-8.html" title="Brand 8">
                                                                <img src="../img/m/8.jpg" alt="Brand 8" width="140" height="100" />
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="brand-image">
                                                            <a href="brand/2-graphic-corner.html" title="Graphic Corner">
                                                                <img src="../img/m/2.jpg" alt="Graphic Corner" width="140" height="100" />
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="brand-image">
                                                            <a href="brand/1-studio-design.html" title="Studio Design">
                                                                <img src="../img/m/1.jpg" alt="Studio Design" width="140" height="100" />
                                                            </a>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <div class="customNavigation">
                                                    <a class="btn prev ttbrandlogo_prev"><i class="material-icons">&#xe408;</i>Prev</a>
                                                    <a class="btn next ttbrandlogo_next"><i class="material-icons">&#xe409;</i>Next</a>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </section>

                                <footer class="page-footer">
                                    <!-- Footer content -->
                                </footer>
                            </section>
                        </div>
                    </div>
                </section>

                <%@include file="/components/footer.jsp" %>
            </div>
        </main>

        <script src="/js/bottom-254fa158.js"></script>
    </body>

</html>