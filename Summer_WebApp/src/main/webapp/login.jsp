<!DOCTYPE html>
<html lang="en">
    <!-- Mirrored from prestashop1.templatetrip.com/PRS01/PRS001_summer/en/login by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 28 Oct 2023 03:00:21 GMT -->
    <!-- Added by HTTrack --><meta
        http-equiv="content-type"
        content="text/html;charset=utf-8"
        /><!-- /Added by HTTrack -->
    <head>
        <meta charset="utf-8" />

        <meta http-equiv="x-ua-compatible" content="ie=edge" />

        <title>Login</title>
        <meta name="description" content="" />
        <meta name="keywords" content="" />

        <link rel="alternate" href="login.html" hreflang="en-us" />
        <link
            rel="alternate"
            href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/ar/????? ??????"
            hreflang="ar-sa"
            />
        <link
            rel="alternate"
            href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/de/anmeldung"
            hreflang="de-de"
            />
        <link
            rel="alternate"
            href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/es/iniciar-sesion"
            hreflang="es-es"
            />
        <link
            rel="alternate"
            href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/fr/connexion"
            hreflang="fr-fr"
            />
        <link
            rel="alternate"
            href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/it/login"
            hreflang="it-it"
            />
        <link
            rel="alternate"
            href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/pl/logowanie"
            hreflang="pl-pl"
            />

        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <script src="./libs/jquery/2.0.0/jquery.min.js"></script>
        <!-- TemplateTrip theme google font-->

        <link rel="preconnect" href="https://fonts.gstatic.com/" />

        <link
            href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;500;600;700;800&amp;display=swap"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap"
            rel="stylesheet"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/icon?family=Material+Icons"
            />

        <!-- TemplateTrip theme google font-->

        <link
            rel="icon"
            type="image/vnd.microsoft.icon"
            href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/img/favicon.ico?1615016276"
            />
        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/img/favicon.ico?1615016276"
            />

        <link
            rel="stylesheet"
            href="./css/theme-91857b59.css"
            type="text/css"
            media="all"
            />

        <script>
            var added_to_wishlist =
                    "The product was successfully added to your wishlist.";
            var baseDir =
                    "login.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/";
            var comparator_max_item = 3;
            var compareAdd = "The product has been added to product comparison";
            var compareRemove =
                    "The product has been removed from the product comparison.";
            var compareUrl =
                    "login.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/module\/ttcompare\/compare";
            var compareView = "Compare";
            var comparedProductsIds = [];
            var compared_products = [];
            var disable_comment = "Criterion is not exists for this product.";
            var isLogged = 0;
            var isLoggedWishlist = false;
            var loggin_required = "You must be logged in to manage your wishlist.";
            var loginLabel = "Login";
            var login_url =
                    "login.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/my-account";
            var max_item =
                    "You cannot add more than 3 product(s) to the product comparison";
            var moderation_active = 1;
            var mywishlist_url =
                    "login.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/module\/ttproductwishlist\/mywishlist";
            var prestashop = {
                cart: {
                    products: [],
                    totals: {
                        total: {type: "total", label: "Total", amount: 0, value: "$0.00"},
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
                        tax: {type: "tax", label: "Taxes", amount: 0, value: "$0.00"},
                    },
                    products_count: 0,
                    summary_string: "0 items",
                    vouchers: {allowed: 0, added: []},
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
                    gender: {type: null, name: null},
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
                        title: "Login",
                        description: "",
                        keywords: "",
                        robots: "index",
                    },
                    page_name: "authentication",
                    body_classes: {
                        "lang-en": true,
                        "lang-rtl": false,
                        "country-US": true,
                        "currency-USD": true,
                        "layout-full-width": true,
                        "page-authentication": true,
                        "tax-display-disabled": true,
                        "page-customer-account": true,
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
                            "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/login",
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
                                "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/login",
                        "ar-sa":
                                "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/ar\/\u062a\u0633\u062c\u064a\u0644 \u0627\u0644\u062f\u062e\u0648\u0644",
                        "de-de":
                                "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/de\/anmeldung",
                        "es-es":
                                "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/es\/iniciar-sesion",
                        "fr-fr":
                                "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/fr\/connexion",
                        "it-it":
                                "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/it\/login",
                        "pl-pl":
                                "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/pl\/logowanie",
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
                                url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-home_default.jpg",
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
                            url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/img\/p\/en-default-home_default.jpg",
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
                    opt_in: {partner: true},
                    quantity_discount: {type: "discount", label: "Unit discount"},
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
                        {
                            title: "Log in to your account",
                            url: "https:\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/login",
                        },
                    ],
                    count: 2,
                },
                link: {protocol_link: "https:\/\/", protocol_content: "https:\/\/"},
                time: 1698454902,
                static_token: "25af647bb2f763e6bdcc079df66ccd55",
                token: "bda1cba0bd2d61c33998cba95c917992",
                debug: false,
            };
            var productcomment_added =
                    "Thanks for your Review. Your comment has been added!";
            var productcomment_added_moderation =
                    "Thanks for your Review. It will be available once approved by a moderator.";
            var productcomments_controller_url =
                    "login.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/module\/ttproductcomments\/default";
            var productcomments_url_rewrite = "1";
            var psemailsubscription_subscription =
                    "login.html\/\/prestashop1.templatetrip.com\/PRS01\/PRS001_summer\/en\/module\/ps_emailsubscription\/subscription";
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
    <body>
        <jsp:include page="./header.jsp"></jsp:include>
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
                            <span>Log in to your account</span>
                        </li>
                    </ol>
                </nav>

                <section id="wrapper">
                    <aside id="notifications">
                        <div class="container"></div>
                    </aside>

                    <div class="container">
                        <div id="content-wrapper">
                            <section id="main">
                                <header class="page-header">
                                    <h1 class="tt-innerpagetitle">Log in to your account</h1>
                                </header>

                                <section id="content" class="page-content card card-block">
                                    <section class="login-form">
                                        <form id="login-form" action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/login"
                                              method="post">
                                            <section>
                                                <input type="hidden" name="back" value="" />

                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label required">
                                                        Email
                                                    </label>
                                                    <div class="col-md-6">
                                                        <input class="form-control" name="email" type="email" value="" required />
                                                    </div>

                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label required">
                                                        Password
                                                    </label>
                                                    <div class="col-md-6">
                                                        <div class="input-group js-parent-focus">
                                                            <input class="form-control js-child-focus js-visible-password" name="password"
                                                                   title="At least 5 characters long" type="password" value="" pattern=".{5,}" required />
                                                            <span class="input-group-btn">
                                                                <button class="btn" type="button" data-action="show-password" data-text-show="Show"
                                                                        data-text-hide="Hide">
                                                                    Show
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>

                                                <div class="forgot-password">
                                                    <a href="password-recovery.html" rel="nofollow">
                                                        Forgot your password?
                                                    </a>
                                                </div>
                                            </section>

                                            <footer class="form-footer text-sm-center clearfix">
                                                <input type="hidden" name="submitLogin" value="1" />

                                                <button id="submit-login" class="btn btn-primary" data-link-action="sign-in" type="submit"
                                                        class="form-control-submit">
                                                    Sign in
                                                </button>
                                            </footer>
                                        </form>
                                    </section>
                                    <hr />

                                    <div class="no-account">
                                        <a href="register.html" data-link-action="display-register-form">
                                            No account? Create one here
                                        </a>
                                    </div>
                                </section>

                                <footer class="page-footer">
                                    <!-- Footer content -->
                                </footer>
                            </section>
                        </div>
                    </div>
                </section>
                <%@ include file="/footer.jsp" %>
            </div>
        </main>

        <script src="/js/bottom-254fa158.js"></script>
    </body>

</html>