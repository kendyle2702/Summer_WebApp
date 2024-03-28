<%-- 
    Document   : updateaddress
    Created on : Nov 9, 2023, 1:22:25 AM
    Author     : La Hoang Khoi - CE171855
--%>

<%@page import="DAOs.AddressDAO"%>
<%@page import="Models.Address"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="/components/head.jsp" %>
    </head>

    <body
        id="authentication"
        class="lang-en country-us currency-usd layout-full-width page-authentication tax-display-disabled page-customer-account"
        itemscope
        itemtype="http://schema.org/WebPage"
        >
     
        <div class="ttloading-bg spinner"></div>

        <div class="newsletter-pop"></div>
        <main>
            <div id="page" class="">
                <nav data-depth="3" class="breadcrumb hidden-sm-down">
                    <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="/"><span itemprop="name">Home</span></a>
                            <meta itemprop="position" content="1">
                        </li>
                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="/account"><span itemprop="name">Your account</span></a>
                            <meta itemprop="position" content="2">
                        </li>
                        <li>
                            <span>Addresses</span>
                        </li>
                    </ol>
                </nav>
                <section id="wrapper">
                    <div class="container">
                        <div id="content-wrapper">
                            <section id="main">
                                <header class="page-header">
                                    <h1 class="tt-innerpagetitle">
                                        Update your address
                                    </h1>
                                </header>
                                <%                                    AddressDAO DAO = new AddressDAO();
                                    int id = (int) session.getAttribute("idaddress");
                                    Address adr = DAO.getAddressByID(id);

                                %> 

                                <section id="content" class="page-content card card-block">
                                    <aside id="notifications">
                                        <div class="container">
                                        </div>
                                    </aside>
                                    <div class="address-form">

                                        <div class="js-address-form">
                                            <form
                                                method="POST"
                                                action=""
                                                data-id-address="19"
                                                data-refresh-url="//prestashop1.templatetrip.com/PRS01/PRS001_summer/en/address?ajax=1&action=addressForm"
                                                >
                                                <section class="form-fields">
                                                    <input type="hidden" name="back" value="">
                                                    <input type="hidden" name="token" value="9adee427a2999c0ba48a2a46f3005fe9">
                                                    <div class="form-group row ">
                                                        <label class="col-md-3 form-control-label">
                                                            ID
                                                        </label>
                                                        <div class="col-md-6">
                                                            <input
                                                                class="form-control"
                                                                name="idadr"
                                                                type="text"
                                                                readonly=""
                                                                value="<%=adr.getAddressID()%>"
                                                                maxlength="32"                      >
                                                        </div>
                                                    </div>
                                                    <div class="form-group row ">
                                                        <label class="col-md-3 form-control-label">
                                                            Email
                                                        </label>
                                                        <div class="col-md-6">
                                                            <input
                                                                class="form-control"
                                                                name="email"
                                                                type="email"
                                                                readonly=""
                                                                value="<%=adr.getEmail()%>"
                                                                maxlength="32"                      >
                                                        </div>
                                                    </div>
                                                    <div class="form-group row ">
                                                        <label class="col-md-3 form-control-label required">
                                                            Full Name
                                                        </label>
                                                        <div class="col-md-6">
                                                            <input
                                                                class="form-control"
                                                                name="fullname"
                                                                type="text"
                                                                 
                                                                value="<%=adr.getName()%>"
                                                                maxlength="255"            required          >
                                                        </div>

                                                        <div class="col-md-3 form-control-comment">

                                                        </div>
                                                    </div>
                                                    <div class="form-group row ">
                                                        <label class="col-md-3 form-control-label">
                                                            Address
                                                        </label>
                                                        <div class="col-md-6">
                                                            <input
                                                                class="form-control"
                                                                name="address"
                                                                type="text"
                                                                value="<%=adr.getDetailAddress()%>"
                                                                maxlength="255"                      >
                                                        </div>
                                                    </div>
                                                    <div class="form-group row ">
                                                        <label class="col-md-3 form-control-label">
                                                            Phonenumber
                                                        </label>
                                                        <div class="col-md-6">
                                                            <input
                                                                class="form-control"
                                                                name="phone"
                                                                type="number"
                                                                value="<%=adr.getPhoneNumber()%>"
                                                                maxlength="128"                      >
                                                        </div>
                                                    </div>
                                                </section>
                                                <footer class="form-footer clearfix">
                                                    <input type="hidden" name="submitAddress" value="1">

                                                    <button class="btn btn-primary float-xs-right" type="submit" class="form-control-submit">
                                                        Save
                                                    </button>
                                                </footer>
                                            </form>
                                        </div>
                                    </div>
                                </section>
                                <footer class="page-footer">
                                    <a href="/account" class="account-link">
                                        <i class="material-icons">&#xE5CB;</i>
                                        <span>Back to your account</span>
                                    </a>
                                    <a href="/" class="account-link">
                                        <i class="material-icons">&#xE88A;</i>
                                        <span>Home</span>
                                    </a>
                                </footer>
                            </section>
                        </div>
                    </div>
                </section>
            </div>
        </main>
        <script src="/js/bottom-8d0d2558.js"></script>
    </body>
</html>
