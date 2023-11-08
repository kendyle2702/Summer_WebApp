<%@page import="Models.Product" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <%@include file="/components/head.jsp" %>
  </head>

  <body id="product"
    class="lang-en country-us currency-usd layout-full-width page-product tax-display-disabled product-id-1 product-strawberry-daiquiri product-id-category-2 product-id-manufacturer-1 product-id-supplier-0 product-on-sale product-available-for-order"
    itemscope itemtype="http://schema.org/WebPage">
    <%@include file="/components/header.jsp" %>
      <div class="ttloading-bg spinner"></div>
      <div class="newsletter-pop"></div>
      <% Product product=(Product) session.getAttribute("product"); %>
        <main>
          <div id="page" class="">
            <nav data-depth="2" class="breadcrumb hidden-sm-down">
              <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                  <a itemprop="item" href="/"><span itemprop="name">Home</span></a>
                  <meta itemprop="position" content="1" />
                </li>

                <li>
                  <span>
                    <%= product.getProductName()%>
                  </span>
                </li>
              </ol>
            </nav>

            <section id="wrapper">
              <aside id="notifications">
                <div class="container"></div>
              </aside>

              <div class="container">
                <div id="content-wrapper">
                  <section id="main" itemscope itemtype="https://schema.org/Product">
                    <meta itemprop="url"
                      content="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/home/1-1-hummingbird-printed-t-shirt.html#/1-size-s/8-color-white" />
                    <div class="main-column row product-container">
                      <div class="col-md-5 pb-left-column">
                        <section class="page-content" id="content">
                          <!-- @todo: use include file='catalog/_partials/product-flags.tpl'} -->

                          <div class="images-container">
                            <div class="ttimage-zoom">
                              <div class="js-qv-mask mask">
                                <ul id="tt-jqzoom" class="product-images js-qv-product-images">
                                  <li class="thumb-container">
                                    <img class="thumb js-thumb selected"
                                      data-image-medium-src="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/24-large_default/hummingbird-printed-t-shirt.jpg"
                                      data-image-large-src="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/24-large_default/hummingbird-printed-t-shirt.jpg"
                                      data-zoom-image="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/24-large_default/hummingbird-printed-t-shirt.jpg"
                                      src="/img/<%= product.getImage()%>" alt="" title="" itemprop="image" width="870"
                                      height="1131" />

                                    <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                                      <i class="material-icons zoom-in">&#xE8FF;</i>
                                    </div>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>

                          <div class="scroll-box-arrows">
                            <i class="material-icons left">&#xE314;</i>
                            <i class="material-icons right">&#xE315;</i>
                          </div>
                        </section>
                      </div>
                      <div class="col-md-7 pb-right-column">
                        <h1 class="h1 tt-producttitle" itemprop="name">
                          <%= product.getProductName()%>
                        </h1>


                        <!--  /Module ProductComments -->

                        <div class="product-prices">
                          <div class="product-price h5 has-discount" itemprop="offers" itemscope
                            itemtype="https://schema.org/Offer">
                            <link itemprop="availability" href="https://schema.org/InStock" />
                            <meta itemprop="priceCurrency" content="USD" />
                            <meta itemprop="priceValidUntil" content="2024-12-31" />
                            <meta itemprop="url" content="1-hummingbird-printed-t-shirt.html" />

                            <div class="current-price">
                              <span itemprop="price" content="19.12">
                                <%=(int)((100 - product.getDiscount()) * product.getPrice()/100 )%><sup>d</sup>
                              </span>

                              <span class="discount discount-percentage">
                                <%= product.getDiscount()==0 ? "" : "Save " +product.getDiscount() + "%" %>
                              </span>

                              <div class="product-discount">
                                <span class="regular-price">
                                  <%=product.getDiscount() !=0 ? (int)product.getPrice()+"<sup>d</sup>": ""%>
                                </span>
                              </div>
                            </div>
                          </div>

                          <div class="tax-shipping-delivery-label"></div>
                        </div>

                        <div class="product-information">
                          <div id="product-description-short-1" itemprop="description">
                            <p>
                              <span style="font-size: 13.3333px">
                                <%= product.getDescription()%>
                              </span>
                            </p>
                          </div>


                          <div class="product-actions">
                            <form method="post" id="add-to-cart-or-refresh" onsubmit="return false">
                              <input type="hidden" name="addCart" value="25af647bb2f763e6bdcc079df66ccd55" />
                              <input type="hidden" name="productId" value="<%= product.getProductID()%>"
                                id="product_page_product_id" />
                              <input type="hidden" name="id_customization" value="0" id="product_customization_id" />

                              <section class="product-discounts"></section>

                              <div class="product-add-to-cart">
                                <span class="control-label">Quantity</span>

                                <div class="product-button">
                                  <div class="product-quantity clearfix">
                                    <div class="qty">
                                      <input type="text" name="quantity" id="quantity_wanted" value="1"
                                        class="input-group" min="1" aria-label="Quantity" />
                                    </div>

                                    <div class="add">
                                      <button class="btn btn-primary add-to-cart" data-button-action="add-to-cart" type="button"
                                        onclick='<%= account != null ? "addToCart(" + product.getProductID() + ")" : "notifyFail()" %>'>
                                        <i class="material-icons shopping-cart">&#xE547;</i>
                                        Add to cart
                                      </button>
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

                                  <div class="wishlist">
                                    <a class="addToWishlist btn btn-primary wishlistProd_1" href="#"
                                      data-dismiss="modal" data-rel="1" title="Add to wishlist" onclick="<%= account != null ? "addProductToWishList("+ product.getProductID() +")": "notifyFail()" %>">
                                      <i class="material-icons wishlist-icon">favorite_border</i>
                                      <span class="wishlist-name">Add to Wishlist</span>
                                      <span class="loading"><i class="material-icons">cached</i></span>
                                    </a>
                                  </div>
                                </div>

                                <p class="product-minimal-quantity"></p>
                              </div>

                              <div class="product-additional-info">
                                <div class="social-sharing">
                                  <span>Share</span>
                                  <ul>
                                    <li class="facebook icon-gray">
                                      <a href="https://www.facebook.com/sharer.php?u=localhost:8080" class="text-hide"
                                        title="Share" target="_blank">Share</a>
                                    </li>
                                    <li class="twitter icon-gray">
                                      <a href="https://twitter.com/intent/tweet?text=localhost:8080" class="text-hide"
                                        title="Tweet" target="_blank">Tweet</a>
                                    </li>
                                    <li class="pinterest icon-gray">
                                      <a href="https://www.pinterest.com/pin/create/button/?media=localhost:8080"
                                        class="text-hide" title="Pinterest" target="_blank">Pinterest</a>
                                    </li>
                                  </ul>
                                </div>
                              </div>
                            </form>
                          </div>

                          <div class="blockreassurance_product">
                            <div>
                              <span class="item-product">
                                <img class="svg invisible"
                                  src="https://prestashop1.templatetrip.com/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/security.svg" />
                                &nbsp;
                              </span>
                              <span class="block-title" style="color: #000000">Security policy</span>
                              <p style="color: #000000">
                                (edit with the Customer Reassurance module)
                              </p>
                            </div>
                            <div>
                              <span class="item-product">
                                <img class="svg invisible"
                                  src="https://prestashop1.templatetrip.com/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/carrier.svg" />
                                &nbsp;
                              </span>
                              <span class="block-title" style="color: #000000">Delivery policy</span>
                              <p style="color: #000000">
                                (edit with the Customer Reassurance module)
                              </p>
                            </div>
                            <div>
                              <span class="item-product">
                                <img class="svg invisible"
                                  src="https://prestashop1.templatetrip.com/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/parcel.svg" />
                                &nbsp;
                              </span>
                              <span class="block-title" style="color: #000000">Return policy</span>
                              <p style="color: #000000">
                                (edit with the Customer Reassurance module)
                              </p>
                            </div>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                    </div>

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

        <script src="/js/bottom-8d0d2558.js"></script>
  </body>

  </html>