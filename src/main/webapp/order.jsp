<%@page import="DAOs.AddressDAO"%>
<%@page import="Models.Address"%>
<%@page import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">

    <head>
        <%@include file="/components/head.jsp" %>
    </head>

    <body id="checkout" class="lang-en country-us currency-usd layout-full-width page-order tax-display-disabled">
        <div class="ttloading-bg spinner"></div>
        <%@include file="/components/header.jsp" %>

        <div id="page" class="">
            <aside id="notifications">
                <div class="container">
                </div>
            </aside>

            <section id="wrapper">

                <nav data-depth="1" class="breadcrumb hidden-sm-down">
                    <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                        <li>
                            <a href="/">
                                <span>Home</span></a>
                        </li>
                    </ol>
                </nav>

                <%                    List<Product> cartItem = (List<Product>) session.getAttribute("cart");
                    float totalPrice = 0;
                    for (Product product : cartItem) {
                        totalPrice
                                += (float) product.getPrice() * product.getQuantity();
                    }
                %>

                <div class="container">
                    <section id="content">
                        <div class="row">
                            <div class="col-md-8 checkout-left">
                                <section id="" class="checkout-step -current -reachable js-current-step -clickable">
                                    <h1 class="step-title h3">
                                        <i class="material-icons rtl-no-flip done">&#xE876;</i>
                                        <span class="step-number">1</span>
                                        Addresses
                                        <span class="step-edit text-muted"><i class="material-icons edit">mode_edit</i> Edit</span>
                                    </h1>

                                    <form action="cart" method="post">
                                        <%
                                            Account acc = (Account) session.getAttribute("acc");
                                            List<Address> listAddress = new AddressDAO().getAddressByEmail(acc.getEmail());
                                            if (listAddress.size() == 0) {
                                        %>
                                        <!-- Show cho nay neu customer khong address san -->

                                        <div class="content">
                                            <div class="js-address-form">
                                                <p>
                                                    The selected address will be used as your personal address (for invoice).
                                                </p>

                                                <div id="delivery-address">

                                                    <div class="js-address-form">
                                                        <section class="form-fields">
                                                            <input type="hidden" name="back" value="">

                                                            <input type="hidden" name="token" value="0422a169af679d89870bb7a45edb7481">
                                                            <div class="form-group row">
                                                                <label class="col-md-3 form-control-label required">
                                                                    FullName
                                                                </label>
                                                                <div class="col-md-6">
                                                                    <input class="form-control" name="fullName" type="text" maxlength="255"
                                                                           required>
                                                                </div>
                                                                <div class="col-md-3 form-control-comment">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row ">
                                                                <label class="col-md-3 form-control-label required">
                                                                    Phone
                                                                </label>
                                                                <div class="col-md-6">
                                                                    <input class="form-control" name="phone" type="tel" maxlength="32" required>
                                                                </div>
                                                                <div class="col-md-3 form-control-comment">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row ">
                                                                <label class="col-md-3 form-control-label required">
                                                                    Address
                                                                </label>
                                                                <div class="col-md-6">
                                                                    <textarea style="resize: none;" class="form-control" rows="4" name="address" type="text" maxlength="128"
                                                                              required=""></textarea>
                                                                </div>
                                                                <div class="col-md-3 form-control-comment">
                                                                </div>
                                                            </div>

                                                            <input type="hidden" name="saveAddress" value="delivery">

                                                        </section>

                                                    </div>
                                                </div>
                                            </div>
                                        </div> 

                                        <%
                                        } else {
                                        %>
                                        <div class="content">

                                            <div class="js-address-form">
                                                <p>
                                                    The selected address will be used both as your personal address (for invoice) and as your
                                                    delivery address.
                                                </p>

                                                <%
                                                    for (Address add : listAddress) {
                                                %>
                                                <div id="delivery-addresses" class="address-selector js-address-selector">

                                                    <article class="address-item selected" id="id-address-delivery-address-22">
                                                        <header class="h4">
                                                            <label class="radio-block" style="border-bottom: none;">
                                                                <span class="custom-radio">
                                                                    <input type="radio" name="id_address_delivery" value="22" checked>
                                                                    <span></span>
                                                                </span>
                                                                <span class="address-alias h4">My Address</span>
                                                                <div class="address"><%=add.getName()%><br><%=add.getPhoneNumber()%><br><%=add.getDetailAddress()%><br><%=add.getEmail()%></div>
                                                            </label>
                                                        </header>
                                                    </article>
                                                    <p>
                                                        <button class="ps-hidden-by-js form-control-submit center-block" >Save</button>
                                                    </p>

                                                </div>
                                                <%
                                                    }
                                                %>

                                                <p class="alert alert-danger js-address-error" name="alert-delivery" style="display: none">Your
                                                    address is incomplete, please update it.</p>
                                                <div class="clearfix">
                                                    <input type="hidden" id="not-valid-addresses" value="">
                                                </div>

                                            </div>

                                        </div>  

                                        <%
                                            }
                                        %>


                                        <h1 class="step-title h3">
                                            <i class="material-icons rtl-no-flip done">&#xE876;</i>
                                            <span class="step-number">2</span>
                                            Payment
                                            <span class="step-edit text-muted"><i class="material-icons edit">mode_edit</i> Edit</span>
                                        </h1>
                                        <div class="content">
                                            <div style="display:none" class="js-cart-payment-step-refresh"></div>
                                            <div class="payment-options ">
                                                <div>
                                                    <div id="payment-option-1-container" class="payment-option clearfix">
                                                        <span class="custom-radio float-xs-left">
                                                            <input class="ps-shown-by-js " id="payment-option-1" data-module-name="ps_checkpayment"
                                                                   name="payment-option" value="cod" type="radio" required="" checked>
                                                            <span></span>
                                                        </span>

                                                        <button class="ps-hidden-by-js" name="select_payment_option"
                                                                value="payment-option-1" style="display: none;">
                                                            Choose
                                                        </button>

                                                        <label for="payment-option-1">
                                                            <span>Pay by COD</span>
                                                        </label>

                                                    </div>
                                                </div>

                                                <div id="payment-option-1-additional-information"
                                                     class="js-additional-information definition-list additional-information ps-hidden "
                                                     style="display: none;">
                                                    <section>
                                                        <p>Please send us your check including the following details:
                                                        </p>
                                                        <dl>
                                                            <dt>Amount</dt>
                                                            <dd><%=totalPrice%> (tax incl.)</dd>
                                                            <dt>Payee</dt>
                                                            <dd>0</dd>

                                                        </dl>
                                                        <p></p>
                                                    </section>

                                                </div>

                                                <div id="pay-with-payment-option-1-form" class="js-payment-option-form  ps-hidden "
                                                     style="display: none;">

                                                    <button style="display:none" id="pay-with-payment-option-1"></button>

                                                </div>
                                                <div>
                                                    <div id="payment-option-2-container" class="payment-option clearfix">
                                                        <span class="custom-radio float-xs-left">
                                                            <input class="ps-shown-by-js " id="payment-option-2" data-module-name="ps_wirepayment"
                                                                   name="payment-option" value="banking" type="radio" required="">
                                                            <span></span>
                                                        </span>

                                                        <button class="ps-hidden-by-js" name="select_payment_option"
                                                                value="payment-option-2" style="display: none;">
                                                            Choose
                                                        </button>

                                                        <label for="payment-option-2">
                                                            <span>Pay by bank wire</span>
                                                        </label>

                                                    </div>
                                                </div>

                                                <div id="payment-option-2-additional-information"
                                                     class="js-additional-information definition-list additional-information ps-hidden "
                                                     style="display: none;">
                                                    <section>
                                                        <p>
                                                            Please transfer the invoice amount to our bank account. You will receive our order
                                                            confirmation by email containing bank details and order number.
                                                            Goods will be reserved 7 days for you and we'll process the order immediately after
                                                            receiving the payment.
                                                        </p>

                                                        <div class="modal fade" id="bankwire-modal" tabindex="-1" role="dialog"
                                                             aria-labelledby="Bankwire information" aria-hidden="true">
                                                            <div class="modal-dialog" role="document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true"></span>
                                                                        </button>
                                                                        <h2>Bankwire</h2>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <p>Payment is made by transfer of the invoice amount to the following account:</p>

                                                                        <dl>
                                                                            <dt>Amount</dt>
                                                                            <dd><%=totalPrice%> (tax incl.)</dd>
                                                                            <dt>Name of account owner</dt>
                                                                            <dd>___________</dd>
                                                                            <dt>Please include these details</dt>
                                                                            <dd>___________</dd>
                                                                            <dt>Bank name</dt>
                                                                            <dd>___________</dd>
                                                                        </dl>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </section>

                                                </div>

                                                <div id="pay-with-payment-option-2-form" class="js-payment-option-form  ps-hidden "
                                                     style="display: none;">

                                                    <button style="display:none" id="pay-with-payment-option-2" ></button>
                                                </div>
                                            </div>

                                            <p class="ps-hidden-by-js" style="display: none;">
                                                By confirming the order, you certify that you have read and agree with all of the conditions
                                                below:
                                            </p>

                                            <ul>
                                                <li>
                                                    <div class="float-xs-left">
                                                        <span class="custom-checkbox">
                                                            <input id="conditions_to_approve[terms-and-conditions]"
                                                                   name="conditions_to_approve[terms-and-conditions]" checked type="checkbox" value="1"
                                                                   class="ps-shown-by-js">
                                                            <span><i class="material-icons rtl-no-flip checkbox-checked">check_box</i>
                                                            </span>
                                                        </span>
                                                    </div>
                                                    <div class="condition-label">
                                                        <label class="js-terms" for="conditions_to_approve[terms-and-conditions]">
                                                            I agree to the <a href="#" id="cta-terms-and-conditions-0">terms of service</a> and will
                                                            adhere to them
                                                            unconditionally.
                                                        </label>
                                                    </div>
                                                </li>
                                            </ul>

                                            <div id="payment-confirmation1">
                                                <div class="ps-shown-by-js">
                                                    <button type="submit" name="btnAddNewAddress" value="Add new" class="btn btn-primary center-block">
                                                        Order with an obligation to pay
                                                    </button>
                                                </div>

                                            </div>

                                            <div class="modal fade" id="modal">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true"></span>
                                                        </button>
                                                        <div class="js-modal-content"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </section>
                            </div>

                            <div class="col-md-4 checkout-right">

                                <section id="js-checkout-summary" class="card js-cart"
                                         data-refresh-url="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/cart?ajax=1&action=refresh">
                                    <div class="card-block">

                                        <div class="cart-summary-products">

                                            <p><%=cartItem.size()%> items</p>

                                            <p class="show-details">
                                                <a href="#" data-toggle="collapse" data-target="#cart-summary-product-list">
                                                    show details
                                                    <i class="material-icons">expand_more</i>
                                                </a>
                                            </p>


                                            <div class="collapse" id="cart-summary-product-list">
                                                <ul class="media-list">
                                                    <%
                                                        for (Product product : cartItem) {
                                                    %>
                                                    <li class="media">
                                                        <div class="media-left">
                                                            <a href="#"
                                                               title="Green Thumb Juice">
                                                                <img class="media-object"
                                                                     src="/img/<%=product.getImage()%>"
                                                                     alt="Green Thumb Juice"
                                                                     width=80px">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <span class="product-name"><%=product.getProductName()%></span>
                                                            <span class="product-quantity" style="padding-left: 10px">x<%=product.getQuantity()%></span>
                                                            <span class="product-price float-xs-right"><%=product.getPrice()%></span>
                                                            <br />
                                                        </div>

                                                    </li>
                                                    <%
                                                        }
                                                    %>

                                                </ul>
                                            </div>

                                        </div>



                                        <div class="card-block cart-summary-subtotals-container">

                                            <div class="cart-summary-line cart-summary-subtotals" id="cart-subtotal-products">

                                                <span class="label">
                                                    Subtotal
                                                </span>

                                                <span class="value">
                                                    <%=totalPrice%>
                                                </span>
                                            </div>
                                            <div class="cart-summary-line cart-summary-subtotals" id="cart-subtotal-shipping">

                                                <span class="label">
                                                    Shipping
                                                </span>

                                                <span class="value">
                                                    0
                                                </span>
                                            </div>

                                        </div>

                                    </div>


                                    <div class="card-block cart-summary-totals">


                                        <div class="cart-summary-line">
                                            <span class="label">Total&nbsp;(tax excl.)</span>
                                            <span class="value"><%=totalPrice%></span>
                                        </div>
                                        <div class="cart-summary-line cart-total">
                                            <span class="label">Total (tax incl.)</span>
                                            <span class="value"><%=totalPrice%></span>
                                        </div>

                                        <div class="cart-summary-line">
                                            <span class="label sub">Taxes:</span>
                                            <span class="value sub">0</span>
                                        </div>

                                    </div>

                                </section>

                                <div class="blockreassurance_product">
                                    <div>
                                        <span class="item-product">
                                            <img class="svg invisible"
                                                 src="/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/security.svg">
                                            &nbsp;
                                        </span>
                                        <span class="block-title" style="color:#000000;">Security policy</span>
                                        <p style="color:#000000;">(edit with the Customer Reassurance module)</p>
                                    </div>
                                    <div>
                                        <span class="item-product">
                                            <img class="svg invisible"
                                                 src="/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/carrier.svg">
                                            &nbsp;
                                        </span>
                                        <span class="block-title" style="color:#000000;">Delivery policy</span>
                                        <p style="color:#000000;">(edit with the Customer Reassurance module)</p>
                                    </div>
                                    <div>
                                        <span class="item-product">
                                            <img class="svg invisible"
                                                 src="/Prestashop/PRS01/PRS001_summer/modules/blockreassurance/views/img/reassurance/pack2/parcel.svg">
                                            &nbsp;
                                        </span>
                                        <span class="block-title" style="color:#000000;">Return policy</span>
                                        <p style="color:#000000;">(edit with the Customer Reassurance module)</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>

                            </div>
                        </div>
                    </section>

                </div>

                <%@include file="/components/footer.jsp" %>
            </section>

        </div>

        <script src="/js/bottom-8d0d2558.js"></script>

    </body>

</html>