<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
  <meta charset="utf-8" />

  <meta http-equiv="x-ua-compatible" content="ie=edge" />

  <title>Ice Store</title>
  <meta name="description" content="Shop powered by PrestaShop" />
  <meta name="keywords" content="" />

  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <script src="/libs/jquery/2.0.0/jquery.min.js"></script>
  <!-- TemplateTrip theme google font-->

  <link rel="preconnect" href="https://fonts.gstatic.com/" />

  <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;500;600;700;800&amp;display=swap"
    rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

  <!-- TemplateTrip theme google font-->

  <link rel="icon" type="image/vnd.microsoft.icon"
    href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/img/favicon.ico?1615016276" />
  <link rel="shortcut icon" type="image/x-icon"
    href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/img/favicon.ico?1615016276" />

  <link rel="stylesheet" href="/css/theme-91857b59.css" type="text/css" media="all" />
  <link rel="stylesheet" href="/css/theme-086d4259.css" type="text/css" media="all" />
  <link rel="stylesheet" href="/css/theme-dd366259.css" type="text/css" media="all" />

  <script>
    var added_to_wishlist =
      "The product was successfully added to your wishlist.";
    var baseDir =
      "index.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/";
    var comparator_max_item = 3;
    var compareAdd = "The product has been added to product comparison";
    var compareRemove =
      "The product has been removed from the product comparison.";
    var compareUrl =
      "index.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/module\/ttcompare\/compare";
    var compareView = "Compare";
    var comparedProductsIds = [];
    var compared_products = [];
    var disable_comment = "Criterion is not exists for this product.";
    var isLogged = 0;
    var isLoggedWishlist = false;
    var loggin_required = "You must be logged in to manage your wishlist.";
    var loginLabel = "Login";
    var login_url =
      "index.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/my-account";
    var max_item =
      "You cannot add more than 3 product(s) to the product comparison";
    var moderation_active = 1;
    var mywishlist_url =
      "index.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/module\/ttproductwishlist\/mywishlist";
    var prestashop = {
      cart: {
        products: [],
        totals: {
          total: { type: "total", label: "Total", amount: 0, value: "$0.00" },
          total_including_tax: {
            type: "total",
            label: "Total (tax incl.)",
            amount: 0,
            value: "$0.00",
          },
          total_excluding_tax: {
            type: "total",
            label: "Total (tax excl.)",
            amount: 0,
            value: "$0.00",
          },
        },
        subtotals: {
          products: {
            type: "products",
            label: "Subtotal",
            amount: 0,
            value: "$0.00",
          },
          discounts: null,
          shipping: {
            type: "shipping",
            label: "Shipping",
            amount: 0,
            value: "",
          },
          tax: { type: "tax", label: "Taxes", amount: 0, value: "$0.00" },
        },
        products_count: 0,
        summary_string: "0 items",
        vouchers: { allowed: 0, added: [] },
        discounts: [],
        minimalPurchase: 0,
        minimalPurchaseRequired: "",
      },
      currency: {
        name: "US Dollar",
        iso_code: "USD",
        iso_code_num: "840",
        sign: "$",
      },
      customer: {
        lastname: null,
        firstname: null,
        email: null,
        birthday: null,
        newsletter: null,
        newsletter_date_add: null,
        optin: null,
        website: null,
        company: null,
        siret: null,
        ape: null,
        is_logged: false,
        gender: { type: null, name: null },
        addresses: [],
      },
      language: {
        name: "English (English)",
        iso_code: "en",
        locale: "en-US",
        language_code: "en-us",
        is_rtl: "0",
        date_format_lite: "m\/d\/Y",
        date_format_full: "m\/d\/Y H:i:s",
        id: 1,
      },
      page: {
        title: "",
        canonical: null,
        meta: {
          title: "demo store",
          description: "Shop powered by PrestaShop",
          keywords: "",
          robots: "index",
        },
        page_name: "index",
        body_classes: {
          "lang-en": true,
          "lang-rtl": false,
          "country-US": true,
          "currency-USD": true,
          "layout-full-width": true,
          "page-index": true,
          "tax-display-disabled": true,
        },
        admin_notifications: [],
      },
      shop: {
        name: "demo store",
        logo: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/demo-logo-1615016276.jpg",
        stores_icon:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/logo_stores.png",
        favicon:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/favicon.ico",
      },
      urls: {
        base_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/",
        current_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/",
        shop_domain_url: "https:\/\/prestashop1.templatetrip.com",
        img_ps_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/",
        img_cat_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/c\/",
        img_lang_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/l\/",
        img_prod_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/",
        img_manu_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/m\/",
        img_sup_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/su\/",
        img_ship_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/s\/",
        img_store_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/st\/",
        img_col_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/co\/",
        img_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/themes\/PRS001\/assets\/img\/",
        css_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/themes\/PRS001\/assets\/css\/",
        js_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/themes\/PRS001\/assets\/js\/",
        pic_url:
          "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/upload\/",
        pages: {
          address:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/address",
          addresses:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/addresses",
          authentication:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/login",
          cart: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/cart",
          category:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/index.php?controller=category",
          cms: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/index.php?controller=cms",
          contact:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/contact-us",
          discount:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/discount",
          guest_tracking:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/guest-tracking",
          history:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/order-history",
          identity:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/identity",
          index:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/",
          my_account:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/my-account",
          order_confirmation:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/order-confirmation",
          order_detail:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/index.php?controller=order-detail",
          order_follow:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/order-follow",
          order:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/order",
          order_return:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/index.php?controller=order-return",
          order_slip:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/credit-slip",
          pagenotfound:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/page-not-found",
          password:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/password-recovery",
          pdf_invoice:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/index.php?controller=pdf-invoice",
          pdf_order_return:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/index.php?controller=pdf-order-return",
          pdf_order_slip:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/index.php?controller=pdf-order-slip",
          prices_drop:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/prices-drop",
          product:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/index.php?controller=product",
          search:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/search",
          sitemap:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/sitemap",
          stores:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/stores",
          supplier:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/supplier",
          register:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/login?create_account=1",
          order_login:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/order?login=1",
        },
        alternative_langs: {
          "en-us":
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/",
          "ar-sa":
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/ar\/",
          "de-de":
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/de\/",
          "es-es":
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/es\/",
          "fr-fr":
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/fr\/",
          "it-it":
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/it\/",
          "pl-pl":
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/pl\/",
        },
        theme_assets: "\/PRS01\/PRS001_summer\/themes\/PRS001\/assets\/",
        actions: {
          logout:
            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/?mylogout=",
        },
        no_picture_image: {
          bySize: {
            small_default: {
              url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-small_default.jpg",
              width: 70,
              height: 91,
            },
            cart_default: {
              url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-cart_default.jpg",
              width: 100,
              height: 125,
            },
            home_default: {
              url: "https/products:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-home_default.jpg",
              width: 272,
              height: 354,
            },
            medium_default: {
              url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-medium_default.jpg",
              width: 530,
              height: 530,
            },
            large_default: {
              url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-large_default.jpg",
              width: 870,
              height: 1131,
            },
          },
          small: {
            url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-small_default.jpg",
            width: 70,
            height: 91,
          },
          medium: {
            url: "https/products:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-home_default.jpg",
            width: 272,
            height: 354,
          },
          large: {
            url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-large_default.jpg",
            width: 870,
            height: 1131,
          },
          legend: "",
        },
      },
      configuration: {
        display_taxes_label: false,
        display_prices_tax_incl: false,
        is_catalog: false,
        show_prices: true,
        opt_in: { partner: true },
        quantity_discount: { type: "discount", label: "Unit discount" },
        voucher_enabled: 0,
        return_enabled: 0,
      },
      field_required: [],
      breadcrumb: {
        links: [
          {
            title: "Home",
            url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/",
          },
        ],
        count: 1,
      },
      link: { protocol_link: "https:\/\/", protocol_content: "https:\/\/" },
      time: 1698453450,
      static_token: "25af647bb2f763e6bdcc079df66ccd55",
      token: "bda1cba0bd2d61c33998cba95c917992",
      debug: false,
    };
    var productcomment_added =
      "Thanks for your Review. Your comment has been added!";
    var productcomment_added_moderation =
      "Thanks for your Review. It will be available once approved by a moderator.";
    var productcomments_controller_url =
      "index.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/module\/ttproductcomments\/default";
    var productcomments_url_rewrite = "1";
    var psemailsubscription_subscription =
      "index.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/module\/ps_emailsubscription\/subscription";
    var psr_icon_color = "#8E8E8E";
    var secure_key = "b0120a44fde69737c35d5d562a9faae2";
    var static_token = "25af647bb2f763e6bdcc079df66ccd55";
    var wishlistProductsIds = "";
    var wishlistView = "Your Wishlist";
  </script>

  <style>
    #product .ttpc-wrp.ttpc_displayProductPriceBlock {
      display: none !important;
    }

    #product .ajax_block_product .ttpc-wrp.ttpc_displayProductPriceBlock,
    #product .product_list .ttpc-wrp.ttpc_displayProductPriceBlock,
    #product #product_list .ttpc-wrp.ttpc_displayProductPriceBlock,
    #product .product-miniature .ttpc-wrp.ttpc_displayProductPriceBlock {
      display: block !important;
    }
  </style>

  <script>
    var ttpc_labels = ["days", "hours", "minutes", "seconds"];
    var ttpc_labels_lang = {
      days: "days",
      hours: "hours",
      minutes: "min.",
      seconds: "sec.",
    };
    var ttpc_labels_lang_1 = {
      days: "day",
      hours: "hour",
      minutes: "min.",
      seconds: "sec.",
    };
    var ttpc_offer_txt = "Offer ends in:";
    var ttpc_theme = "1-simple";
    var ttpc_psv = 1.7;
    var ttpc_hide_after_end = 1;
    var ttpc_hide_expired = 1;
    var ttpc_highlight = "seconds";
    var ttpc_position_product = "";
    var ttpc_position_list = "over_img";
    var ttpc_adjust_positions = 1;
    var ttpc_token = "25af647bb2f763e6bdcc079df66ccd55";
  </script>
</head>

<body id="index" class="lang-en country-us currency-usd layout-full-width page-index tax-display-disabled" itemscope
  itemtype="http://schema.org/WebPage">
  <div class="ttloading-bg spinner"></div>

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

        <div class="top-wishlist" id="top-wishlist">
          <a class="wishtlist_top" href="loginb6ea.html" title="Wishlists" rel="nofollow">
            <i class="material-icons">favorite_border</i><span class="cart-wishlist-number">0</span>
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
                      <a class="ttinnermenu" href="73-cornetto-chokiss.html"><span
                          class="catagory">Strawberry</span></a>
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
        <div id="_desktop_cart">
          <div class="blockcart cart-preview inactive"
            data-refresh-url="//prestashop1.templatetrip.com/PRS01/PRS001_summer/en/module/ps_shoppingcart/ajax">
            <div class="header">
              <span class="shopping">
                <i class="material-icons shopping-cart">shopping_cart</i>
                <span class="hidden-sm-down">Cart</span>
                <span class="cart-products-count">0</span>
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
        <div id="_desktop_user_info">
          <div class="ttuserheading">
            <i class="material-icons user">&#xE7FF;</i>
            <span>My Account</span>
            <i class="material-icons expand-more">&#xE313;</i>
            <i class="material-icons expand-less">&#xE316;</i>
          </div>
          <ul class="user-info">
            <li>
              <a href="login.html" title="Log in to your customer account" rel="nofollow">
                <i class="material-icons user">&#xE7FF;</i>
                <span class="hidden-sm-down">Sign in</span>
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