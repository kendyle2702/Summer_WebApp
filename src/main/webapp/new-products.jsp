<!DOCTYPE html>
<html lang="en">

<head>
  <%@include file="/components/head.jsp" %>
</head>

<body id="new-products"
  class="lang-en country-us currency-usd layout-left-column page-new-products tax-display-disabled" itemscope
  itemtype="http://schema.org/WebPage">
  <%@include file="/components/header.jsp" %>
    <div class="ttloading-bg spinner"></div>

    <div class="newsletter-pop"></div>

    <main>
      <div id="page" class="">
        <nav data-depth="2" class="breadcrumb hidden-sm-down">
          <ol itemscope itemtype="http://schema.org/BreadcrumbList">
            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
              <a itemprop="item" href="index.html"><span itemprop="name">Home</span></a>
              <meta itemprop="position" content="1" />
            </li>

            <li>
              <span>New products</span>
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
                  <li>
                    <a class="text-uppercase h6" href="38-giant-fat-.html">Giant Fat</a>
                  </li>
                  <li></li>
                </ul>
              </div>
              <div class="ttleftbanner">
                <a href="http://www.prestashop.com/" title="PrestaShop"><img
                    src="../modules/ttadvertising/img/advertising-s1.jpg" alt="PrestaShop" title="PrestaShop"
                    width="300" height="500" /></a>
              </div>
              <section class="new-products clearfix mt-3">
                <h1 class="h1 products-section-title text-uppercase">New products</h1>
                <div class="title clearfix hidden-md-up" data-target="#new-product" data-toggle="collapse">
                  <span class="h3 text-uppercase">New products</span>
                  <span class="float-xs-right">
                    <span class="navbar-toggler collapse-icons">
                      <i class="material-icons add">&#xE145;</i>
                      <i class="material-icons remove">&#xE15B;</i>
                    </span>
                  </span>
                </div>

                <div id="new-product" class="collapse toggle new_product">
                  <div class="customNavigation">
                    <a class="btn ttleftnew_prev"><i class="material-icons">navigate_before</i></a>
                    <a class="btn ttleftnew_next"><i class="material-icons">navigate_next</i></a>
                  </div>

                  <div class="products">
                    <!-- Start TemplateTrip 2 product slide code -->
                    <ul>
                      <li class="new">
                        <ul>
                          <li>
                            <!-- End TemplateTrip 2 product slide code -->

                            <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="19"
                                data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/19-customizable-mug.html" class="thumbnail product-thumbnail">
                                      <img class="ttproduct-img1" src="/products/132-home_default/customizable-mug.jpg"
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
                                        onclick="WishlistCart('wishlist_block_list', 'add', '19', '0', 1); return false;">
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
                                              <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
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
                                        Lorem Ipsum has...
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
                            <!-- Start TemplateTrip 2 product slide code -->

                            <!-- End TemplateTrip 2 product slide code -->
                            <!-- Start TemplateTrip 2 product slide code -->
                            <!-- End TemplateTrip 2 product slide code -->

                            <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="18"
                                data-id-product-attribute="36">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/18-hummingbird-notebook.html" class="thumbnail product-thumbnail">
                                      <img class="ttproduct-img1"
                                        src="/products/126-home_default/hummingbird-notebook.jpg"
                                        alt="Tequila and Grapefruit Juice"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/126-large_default/hummingbird-notebook.jpg"
                                        width="290" height="290" />
                                      <img class="fade second_image img-responsive"
                                        src="/products/127-home_default/hummingbird-notebook.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/127-large_default/hummingbird-notebook.jpg"
                                        alt="" width="300" height="390" />
                                    </a>

                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                    <ul class="product-flags">
                                      <li class="new">New</li>
                                    </ul>

                                    <div class="wishlist">
                                      <a class="addToWishlist btn btn-primary wishlistProd_18" href="#"
                                        data-dismiss="modal" data-rel="18" title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '18', '36', 1); return false;">
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
                                                <input type="number" name="id_product" value="18"
                                                  class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0"
                                                  class="product_customization_id" />
                                                <input type="hidden" name="token"
                                                  value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group"
                                                  value="1" min="1" />
                                              </div>
                                              <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart" title="Add to cart">
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a class="add_to_compare btn btn-primary" href="#" data-id-product="18"
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

                                          <meta itemprop="itemReviewed" content="Tequila and Grapefruit Juice" />
                                          <span class="reviewCount" itemprop="reviewCount">0</span>
                                        </div>
                                      </div>

                                      <span class="h3 product-title" itemprop="name"><a
                                          href="home/18-hummingbird-notebook.html">Tequila and Grapefruit...</a></span>

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                        Lorem Ipsum has...
                                      </div>

                                      <div class="product-price-and-shipping">
                                        <span itemprop="price" class="price">$12.90</span>

                                        <span class="sr-only">Price</span>
                                      </div>

                                      <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                    </div>
                                  </div>
                                </div>
                              </article>
                            </div>
                            <!-- Start TemplateTrip 2 product slide code -->

                            <!-- End TemplateTrip 2 product slide code -->
                            <!-- Start TemplateTrip 2 product slide code -->
                            <!-- End TemplateTrip 2 product slide code -->

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
                                        onclick="WishlistCart('wishlist_block_list', 'add', '17', '0', 1); return false;">
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
                                              <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
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
                                        Lorem Ipsum has...
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
                            <!-- Start TemplateTrip 2 product slide code -->
                          </li>
                        </ul>
                      </li>
                    </ul>

                    <!-- End TemplateTrip 2 product slide code -->
                    <!-- Start TemplateTrip 2 product slide code -->
                    <ul>
                      <li class="new">
                        <ul>
                          <li>
                            <!-- End TemplateTrip 2 product slide code -->

                            <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="16"
                                data-id-product-attribute="28">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/16-mountain-fox-notebook.html" class="thumbnail product-thumbnail">
                                      <img class="ttproduct-img1"
                                        src="/products/114-home_default/mountain-fox-notebook.jpg"
                                        alt="Vodka Cranberry drink"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/114-large_default/mountain-fox-notebook.jpg"
                                        width="290" height="290" />
                                      <img class="fade second_image img-responsive"
                                        src="/products/115-home_default/mountain-fox-notebook.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/115-large_default/mountain-fox-notebook.jpg"
                                        alt="" width="300" height="390" />
                                    </a>

                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                    <ul class="product-flags">
                                      <li class="new">New</li>
                                    </ul>

                                    <div class="wishlist">
                                      <a class="addToWishlist btn btn-primary wishlistProd_16" href="#"
                                        data-dismiss="modal" data-rel="16" title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '16', '28', 1); return false;">
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
                                                <input type="number" name="id_product" value="16"
                                                  class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0"
                                                  class="product_customization_id" />
                                                <input type="hidden" name="token"
                                                  value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group"
                                                  value="1" min="1" />
                                              </div>
                                              <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart" title="Add to cart">
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a class="add_to_compare btn btn-primary" href="#" data-id-product="16"
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

                                          <meta itemprop="itemReviewed" content="Vodka Cranberry drink" />
                                          <span class="reviewCount" itemprop="reviewCount">1</span>
                                        </div>
                                      </div>

                                      <span class="h3 product-title" itemprop="name"><a
                                          href="home/16-mountain-fox-notebook.html">Vodka Cranberry drink</a></span>

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                        Lorem Ipsum has...
                                      </div>

                                      <div class="product-price-and-shipping">
                                        <span itemprop="price" class="price">$12.90</span>

                                        <span class="sr-only">Price</span>
                                      </div>

                                      <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                    </div>
                                  </div>
                                </div>
                              </article>
                            </div>
                            <!-- Start TemplateTrip 2 product slide code -->

                            <!-- End TemplateTrip 2 product slide code -->
                            <!-- Start TemplateTrip 2 product slide code -->
                            <!-- End TemplateTrip 2 product slide code -->

                            <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="15"
                                data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/15-pack-mug-framed-poster.html" class="thumbnail product-thumbnail">
                                      <img class="ttproduct-img1"
                                        src="/products/108-home_default/pack-mug-framed-poster.jpg"
                                        alt="Easy Ganga Jamuna Juice"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/108-large_default/pack-mug-framed-poster.jpg"
                                        width="290" height="290" />
                                      <img class="fade second_image img-responsive"
                                        src="/products/109-home_default/pack-mug-framed-poster.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/109-large_default/pack-mug-framed-poster.jpg"
                                        alt="" width="300" height="390" />
                                    </a>

                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                    <ul class="product-flags">
                                      <li class="new">New</li>
                                      <li class="pack">Pack</li>
                                    </ul>

                                    <div class="wishlist">
                                      <a class="addToWishlist btn btn-primary wishlistProd_15" href="#"
                                        data-dismiss="modal" data-rel="15" title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '15', '0', 1); return false;">
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
                                                <input type="number" name="id_product" value="15"
                                                  class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0"
                                                  class="product_customization_id" />
                                                <input type="hidden" name="token"
                                                  value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group"
                                                  value="1" min="1" />
                                              </div>
                                              <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart" title="Add to cart">
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a class="add_to_compare btn btn-primary" href="#" data-id-product="15"
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

                                          <meta itemprop="itemReviewed" content="Easy Ganga Jamuna Juice" />
                                          <span class="reviewCount" itemprop="reviewCount">0</span>
                                        </div>
                                      </div>

                                      <span class="h3 product-title" itemprop="name"><a
                                          href="home/15-pack-mug-framed-poster.html">Easy Ganga Jamuna Juice</a></span>

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                        Lorem Ipsum has...
                                      </div>

                                      <div class="product-price-and-shipping">
                                        <span itemprop="price" class="price">$35.00</span>

                                        <span class="sr-only">Price</span>
                                      </div>

                                      <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                    </div>
                                  </div>
                                </div>
                              </article>
                            </div>
                            <!-- Start TemplateTrip 2 product slide code -->

                            <!-- End TemplateTrip 2 product slide code -->
                            <!-- Start TemplateTrip 2 product slide code -->
                            <!-- End TemplateTrip 2 product slide code -->

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
                                        onclick="WishlistCart('wishlist_block_list', 'add', '14', '0', 1); return false;">
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
                                              <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
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
                                        Lorem Ipsum has...
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
                            <!-- Start TemplateTrip 2 product slide code -->
                          </li>
                        </ul>
                      </li>
                    </ul>

                    <!-- End TemplateTrip 2 product slide code -->
                    <!-- Start TemplateTrip 2 product slide code -->
                    <ul>
                      <li class="new">
                        <ul>
                          <li>
                            <!-- End TemplateTrip 2 product slide code -->

                            <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="13"
                                data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/13-brown-bear-vector-graphics.html"
                                      class="thumbnail product-thumbnail">
                                      <img class="ttproduct-img1"
                                        src="/products/96-home_default/brown-bear-vector-graphics.jpg"
                                        alt="Blended Smoothie cocktail"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/96-large_default/brown-bear-vector-graphics.jpg"
                                        width="290" height="290" />
                                      <img class="fade second_image img-responsive"
                                        src="/products/97-home_default/brown-bear-vector-graphics.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/97-large_default/brown-bear-vector-graphics.jpg"
                                        alt="" width="300" height="390" />
                                    </a>

                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                    <ul class="product-flags">
                                      <li class="new">New</li>
                                    </ul>

                                    <div class="wishlist">
                                      <a class="addToWishlist btn btn-primary wishlistProd_13" href="#"
                                        data-dismiss="modal" data-rel="13" title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '13', '0', 1); return false;">
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
                                                <input type="number" name="id_product" value="13"
                                                  class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0"
                                                  class="product_customization_id" />
                                                <input type="hidden" name="token"
                                                  value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group"
                                                  value="1" min="1" />
                                              </div>
                                              <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart" title="Add to cart">
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a class="add_to_compare btn btn-primary" href="#" data-id-product="13"
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

                                          <meta itemprop="itemReviewed" content="Blended Smoothie cocktail" />
                                          <span class="reviewCount" itemprop="reviewCount">1</span>
                                        </div>
                                      </div>

                                      <span class="h3 product-title" itemprop="name"><a
                                          href="home/13-brown-bear-vector-graphics.html">Blended Smoothie
                                          cocktail</a></span>

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                        Lorem Ipsum has...
                                      </div>

                                      <div class="product-price-and-shipping">
                                        <span itemprop="price" class="price">$9.00</span>

                                        <span class="sr-only">Price</span>
                                      </div>

                                      <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                    </div>
                                  </div>
                                </div>
                              </article>
                            </div>
                            <!-- Start TemplateTrip 2 product slide code -->

                            <!-- End TemplateTrip 2 product slide code -->
                            <!-- Start TemplateTrip 2 product slide code -->
                            <!-- End TemplateTrip 2 product slide code -->

                            <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="12"
                                data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="treats/12-mountain-fox-vector-graphics.html"
                                      class="thumbnail product-thumbnail">
                                      <img class="ttproduct-img1"
                                        src="/products/90-home_default/mountain-fox-vector-graphics.jpg"
                                        alt="Green Thumb Juice"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/90-large_default/mountain-fox-vector-graphics.jpg"
                                        width="290" height="290" />
                                      <img class="fade second_image img-responsive"
                                        src="/products/91-home_default/mountain-fox-vector-graphics.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/91-large_default/mountain-fox-vector-graphics.jpg"
                                        alt="" width="300" height="390" />
                                    </a>

                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                    <ul class="product-flags">
                                      <li class="new">New</li>
                                    </ul>

                                    <div class="wishlist">
                                      <a class="addToWishlist btn btn-primary wishlistProd_12" href="#"
                                        data-dismiss="modal" data-rel="12" title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '12', '0', 1); return false;">
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
                                                <input type="number" name="id_product" value="12"
                                                  class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0"
                                                  class="product_customization_id" />
                                                <input type="hidden" name="token"
                                                  value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group"
                                                  value="1" min="1" />
                                              </div>
                                              <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart" title="Add to cart">
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a class="add_to_compare btn btn-primary" href="#" data-id-product="12"
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

                                          <meta itemprop="itemReviewed" content="Green Thumb Juice" />
                                          <span class="reviewCount" itemprop="reviewCount">1</span>
                                        </div>
                                      </div>

                                      <span class="h3 product-title" itemprop="name"><a
                                          href="treats/12-mountain-fox-vector-graphics.html">Green Thumb
                                          Juice</a></span>

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry.
                                        Lorem Ipsum has...
                                      </div>

                                      <div class="product-price-and-shipping">
                                        <span itemprop="price" class="price">$9.00</span>

                                        <span class="sr-only">Price</span>
                                      </div>

                                      <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                    </div>
                                  </div>
                                </div>
                              </article>
                            </div>
                            <!-- Start TemplateTrip 2 product slide code -->

                            <!-- End TemplateTrip 2 product slide code -->
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                  <a class="all-product-link float-xs-left float-md-right h4" href="new-products.html">
                    All new products<i class="material-icons">&#xE315;</i>
                  </a>
                </div>
              </section>
            </div>

            <div id="content-wrapper" class="left-column col-xs-12 col-sm-8 col-md-9">
              <section id="main">
                <h2 id="js-product-list-header" class="h2 tt-innerpagetitle">New products</h2>

                <section id="products">
                  <div>
                    <div id="js-product-list-top" class="products-selection">
                      <div class="col-md-6 hidden-sm-down total-products">
                        <!-- Grid-List Buttons -->
                        <div class="grid-list col-md-2">
                          <span id="ttgrid" class="active"></span>
                          <span id="ttlist"></span>
                        </div>

                        <p>There are 19 products.</p>
                      </div>
                      <div class="col-md-6">
                        <div class="row sort-by-row">
                          <span class="col-sm-3 col-md-3 hidden-sm-down sort-by">Sort by:</span>
                          <div class="col-sm-12 col-xs-12 col-md-9 products-sort-order dropdown">
                            <button class="btn-unstyle select-title" rel="nofollow" data-toggle="dropdown"
                              aria-haspopup="true" aria-expanded="false">
                              Date added, newest to oldest
                              <i class="material-icons float-xs-right">&#xE5C5;</i>
                            </button>
                            <div class="dropdown-menu">
                              <a rel="nofollow" href="new-products22e4.html?order=product.date_add.desc"
                                class="select-list current js-search-link">
                                Date added, newest to oldest
                              </a>
                              <a rel="nofollow" href="new-products08a3.html?order=product.date_add.asc"
                                class="select-list js-search-link">
                                Date added, oldest to newest
                              </a>
                              <a rel="nofollow" href="new-productsfe2d.html?order=product.name.asc"
                                class="select-list js-search-link">
                                Name, A to Z
                              </a>
                              <a rel="nofollow" href="new-products0279.html?order=product.name.desc"
                                class="select-list js-search-link">
                                Name, Z to A
                              </a>
                              <a rel="nofollow" href="new-products8eb3.html?order=product.price.asc"
                                class="select-list js-search-link">
                                Price, low to high
                              </a>
                              <a rel="nofollow" href="new-products04e6.html?order=product.price.desc"
                                class="select-list js-search-link">
                                Price, high to low
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-12 hidden-md-up text-sm-center showing">Showing 1-12 of 19 item(s)</div>
                    </div>
                  </div>

                  <div class="hidden-sm-down"></div>

                  <div>
                    <div id="js-product-list">
                      <div class="products product-thumbs row">
                        <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="19"
                            data-id-product-attribute="0">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/19-customizable-mug.html" class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1" src="/products/132-home_default/customizable-mug.jpg"
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
                                  <a class="addToWishlist btn btn-primary wishlistProd_19" href="#" data-dismiss="modal"
                                    data-rel="19" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '19', '0', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="19"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
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
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
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
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="18"
                            data-id-product-attribute="36">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/18-hummingbird-notebook.html" class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1" src="/products/126-home_default/hummingbird-notebook.jpg"
                                    alt="Tequila and Grapefruit Juice"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/126-large_default/hummingbird-notebook.jpg"
                                    width="290" height="290" />
                                  <img class="fade second_image img-responsive"
                                    src="/products/127-home_default/hummingbird-notebook.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/127-large_default/hummingbird-notebook.jpg"
                                    alt="" width="300" height="390" />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a class="addToWishlist btn btn-primary wishlistProd_18" href="#" data-dismiss="modal"
                                    data-rel="18" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '18', '36', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="18"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart" title="Add to cart">
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a class="add_to_compare btn btn-primary" href="#" data-id-product="18"
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

                                      <meta itemprop="itemReviewed" content="Tequila and Grapefruit Juice" />
                                      <span class="reviewCount" itemprop="reviewCount">0</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"><a
                                      href="home/18-hummingbird-notebook.html">Tequila and Grapefruit...</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$12.90</span>

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
                                  <img class="ttproduct-img1" src="/products/120-home_default/brown-bear-notebook.jpg"
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
                                  <a class="addToWishlist btn btn-primary wishlistProd_17" href="#" data-dismiss="modal"
                                    data-rel="17" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '17', '0', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="17"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
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
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
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

                        <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="16"
                            data-id-product-attribute="28">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/16-mountain-fox-notebook.html" class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1" src="/products/114-home_default/mountain-fox-notebook.jpg"
                                    alt="Vodka Cranberry drink"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/114-large_default/mountain-fox-notebook.jpg"
                                    width="290" height="290" />
                                  <img class="fade second_image img-responsive"
                                    src="/products/115-home_default/mountain-fox-notebook.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/115-large_default/mountain-fox-notebook.jpg"
                                    alt="" width="300" height="390" />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a class="addToWishlist btn btn-primary wishlistProd_16" href="#" data-dismiss="modal"
                                    data-rel="16" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '16', '28', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="16"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart" title="Add to cart">
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a class="add_to_compare btn btn-primary" href="#" data-id-product="16"
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

                                      <meta itemprop="itemReviewed" content="Vodka Cranberry drink" />
                                      <span class="reviewCount" itemprop="reviewCount">1</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"><a
                                      href="home/16-mountain-fox-notebook.html">Vodka Cranberry drink</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$12.90</span>

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                </div>
                              </div>
                            </div>
                          </article>
                        </div>

                        <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="15"
                            data-id-product-attribute="0">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/15-pack-mug-framed-poster.html" class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1"
                                    src="/products/108-home_default/pack-mug-framed-poster.jpg"
                                    alt="Easy Ganga Jamuna Juice"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/108-large_default/pack-mug-framed-poster.jpg"
                                    width="290" height="290" />
                                  <img class="fade second_image img-responsive"
                                    src="/products/109-home_default/pack-mug-framed-poster.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/109-large_default/pack-mug-framed-poster.jpg"
                                    alt="" width="300" height="390" />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                  <li class="pack">Pack</li>
                                </ul>

                                <div class="wishlist">
                                  <a class="addToWishlist btn btn-primary wishlistProd_15" href="#" data-dismiss="modal"
                                    data-rel="15" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '15', '0', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="15"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart" title="Add to cart">
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a class="add_to_compare btn btn-primary" href="#" data-id-product="15"
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

                                      <meta itemprop="itemReviewed" content="Easy Ganga Jamuna Juice" />
                                      <span class="reviewCount" itemprop="reviewCount">0</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"><a
                                      href="home/15-pack-mug-framed-poster.html">Easy Ganga Jamuna Juice</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$35.00</span>

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
                                  <a class="addToWishlist btn btn-primary wishlistProd_14" href="#" data-dismiss="modal"
                                    data-rel="14" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '14', '0', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="14"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
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
                                      href="treats/14-hummingbird-vector-graphics.html">Screwdriver Cocktail</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
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
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="13"
                            data-id-product-attribute="0">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/13-brown-bear-vector-graphics.html" class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1"
                                    src="/products/96-home_default/brown-bear-vector-graphics.jpg"
                                    alt="Blended Smoothie cocktail"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/96-large_default/brown-bear-vector-graphics.jpg"
                                    width="290" height="290" />
                                  <img class="fade second_image img-responsive"
                                    src="/products/97-home_default/brown-bear-vector-graphics.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/97-large_default/brown-bear-vector-graphics.jpg"
                                    alt="" width="300" height="390" />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a class="addToWishlist btn btn-primary wishlistProd_13" href="#" data-dismiss="modal"
                                    data-rel="13" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '13', '0', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="13"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart" title="Add to cart">
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a class="add_to_compare btn btn-primary" href="#" data-id-product="13"
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

                                      <meta itemprop="itemReviewed" content="Blended Smoothie cocktail" />
                                      <span class="reviewCount" itemprop="reviewCount">1</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"><a
                                      href="home/13-brown-bear-vector-graphics.html">Blended Smoothie
                                      cocktail</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$9.00</span>

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                </div>
                              </div>
                            </div>
                          </article>
                        </div>

                        <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="12"
                            data-id-product-attribute="0">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="treats/12-mountain-fox-vector-graphics.html"
                                  class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1"
                                    src="/products/90-home_default/mountain-fox-vector-graphics.jpg"
                                    alt="Green Thumb Juice"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/90-large_default/mountain-fox-vector-graphics.jpg"
                                    width="290" height="290" />
                                  <img class="fade second_image img-responsive"
                                    src="/products/91-home_default/mountain-fox-vector-graphics.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/91-large_default/mountain-fox-vector-graphics.jpg"
                                    alt="" width="300" height="390" />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a class="addToWishlist btn btn-primary wishlistProd_12" href="#" data-dismiss="modal"
                                    data-rel="12" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '12', '0', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="12"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart" title="Add to cart">
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a class="add_to_compare btn btn-primary" href="#" data-id-product="12"
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

                                      <meta itemprop="itemReviewed" content="Green Thumb Juice" />
                                      <span class="reviewCount" itemprop="reviewCount">1</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"><a
                                      href="treats/12-mountain-fox-vector-graphics.html">Green Thumb Juice</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$9.00</span>

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div class="highlighted-informations no-variants hidden-sm-down"></div>
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
                                  <img class="ttproduct-img1" src="/products/84-home_default/hummingbird-cushion.jpg"
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
                                  <a class="addToWishlist btn btn-primary wishlistProd_11" href="#" data-dismiss="modal"
                                    data-rel="11" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '11', '26', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="11"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
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
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
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
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="10"
                            data-id-product-attribute="24">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/10-brown-bear-cushion.html" class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1" src="/products/78-home_default/brown-bear-cushion.jpg"
                                    alt="Tropic Juice Bar Deli"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/78-large_default/brown-bear-cushion.jpg"
                                    width="290" height="290" />
                                  <img class="fade second_image img-responsive"
                                    src="/products/79-home_default/brown-bear-cushion.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/79-large_default/brown-bear-cushion.jpg"
                                    alt="" width="300" height="390" />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a class="addToWishlist btn btn-primary wishlistProd_10" href="#" data-dismiss="modal"
                                    data-rel="10" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '10', '24', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="10"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart" title="Add to cart">
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a class="add_to_compare btn btn-primary" href="#" data-id-product="10"
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

                                      <meta itemprop="itemReviewed" content="Tropic Juice Bar Deli" />
                                      <span class="reviewCount" itemprop="reviewCount">1</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"><a
                                      href="home/10-brown-bear-cushion.html">Tropic Juice Bar Deli</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$18.90</span>

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div class="highlighted-informations hidden-sm-down">
                                    <div class="variant-links">
                                      <a href="home/10-24-brown-bear-cushion.html#/8-color-white" class="color"
                                        title="White" style="background-color: #ffffff"><span
                                          class="sr-only">White</span></a>
                                      <a href="home/10-25-brown-bear-cushion.html#/11-color-black" class="color"
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
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="9"
                            data-id-product-attribute="22">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/9-mountain-fox-cushion.html" class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1" src="/products/72-home_default/mountain-fox-cushion.jpg"
                                    alt="Three Star Juice"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/72-large_default/mountain-fox-cushion.jpg"
                                    width="290" height="290" />
                                  <img class="fade second_image img-responsive"
                                    src="/products/73-home_default/mountain-fox-cushion.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/73-large_default/mountain-fox-cushion.jpg"
                                    alt="" width="300" height="390" />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a class="addToWishlist btn btn-primary wishlistProd_9" href="#" data-dismiss="modal"
                                    data-rel="9" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '9', '22', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="9"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart" title="Add to cart">
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a class="add_to_compare btn btn-primary" href="#" data-id-product="9"
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

                                      <meta itemprop="itemReviewed" content="Three Star Juice" />
                                      <span class="reviewCount" itemprop="reviewCount">0</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"><a
                                      href="home/9-mountain-fox-cushion.html">Three Star Juice</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$18.90</span>

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div class="highlighted-informations hidden-sm-down">
                                    <div class="variant-links">
                                      <a href="home/9-22-mountain-fox-cushion.html#/8-color-white" class="color"
                                        title="White" style="background-color: #ffffff"><span
                                          class="sr-only">White</span></a>
                                      <a href="home/9-23-mountain-fox-cushion.html#/11-color-black" class="color"
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
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="8"
                            data-id-product-attribute="0">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/8-mug-today-is-a-good-day.html" class="thumbnail product-thumbnail">
                                  <img class="ttproduct-img1"
                                    src="/products/66-home_default/mug-today-is-a-good-day.jpg"
                                    alt="Veggies Natural Juice"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/66-large_default/mug-today-is-a-good-day.jpg"
                                    width="290" height="290" />
                                  <img class="fade second_image img-responsive"
                                    src="/products/67-home_default/mug-today-is-a-good-day.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/67-large_default/mug-today-is-a-good-day.jpg"
                                    alt="" width="300" height="390" />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a class="addToWishlist btn btn-primary wishlistProd_8" href="#" data-dismiss="modal"
                                    data-rel="8" title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '8', '0', 1); return false;">
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
                                        <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post" class="add-to-cart-or-refresh">
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="8"
                                              class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0"
                                              class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55"
                                              class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group"
                                              value="1" min="1" />
                                          </div>
                                          <button class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart" title="Add to cart">
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a class="add_to_compare btn btn-primary" href="#" data-id-product="8"
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

                                      <meta itemprop="itemReviewed" content="Veggies Natural Juice" />
                                      <span class="reviewCount" itemprop="reviewCount">0</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"><a
                                      href="home/8-mug-today-is-a-good-day.html">Veggies Natural Juice</a></span>

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem
                                    Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$11.90</span>

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div class="highlighted-informations no-variants hidden-sm-down"></div>
                                </div>
                              </div>
                            </div>
                          </article>
                        </div>
                      </div>

                      <nav class="pagination">
                        <div class="col-md-4 pagination-left">Showing 1-12 of 19 item(s)</div>

                        <div class="col-md-6 pr-0 pagination-right">
                          <ul class="page-list clearfix text-sm-center">
                            <li class="current">
                              <a rel="nofollow" href="new-products.html" class="disabled js-search-link"> 1 </a>
                            </li>

                            <li>
                              <a rel="nofollow" href="new-products4658.html?page=2" class="js-search-link"> 2 </a>
                            </li>

                            <li>
                              <a rel="next" href="new-products4658.html?page=2" class="next js-search-link">
                                <i class="material-icons">&#xE315;</i>Next
                              </a>
                            </li>
                          </ul>
                        </div>
                      </nav>

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
        <%@include file="/components/footer.jsp" %>
      </div>
    </main>

    <script src="/js/bottom-8d0d2558.js"></script>
</body>

</html>