<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="/components/head.jsp" %>
  </head>

  <body
    id="best-sales"
    class="lang-en country-us currency-usd layout-left-column page-best-sales tax-display-disabled"
    itemscope
    itemtype="http://schema.org/WebPage"
  >
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
              <span>Best sellers</span>
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
                    <a class="text-uppercase h6" href="2-home.html">Home</a>
                  </li>
                  <li>
                    <ul class="category-sub-menu">
                      <li data-depth="0">
                        <a href="6-drinks.html">Drinks</a>
                        <div class="navbar-toggler collapse-icons" data-toggle="collapse" data-target="#exCollapsingNavbar6">
                          <i class="material-icons add">&#xE145;</i><i class="material-icons remove">&#xE15B;</i>
                        </div>
                        <div class="collapse" id="exCollapsingNavbar6">
                          <ul class="category-sub-menu">
                            <li data-depth="1">
                              <a class="category-sub-link" href="40-scoops.html">Scoops</a
                              ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar40"
                                ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                              >
                              <div class="collapse" id="exCollapsingNavbar40">
                                <ul class="category-sub-menu">
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="45-vanilla.html">Vanilla</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="46-strawberry.html">Strawberry</a
                                    ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar46"
                                      ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                                    >
                                    <div class="collapse" id="exCollapsingNavbar46">
                                      <ul class="category-sub-menu">
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="80-strawberry-juice.html">Strawberry Juice</a>
                                        </li>
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="81-strawberry-ice.html">Strawberry Ice</a>
                                        </li>
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="82-strawberry-cream.html">Strawberry Cream</a>
                                        </li>
                                      </ul>
                                    </div>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="47-pista.html">Pista</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="48-butter-scotch.html">Butter Scotch</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="49-plain-pista.html">Plain Pista</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="44-premium-tubs.html">Premium Tubs</a
                              ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar44"
                                ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                              >
                              <div class="collapse" id="exCollapsingNavbar44">
                                <ul class="category-sub-menu">
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="65-vanilla-400ml.html">Vanilla 400ml</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="66-choco-chips-400ml.html">Choco Chips 400ml</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="67-tutti-fruitti-400ml.html">Tutti Fruitti 400ml</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="68-pista-400ml.html">Pista 400ml</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="69-strawberry-400ml.html">Strawberry 400ml</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="70-ice-cones.html">Ice Cones</a
                              ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar70"
                                ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                              >
                              <div class="collapse" id="exCollapsingNavbar70">
                                <ul class="category-sub-menu">
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="71-choco-browie.html">Choco Browie</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="72-dark-chocolate.html">Dark Chocolate</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="73-cornetto-chokiss.html">Cornetto Chokiss</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="74-cookies-creams.html">Cookies &amp; Creams</a
                                    ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar74"
                                      ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                                    >
                                    <div class="collapse" id="exCollapsingNavbar74">
                                      <ul class="category-sub-menu">
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="83-cookies.html">Cookies</a>
                                        </li>
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="84-cookies-biscuit.html">Cookies Biscuit</a>
                                        </li>
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="85-corn-cookies.html">Corn Cookies</a>
                                        </li>
                                      </ul>
                                    </div>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="75-avocado-corn.html">Avocado Corn</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </li>
                      <li data-depth="0">
                        <a href="9-treats.html">Treats</a>
                        <div class="navbar-toggler collapse-icons" data-toggle="collapse" data-target="#exCollapsingNavbar9">
                          <i class="material-icons add">&#xE145;</i><i class="material-icons remove">&#xE15B;</i>
                        </div>
                        <div class="collapse" id="exCollapsingNavbar9">
                          <ul class="category-sub-menu">
                            <li data-depth="1">
                              <a class="category-sub-link" href="41-treat-bars.html">Treat Bars</a
                              ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar41"
                                ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                              >
                              <div class="collapse" id="exCollapsingNavbar41">
                                <ul class="category-sub-menu">
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="50--chocobar.html">Chocobar</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="51-mini-chocobar.html">Mini Chocobar</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="52-crunchy-bar.html">Crunchy Bar</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="53-mango-icy.html">Mango Icy</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="54-orange-icy.html">Orange Icy</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="42-treat-novelties.html">Treat Novelties</a
                              ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar42"
                                ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                              >
                              <div class="collapse" id="exCollapsingNavbar42">
                                <ul class="category-sub-menu">
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="55-mango.html">Mango</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="56-rainbow.html">Rainbow</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="57-strawberry.html">Strawberry</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="58-cassata.html">Cassata</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="59--swiss-roll.html">Swiss Roll</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="43-flavours.html">Flavours</a
                              ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar43"
                                ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                              >
                              <div class="collapse" id="exCollapsingNavbar43">
                                <ul class="category-sub-menu">
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="61-badam-roasted.html">Badam Roasted</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="62-kesar-pista.html">Kesar Pista</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="63-choco-treat.html">Choco Treat</a>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="60-butterscotch.html">Butterscotch</a
                                    ><span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar60"
                                      ><i class="material-icons arrow-right">&#xE145;</i><i class="material-icons arrow-down">&#xE15B;</i></span
                                    >
                                    <div class="collapse" id="exCollapsingNavbar60">
                                      <ul class="category-sub-menu">
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="77-buttered-ice.html">Buttered Ice</a>
                                        </li>
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="78-buttery-cream.html">Buttery Cream</a>
                                        </li>
                                        <li data-depth="3">
                                          <a class="category-sub-link" href="79-buttered-berry.html">Buttered Berry</a>
                                        </li>
                                      </ul>
                                    </div>
                                  </li>
                                  <li data-depth="2">
                                    <a class="category-sub-link" href="64-vanilla-mini.html">Vanilla Mini</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </li>
                      <li data-depth="0">
                        <a href="10-ice-cream.html">Ice Cream</a>
                        <div class="navbar-toggler collapse-icons" data-toggle="collapse" data-target="#exCollapsingNavbar10">
                          <i class="material-icons add">&#xE145;</i><i class="material-icons remove">&#xE15B;</i>
                        </div>
                        <div class="collapse" id="exCollapsingNavbar10">
                          <ul class="category-sub-menu">
                            <li data-depth="1">
                              <a class="category-sub-link" href="14-mint-chocolate.html">Mint Chocolate</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="15-buttered-pecan.html">Buttered Pecan</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="16-strawberry.html">Strawberry</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="17-vanilla.html">Vanilla</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="18-baskin-robbins.html">Baskin Robbins</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="19-jeni-s-splendid.html">Jeni&#039;s Splendid</a>
                            </li>
                          </ul>
                        </div>
                      </li>
                      <li data-depth="0">
                        <a href="11-ice-drink.html">Ice Drink</a>
                        <div class="navbar-toggler collapse-icons" data-toggle="collapse" data-target="#exCollapsingNavbar11">
                          <i class="material-icons add">&#xE145;</i><i class="material-icons remove">&#xE15B;</i>
                        </div>
                        <div class="collapse" id="exCollapsingNavbar11">
                          <ul class="category-sub-menu">
                            <li data-depth="1">
                              <a class="category-sub-link" href="20-black-raspberry.html">Black Raspberry</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="21-strawberry-lemonade.html">Strawberry Lemonade</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="22-grape-raspberry.html">Grape Raspberry</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="23-crisp-apple.html">Crisp Apple</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="24-kiwi-strawberry.html">Kiwi Strawberry</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="25-peach-nectarine.html">Peach Nectarine</a>
                            </li>
                          </ul>
                        </div>
                      </li>
                      <li data-depth="0">
                        <a href="12-ice-juice.html">Ice Juice</a>
                        <div class="navbar-toggler collapse-icons" data-toggle="collapse" data-target="#exCollapsingNavbar12">
                          <i class="material-icons add">&#xE145;</i><i class="material-icons remove">&#xE15B;</i>
                        </div>
                        <div class="collapse" id="exCollapsingNavbar12">
                          <ul class="category-sub-menu">
                            <li data-depth="1">
                              <a class="category-sub-link" href="26-apple-juice.html">Apple Juice.</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="27-cranberry-juice.html">Cranberry Juice</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="29-beet-juice.html">Beet Juice</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="30-cantaloupe-juice.html">Cantaloupe Juice</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="31-grapefruit-juice.html">Grapefruit Juice</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="32-aloe-vera-juice.html">Aloe Vera Juice</a>
                            </li>
                          </ul>
                        </div>
                      </li>
                      <li data-depth="0">
                        <a href="13-ice-pop.html">Ice Pop</a>
                        <div class="navbar-toggler collapse-icons" data-toggle="collapse" data-target="#exCollapsingNavbar13">
                          <i class="material-icons add">&#xE145;</i><i class="material-icons remove">&#xE15B;</i>
                        </div>
                        <div class="collapse" id="exCollapsingNavbar13">
                          <ul class="category-sub-menu">
                            <li data-depth="1">
                              <a class="category-sub-link" href="33-lemon-lime.html">Lemon Lime</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="34-punch-pink.html">Punch Pink</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="35-tropical-tip.html">Tropical Tip</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="36-berry-blue.html">Berry Blue</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="37-strawberry-red.html">Strawberry Red</a>
                            </li>
                            <li data-depth="1">
                              <a class="category-sub-link" href="38-giant-fat-.html">Giant Fat</a>
                            </li>
                          </ul>
                        </div>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="ttleftbanner">
                <a href="http://www.prestashop.com/" title="PrestaShop"
                  ><img src="../modules/ttadvertising/img/advertising-s1.jpg" alt="PrestaShop" title="PrestaShop" width="300" height="500"
                /></a>
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
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="19" data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/19-customizable-mug.html" class="thumbnail product-thumbnail">
                                      <img
                                        class="ttproduct-img1"
                                        src="/products/132-home_default/customizable-mug.jpg"
                                        alt="Cucumber Lemonade Mocktail"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/132-large_default/customizable-mug.jpg"
                                        width="290"
                                        height="290"
                                      />
                                      <img
                                        class="fade second_image img-responsive"
                                        src="/products/133-home_default/customizable-mug.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/133-large_default/customizable-mug.jpg"
                                        alt=""
                                        width="300"
                                        height="390"
                                      />
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
                                      <a
                                        class="addToWishlist btn btn-primary wishlistProd_19"
                                        href="#"
                                        data-dismiss="modal"
                                        data-rel="19"
                                        title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '19', '0', 1); return false;"
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
                                        <div class="quick-view-block">
                                          <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                            <i class="material-icons quick_view_icon">visibility</i>
                                            <span>Quick view</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>

                                        <div class="tt-button-container">
                                          <div class="product-add-to-cart">
                                            <form
                                              action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                              method="post"
                                              class="add-to-cart-or-refresh"
                                            >
                                              <div class="product-quantity" style="display: none">
                                                <input type="number" name="id_product" value="19" class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                              </div>
                                              <button
                                                class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart"
                                                title="Add to cart"
                                              >
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a
                                            class="add_to_compare btn btn-primary"
                                            href="#"
                                            data-id-product="19"
                                            data-dismiss="modal"
                                            title="Add to Compare"
                                          >
                                            <i class="material-icons compare_icon">equalizer</i>
                                            <span>Add to Compare</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>
                                      </div>

                                      <div class="hook-reviews">
                                        <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                      <span class="h3 product-title" itemprop="name"
                                        ><a href="home/19-customizable-mug.html">Cucumber Lemonade...</a></span
                                      >

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="18" data-id-product-attribute="36">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/18-hummingbird-notebook.html" class="thumbnail product-thumbnail">
                                      <img
                                        class="ttproduct-img1"
                                        src="/products/126-home_default/hummingbird-notebook.jpg"
                                        alt="Tequila and Grapefruit Juice"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/126-large_default/hummingbird-notebook.jpg"
                                        width="290"
                                        height="290"
                                      />
                                      <img
                                        class="fade second_image img-responsive"
                                        src="/products/127-home_default/hummingbird-notebook.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/127-large_default/hummingbird-notebook.jpg"
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
                                        class="addToWishlist btn btn-primary wishlistProd_18"
                                        href="#"
                                        data-dismiss="modal"
                                        data-rel="18"
                                        title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '18', '36', 1); return false;"
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
                                        <div class="quick-view-block">
                                          <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                            <i class="material-icons quick_view_icon">visibility</i>
                                            <span>Quick view</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>

                                        <div class="tt-button-container">
                                          <div class="product-add-to-cart">
                                            <form
                                              action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                              method="post"
                                              class="add-to-cart-or-refresh"
                                            >
                                              <div class="product-quantity" style="display: none">
                                                <input type="number" name="id_product" value="18" class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                              </div>
                                              <button
                                                class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart"
                                                title="Add to cart"
                                              >
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a
                                            class="add_to_compare btn btn-primary"
                                            href="#"
                                            data-id-product="18"
                                            data-dismiss="modal"
                                            title="Add to Compare"
                                          >
                                            <i class="material-icons compare_icon">equalizer</i>
                                            <span>Add to Compare</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
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

                                          <meta itemprop="itemReviewed" content="Tequila and Grapefruit Juice" />
                                          <span class="reviewCount" itemprop="reviewCount">0</span>
                                        </div>
                                      </div>

                                      <span class="h3 product-title" itemprop="name"
                                        ><a href="home/18-hummingbird-notebook.html">Tequila and Grapefruit...</a></span
                                      >

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="17" data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/17-brown-bear-notebook.html" class="thumbnail product-thumbnail">
                                      <img
                                        class="ttproduct-img1"
                                        src="/products/120-home_default/brown-bear-notebook.jpg"
                                        alt="Malibu &amp; Orange Juice"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/120-large_default/brown-bear-notebook.jpg"
                                        width="290"
                                        height="290"
                                      />
                                      <img
                                        class="fade second_image img-responsive"
                                        src="/products/121-home_default/brown-bear-notebook.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/121-large_default/brown-bear-notebook.jpg"
                                        alt=""
                                        width="300"
                                        height="390"
                                      />
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
                                      <a
                                        class="addToWishlist btn btn-primary wishlistProd_17"
                                        href="#"
                                        data-dismiss="modal"
                                        data-rel="17"
                                        title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '17', '0', 1); return false;"
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
                                        <div class="quick-view-block">
                                          <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                            <i class="material-icons quick_view_icon">visibility</i>
                                            <span>Quick view</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>

                                        <div class="tt-button-container">
                                          <div class="product-add-to-cart">
                                            <form
                                              action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                              method="post"
                                              class="add-to-cart-or-refresh"
                                            >
                                              <div class="product-quantity" style="display: none">
                                                <input type="number" name="id_product" value="17" class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                              </div>
                                              <button
                                                class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart"
                                                title="Add to cart"
                                              >
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a
                                            class="add_to_compare btn btn-primary"
                                            href="#"
                                            data-id-product="17"
                                            data-dismiss="modal"
                                            title="Add to Compare"
                                          >
                                            <i class="material-icons compare_icon">equalizer</i>
                                            <span>Add to Compare</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>
                                      </div>

                                      <div class="hook-reviews">
                                        <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                      <span class="h3 product-title" itemprop="name"
                                        ><a href="home/17-brown-bear-notebook.html">Malibu &amp; Orange Juice</a></span
                                      >

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="16" data-id-product-attribute="28">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/16-mountain-fox-notebook.html" class="thumbnail product-thumbnail">
                                      <img
                                        class="ttproduct-img1"
                                        src="/products/114-home_default/mountain-fox-notebook.jpg"
                                        alt="Vodka Cranberry drink"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/114-large_default/mountain-fox-notebook.jpg"
                                        width="290"
                                        height="290"
                                      />
                                      <img
                                        class="fade second_image img-responsive"
                                        src="/products/115-home_default/mountain-fox-notebook.jpg"
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
                                          <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                            <i class="material-icons quick_view_icon">visibility</i>
                                            <span>Quick view</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>

                                        <div class="tt-button-container">
                                          <div class="product-add-to-cart">
                                            <form
                                              action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                              method="post"
                                              class="add-to-cart-or-refresh"
                                            >
                                              <div class="product-quantity" style="display: none">
                                                <input type="number" name="id_product" value="16" class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                              </div>
                                              <button
                                                class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart"
                                                title="Add to cart"
                                              >
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
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
                                            <i class="material-icons compare_icon">equalizer</i>
                                            <span>Add to Compare</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>
                                      </div>

                                      <div class="hook-reviews">
                                        <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                      <span class="h3 product-title" itemprop="name"
                                        ><a href="home/16-mountain-fox-notebook.html">Vodka Cranberry drink</a></span
                                      >

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="15" data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/15-pack-mug-framed-poster.html" class="thumbnail product-thumbnail">
                                      <img
                                        class="ttproduct-img1"
                                        src="/products/108-home_default/pack-mug-framed-poster.jpg"
                                        alt="Easy Ganga Jamuna Juice"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/108-large_default/pack-mug-framed-poster.jpg"
                                        width="290"
                                        height="290"
                                      />
                                      <img
                                        class="fade second_image img-responsive"
                                        src="/products/109-home_default/pack-mug-framed-poster.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/109-large_default/pack-mug-framed-poster.jpg"
                                        alt=""
                                        width="300"
                                        height="390"
                                      />
                                    </a>

                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                    <ul class="product-flags">
                                      <li class="new">New</li>
                                      <li class="pack">Pack</li>
                                    </ul>

                                    <div class="wishlist">
                                      <a
                                        class="addToWishlist btn btn-primary wishlistProd_15"
                                        href="#"
                                        data-dismiss="modal"
                                        data-rel="15"
                                        title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '15', '0', 1); return false;"
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
                                        <div class="quick-view-block">
                                          <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                            <i class="material-icons quick_view_icon">visibility</i>
                                            <span>Quick view</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>

                                        <div class="tt-button-container">
                                          <div class="product-add-to-cart">
                                            <form
                                              action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                              method="post"
                                              class="add-to-cart-or-refresh"
                                            >
                                              <div class="product-quantity" style="display: none">
                                                <input type="number" name="id_product" value="15" class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                              </div>
                                              <button
                                                class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart"
                                                title="Add to cart"
                                              >
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a
                                            class="add_to_compare btn btn-primary"
                                            href="#"
                                            data-id-product="15"
                                            data-dismiss="modal"
                                            title="Add to Compare"
                                          >
                                            <i class="material-icons compare_icon">equalizer</i>
                                            <span>Add to Compare</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
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

                                          <meta itemprop="itemReviewed" content="Easy Ganga Jamuna Juice" />
                                          <span class="reviewCount" itemprop="reviewCount">0</span>
                                        </div>
                                      </div>

                                      <span class="h3 product-title" itemprop="name"
                                        ><a href="home/15-pack-mug-framed-poster.html">Easy Ganga Jamuna Juice</a></span
                                      >

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="14" data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="treats/14-hummingbird-vector-graphics.html" class="thumbnail product-thumbnail">
                                      <img
                                        class="ttproduct-img1"
                                        src="/products/102-home_default/hummingbird-vector-graphics.jpg"
                                        alt="Screwdriver Cocktail"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/102-large_default/hummingbird-vector-graphics.jpg"
                                        width="290"
                                        height="290"
                                      />
                                      <img
                                        class="fade second_image img-responsive"
                                        src="/products/103-home_default/hummingbird-vector-graphics.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/103-large_default/hummingbird-vector-graphics.jpg"
                                        alt=""
                                        width="300"
                                        height="390"
                                      />
                                    </a>

                                    <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                    <ul class="product-flags">
                                      <li class="online-only">Online only</li>
                                      <li class="on-sale">On sale!</li>
                                      <li class="discount">-$5.00</li>
                                      <li class="new">New</li>
                                    </ul>

                                    <div class="wishlist">
                                      <a
                                        class="addToWishlist btn btn-primary wishlistProd_14"
                                        href="#"
                                        data-dismiss="modal"
                                        data-rel="14"
                                        title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '14', '0', 1); return false;"
                                      >
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
                                          <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                            <i class="material-icons quick_view_icon">visibility</i>
                                            <span>Quick view</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>

                                        <div class="tt-button-container">
                                          <div class="product-add-to-cart">
                                            <form
                                              action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                              method="post"
                                              class="add-to-cart-or-refresh"
                                            >
                                              <div class="product-quantity" style="display: none">
                                                <input type="number" name="id_product" value="14" class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                              </div>
                                              <button
                                                class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart"
                                                title="Add to cart"
                                              >
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a
                                            class="add_to_compare btn btn-primary"
                                            href="#"
                                            data-id-product="14"
                                            data-dismiss="modal"
                                            title="Add to Compare"
                                          >
                                            <i class="material-icons compare_icon">equalizer</i>
                                            <span>Add to Compare</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>
                                      </div>

                                      <div class="hook-reviews">
                                        <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                      <span class="h3 product-title" itemprop="name"
                                        ><a href="treats/14-hummingbird-vector-graphics.html">Screwdriver Cocktail</a></span
                                      >

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="13" data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="home/13-brown-bear-vector-graphics.html" class="thumbnail product-thumbnail">
                                      <img
                                        class="ttproduct-img1"
                                        src="/products/96-home_default/brown-bear-vector-graphics.jpg"
                                        alt="Blended Smoothie cocktail"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/96-large_default/brown-bear-vector-graphics.jpg"
                                        width="290"
                                        height="290"
                                      />
                                      <img
                                        class="fade second_image img-responsive"
                                        src="/products/97-home_default/brown-bear-vector-graphics.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/97-large_default/brown-bear-vector-graphics.jpg"
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
                                        class="addToWishlist btn btn-primary wishlistProd_13"
                                        href="#"
                                        data-dismiss="modal"
                                        data-rel="13"
                                        title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '13', '0', 1); return false;"
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
                                        <div class="quick-view-block">
                                          <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                            <i class="material-icons quick_view_icon">visibility</i>
                                            <span>Quick view</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>

                                        <div class="tt-button-container">
                                          <div class="product-add-to-cart">
                                            <form
                                              action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                              method="post"
                                              class="add-to-cart-or-refresh"
                                            >
                                              <div class="product-quantity" style="display: none">
                                                <input type="number" name="id_product" value="13" class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                              </div>
                                              <button
                                                class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart"
                                                title="Add to cart"
                                              >
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a
                                            class="add_to_compare btn btn-primary"
                                            href="#"
                                            data-id-product="13"
                                            data-dismiss="modal"
                                            title="Add to Compare"
                                          >
                                            <i class="material-icons compare_icon">equalizer</i>
                                            <span>Add to Compare</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>
                                      </div>

                                      <div class="hook-reviews">
                                        <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                      <span class="h3 product-title" itemprop="name"
                                        ><a href="home/13-brown-bear-vector-graphics.html">Blended Smoothie cocktail</a></span
                                      >

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                              <article class="product-miniature js-product-miniature col-sm-4" data-id-product="12" data-id-product-attribute="0">
                                <div class="thumbnail-container">
                                  <div class="ttproduct-image">
                                    <a href="treats/12-mountain-fox-vector-graphics.html" class="thumbnail product-thumbnail">
                                      <img
                                        class="ttproduct-img1"
                                        src="/products/90-home_default/mountain-fox-vector-graphics.jpg"
                                        alt="Green Thumb Juice"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/90-large_default/mountain-fox-vector-graphics.jpg"
                                        width="290"
                                        height="290"
                                      />
                                      <img
                                        class="fade second_image img-responsive"
                                        src="/products/91-home_default/mountain-fox-vector-graphics.jpg"
                                        data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/91-large_default/mountain-fox-vector-graphics.jpg"
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
                                        class="addToWishlist btn btn-primary wishlistProd_12"
                                        href="#"
                                        data-dismiss="modal"
                                        data-rel="12"
                                        title="Add to wishlist"
                                        onclick="WishlistCart('wishlist_block_list', 'add', '12', '0', 1); return false;"
                                      >
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
                                          <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                            <i class="material-icons quick_view_icon">visibility</i>
                                            <span>Quick view</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>

                                        <div class="tt-button-container">
                                          <div class="product-add-to-cart">
                                            <form
                                              action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                              method="post"
                                              class="add-to-cart-or-refresh"
                                            >
                                              <div class="product-quantity" style="display: none">
                                                <input type="number" name="id_product" value="12" class="product_page_product_id" />
                                                <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                                <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                                <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                              </div>
                                              <button
                                                class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                                data-button-action="add-to-cart"
                                                title="Add to cart"
                                              >
                                                <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                                <span class="loading"><i class="material-icons">cached</i></span>
                                                <span>Add to cart</span>
                                              </button>
                                            </form>
                                          </div>
                                        </div>
                                        <div class="compare">
                                          <a
                                            class="add_to_compare btn btn-primary"
                                            href="#"
                                            data-id-product="12"
                                            data-dismiss="modal"
                                            title="Add to Compare"
                                          >
                                            <i class="material-icons compare_icon">equalizer</i>
                                            <span>Add to Compare</span>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                          </a>
                                        </div>
                                      </div>

                                      <div class="hook-reviews">
                                        <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                      <span class="h3 product-title" itemprop="name"
                                        ><a href="treats/12-mountain-fox-vector-graphics.html">Green Thumb Juice</a></span
                                      >

                                      <div class="product-desc-short" itemprop="description">
                                        Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                <h2 id="js-product-list-header" class="h2 tt-innerpagetitle">Best sellers</h2>

                <section id="products">
                  <div>
                    <div id="js-product-list-top" class="products-selection">
                      <div class="col-md-6 hidden-sm-down total-products">
                        <!-- Grid-List Buttons -->
                        <div class="grid-list col-md-2">
                          <span id="ttgrid" class="active"></span>
                          <span id="ttlist"></span>
                        </div>

                        <p>There are 6 products.</p>
                      </div>
                      <div class="col-md-6">
                        <div class="row sort-by-row">
                          <span class="col-sm-3 col-md-3 hidden-sm-down sort-by">Sort by:</span>
                          <div class="col-sm-12 col-xs-12 col-md-9 products-sort-order dropdown">
                            <button class="btn-unstyle select-title" rel="nofollow" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Sales, highest to lowest
                              <i class="material-icons float-xs-right">&#xE5C5;</i>
                            </button>
                            <div class="dropdown-menu">
                              <a rel="nofollow" href="best-salese563.html?order=product.sales.desc" class="select-list current js-search-link">
                                Sales, highest to lowest
                              </a>
                              <a rel="nofollow" href="best-salesfe2d.html?order=product.name.asc" class="select-list js-search-link">
                                Name, A to Z
                              </a>
                              <a rel="nofollow" href="best-sales0279.html?order=product.name.desc" class="select-list js-search-link">
                                Name, Z to A
                              </a>
                              <a rel="nofollow" href="best-sales8eb3.html?order=product.price.asc" class="select-list js-search-link">
                                Price, low to high
                              </a>
                              <a rel="nofollow" href="best-sales04e6.html?order=product.price.desc" class="select-list js-search-link">
                                Price, high to low
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-12 hidden-md-up text-sm-center showing">Showing 1-6 of 6 item(s)</div>
                    </div>
                  </div>

                  <div class="hidden-sm-down"></div>

                  <div>
                    <div id="js-product-list">
                      <div class="products product-thumbs row">
                        <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="16" data-id-product-attribute="28">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/16-mountain-fox-notebook.html" class="thumbnail product-thumbnail">
                                  <img
                                    class="ttproduct-img1"
                                    src="/products/114-home_default/mountain-fox-notebook.jpg"
                                    alt="Vodka Cranberry drink"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/114-large_default/mountain-fox-notebook.jpg"
                                    width="290"
                                    height="290"
                                  />
                                  <img
                                    class="fade second_image img-responsive"
                                    src="/products/115-home_default/mountain-fox-notebook.jpg"
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
                                      <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                        <i class="material-icons quick_view_icon">visibility</i>
                                        <span>Quick view</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="16" class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
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
                                        <i class="material-icons compare_icon">equalizer</i>
                                        <span>Add to Compare</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>
                                  </div>

                                  <div class="hook-reviews">
                                    <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                  <span class="h3 product-title" itemprop="name"
                                    ><a href="home/16-mountain-fox-notebook.html">Vodka Cranberry drink</a></span
                                  >

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="4" data-id-product-attribute="16">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="treats/4-the-adventure-begins-framed-poster.html" class="thumbnail product-thumbnail">
                                  <img
                                    class="ttproduct-img1"
                                    src="/products/42-home_default/the-adventure-begins-framed-poster.jpg"
                                    alt="Cantaloupe juice &amp; cocktail"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/42-large_default/the-adventure-begins-framed-poster.jpg"
                                    width="290"
                                    height="290"
                                  />
                                  <img
                                    class="fade second_image img-responsive"
                                    src="/products/43-home_default/the-adventure-begins-framed-poster.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/43-large_default/the-adventure-begins-framed-poster.jpg"
                                    alt=""
                                    width="300"
                                    height="390"
                                  />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="online-only">Online only</li>
                                  <li class="on-sale">On sale!</li>
                                  <li class="discount">-$4.00</li>
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a
                                    class="addToWishlist btn btn-primary wishlistProd_4"
                                    href="#"
                                    data-dismiss="modal"
                                    data-rel="4"
                                    title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '4', '16', 1); return false;"
                                  >
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
                                      <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                        <i class="material-icons quick_view_icon">visibility</i>
                                        <span>Quick view</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="4" class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a
                                        class="add_to_compare btn btn-primary"
                                        href="#"
                                        data-id-product="4"
                                        data-dismiss="modal"
                                        title="Add to Compare"
                                      >
                                        <i class="material-icons compare_icon">equalizer</i>
                                        <span>Add to Compare</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>
                                  </div>

                                  <div class="hook-reviews">
                                    <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                  <span class="h3 product-title" itemprop="name"
                                    ><a href="treats/4-the-adventure-begins-framed-poster.html">Cantaloupe juice &amp;...</a></span
                                  >

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...
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
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="10" data-id-product-attribute="24">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/10-brown-bear-cushion.html" class="thumbnail product-thumbnail">
                                  <img
                                    class="ttproduct-img1"
                                    src="/products/78-home_default/brown-bear-cushion.jpg"
                                    alt="Tropic Juice Bar Deli"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/78-large_default/brown-bear-cushion.jpg"
                                    width="290"
                                    height="290"
                                  />
                                  <img
                                    class="fade second_image img-responsive"
                                    src="/products/79-home_default/brown-bear-cushion.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/79-large_default/brown-bear-cushion.jpg"
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
                                    class="addToWishlist btn btn-primary wishlistProd_10"
                                    href="#"
                                    data-dismiss="modal"
                                    data-rel="10"
                                    title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '10', '24', 1); return false;"
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
                                    <div class="quick-view-block">
                                      <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                        <i class="material-icons quick_view_icon">visibility</i>
                                        <span>Quick view</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="10" class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a
                                        class="add_to_compare btn btn-primary"
                                        href="#"
                                        data-id-product="10"
                                        data-dismiss="modal"
                                        title="Add to Compare"
                                      >
                                        <i class="material-icons compare_icon">equalizer</i>
                                        <span>Add to Compare</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>
                                  </div>

                                  <div class="hook-reviews">
                                    <div class="comments_note" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
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

                                  <span class="h3 product-title" itemprop="name"
                                    ><a href="home/10-brown-bear-cushion.html">Tropic Juice Bar Deli</a></span
                                  >

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
                                  </div>

                                  <div class="product-price-and-shipping">
                                    <span itemprop="price" class="price">$18.90</span>

                                    <span class="sr-only">Price</span>
                                  </div>

                                  <div class="highlighted-informations hidden-sm-down">
                                    <div class="variant-links">
                                      <a
                                        href="home/10-24-brown-bear-cushion.html#/8-color-white"
                                        class="color"
                                        title="White"
                                        style="background-color: #ffffff"
                                        ><span class="sr-only">White</span></a
                                      >
                                      <a
                                        href="home/10-25-brown-bear-cushion.html#/11-color-black"
                                        class="color"
                                        title="Black"
                                        style="background-color: #434a54"
                                        ><span class="sr-only">Black</span></a
                                      >
                                      <span class="js-count count"></span>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </article>
                        </div>

                        <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="8" data-id-product-attribute="0">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/8-mug-today-is-a-good-day.html" class="thumbnail product-thumbnail">
                                  <img
                                    class="ttproduct-img1"
                                    src="/products/66-home_default/mug-today-is-a-good-day.jpg"
                                    alt="Veggies Natural Juice"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/66-large_default/mug-today-is-a-good-day.jpg"
                                    width="290"
                                    height="290"
                                  />
                                  <img
                                    class="fade second_image img-responsive"
                                    src="/products/67-home_default/mug-today-is-a-good-day.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/67-large_default/mug-today-is-a-good-day.jpg"
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
                                    class="addToWishlist btn btn-primary wishlistProd_8"
                                    href="#"
                                    data-dismiss="modal"
                                    data-rel="8"
                                    title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '8', '0', 1); return false;"
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
                                    <div class="quick-view-block">
                                      <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                        <i class="material-icons quick_view_icon">visibility</i>
                                        <span>Quick view</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="8" class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a
                                        class="add_to_compare btn btn-primary"
                                        href="#"
                                        data-id-product="8"
                                        data-dismiss="modal"
                                        title="Add to Compare"
                                      >
                                        <i class="material-icons compare_icon">equalizer</i>
                                        <span>Add to Compare</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
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

                                      <meta itemprop="itemReviewed" content="Veggies Natural Juice" />
                                      <span class="reviewCount" itemprop="reviewCount">0</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"
                                    ><a href="home/8-mug-today-is-a-good-day.html">Veggies Natural Juice</a></span
                                  >

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has...
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

                        <div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="2" data-id-product-attribute="9">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/2-brown-bear-printed-sweater.html" class="thumbnail product-thumbnail">
                                  <img
                                    class="ttproduct-img1"
                                    src="/products/30-home_default/brown-bear-printed-sweater.jpg"
                                    alt="Various carbonated flavors"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/30-large_default/brown-bear-printed-sweater.jpg"
                                    width="290"
                                    height="290"
                                  />
                                  <img
                                    class="fade second_image img-responsive"
                                    src="/products/31-home_default/brown-bear-printed-sweater.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/31-large_default/brown-bear-printed-sweater.jpg"
                                    alt=""
                                    width="300"
                                    height="390"
                                  />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="discount">-20%</li>
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a
                                    class="addToWishlist btn btn-primary wishlistProd_2"
                                    href="#"
                                    data-dismiss="modal"
                                    data-rel="2"
                                    title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '2', '9', 1); return false;"
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
                                    <div class="quick-view-block">
                                      <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                        <i class="material-icons quick_view_icon">visibility</i>
                                        <span>Quick view</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="2" class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a
                                        class="add_to_compare btn btn-primary"
                                        href="#"
                                        data-id-product="2"
                                        data-dismiss="modal"
                                        title="Add to Compare"
                                      >
                                        <i class="material-icons compare_icon">equalizer</i>
                                        <span>Add to Compare</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
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

                                      <meta itemprop="itemReviewed" content="Various carbonated flavors" />
                                      <span class="reviewCount" itemprop="reviewCount">0</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"
                                    ><a href="home/2-brown-bear-printed-sweater.html">Various carbonated...</a></span
                                  >

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...
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
                          <article class="product-miniature js-product-miniature col-sm-4" data-id-product="1" data-id-product-attribute="1">
                            <div class="thumbnail-container">
                              <div class="ttproduct-image">
                                <a href="home/1-hummingbird-printed-t-shirt.html" class="thumbnail product-thumbnail">
                                  <img
                                    class="ttproduct-img1"
                                    src="/products/24-home_default/hummingbird-printed-t-shirt.jpg"
                                    alt="Strawberry Daiquiri"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/24-large_default/hummingbird-printed-t-shirt.jpg"
                                    width="290"
                                    height="290"
                                  />
                                  <img
                                    class="fade second_image img-responsive"
                                    src="/products/25-home_default/hummingbird-printed-t-shirt.jpg"
                                    data-full-size-image-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/25-large_default/hummingbird-printed-t-shirt.jpg"
                                    alt=""
                                    width="300"
                                    height="390"
                                  />
                                </a>

                                <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                                <ul class="product-flags">
                                  <li class="online-only">Online only</li>
                                  <li class="on-sale">On sale!</li>
                                  <li class="discount">-20%</li>
                                  <li class="new">New</li>
                                </ul>

                                <div class="wishlist">
                                  <a
                                    class="addToWishlist btn btn-primary wishlistProd_1"
                                    href="#"
                                    data-dismiss="modal"
                                    data-rel="1"
                                    title="Add to wishlist"
                                    onclick="WishlistCart('wishlist_block_list', 'add', '1', '1', 1); return false;"
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
                                    <div class="quick-view-block">
                                      <a href="#" class="quick-view btn btn-primary" data-link-action="quickview" title="Quick view">
                                        <i class="material-icons quick_view_icon">visibility</i>
                                        <span>Quick view</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
                                    </div>

                                    <div class="tt-button-container">
                                      <div class="product-add-to-cart">
                                        <form
                                          action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart"
                                          method="post"
                                          class="add-to-cart-or-refresh"
                                        >
                                          <div class="product-quantity" style="display: none">
                                            <input type="number" name="id_product" value="1" class="product_page_product_id" />
                                            <input type="number" name="id_customization" value="0" class="product_customization_id" />
                                            <input type="hidden" name="token" value="25af647bb2f763e6bdcc079df66ccd55" class="tt-token" />
                                            <input type="number" name="qty" class="quantity_wanted input-group" value="1" min="1" />
                                          </div>
                                          <button
                                            class="button ajax_add_to_cart_button add-to-cart btn btn-default"
                                            data-button-action="add-to-cart"
                                            title="Add to cart"
                                          >
                                            <i class="material-icons add_to_cart_icon">shopping_cart</i>
                                            <span class="loading"><i class="material-icons">cached</i></span>
                                            <span>Add to cart</span>
                                          </button>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="compare">
                                      <a
                                        class="add_to_compare btn btn-primary"
                                        href="#"
                                        data-id-product="1"
                                        data-dismiss="modal"
                                        title="Add to Compare"
                                      >
                                        <i class="material-icons compare_icon">equalizer</i>
                                        <span>Add to Compare</span>
                                        <span class="loading"><i class="material-icons">cached</i></span>
                                      </a>
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

                                      <meta itemprop="itemReviewed" content="Strawberry Daiquiri" />
                                      <span class="reviewCount" itemprop="reviewCount">0</span>
                                    </div>
                                  </div>

                                  <span class="h3 product-title" itemprop="name"
                                    ><a href="home/1-hummingbird-printed-t-shirt.html">Strawberry Daiquiri</a></span
                                  >

                                  <div class="product-desc-short" itemprop="description">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...
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
                                      <a
                                        href="home/1-1-hummingbird-printed-t-shirt.html#/1-size-s/8-color-white"
                                        class="color"
                                        title="White"
                                        style="background-color: #ffffff"
                                        ><span class="sr-only">White</span></a
                                      >
                                      <a
                                        href="home/1-2-hummingbird-printed-t-shirt.html#/1-size-s/11-color-black"
                                        class="color"
                                        title="Black"
                                        style="background-color: #434a54"
                                        ><span class="sr-only">Black</span></a
                                      >
                                      <span class="js-count count"></span>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </article>
                        </div>
                      </div>

                      <nav class="pagination">
                        <div class="col-md-4 pagination-left">Showing 1-6 of 6 item(s)</div>

                        <div class="col-md-6 pr-0 pagination-right"></div>
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
