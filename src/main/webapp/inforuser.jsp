
<%@page import="DAOs.AccountDAO"%>
<!doctype html>
<html lang="en">

    <head>
        <%@include file="/components/head.jsp" %>

    </head>

    <body id="identity" class="lang-en country-us currency-usd layout-full-width page-identity tax-display-disabled page-customer-account" itemscope itemtype="http://schema.org/WebPage">
        <div class="ttloading-bg spinner"></div>
        <%@include file="/components/header.jsp" %>
        <main>

            <div id="page" class="">

                <nav data-depth="3" class="breadcrumb hidden-sm-down">
                    <ol itemscope itemtype="http://schema.org/BreadcrumbList">

                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/"><span itemprop="name">Home</span></a>
                            <meta itemprop="position" content="1">
                        </li>


                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/my-account"><span itemprop="name">Your account</span></a>
                            <meta itemprop="position" content="2">
                        </li>


                        <li>
                            <span>Your personal information</span>
                        </li>


                    </ol>
                </nav>

                <section id="wrapper">


                    <div class="container">

                        <div id="content-wrapper">
                            <section id="main">
                                <header class="page-header">
                                    <h1 class="tt-innerpagetitle">
                                        Your personal information
                                    </h1>
                                </header>
                                <section id="content" class="page-content card card-block">
                                    <aside id="notifications">
                                        <div class="container">

                                        </div>
                                    </aside>

                                    <form action="AccontController" id="customer-form" class="js-customer-form" method="post">
                                        <section>



                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label">
                                                    Social title
                                                </label>
                                                <div class="col-md-6 form-control-valign">

                                                    <label class="radio-inline">
                                                        <span class="custom-radio">
                                                            <input
                                                                name="id_gender"
                                                                type="radio"
                                                                value="male"
                                                                checked                 >
                                                            <span></span>
                                                        </span>
                                                        Mr.
                                                    </label>
                                                    <label class="radio-inline">
                                                        <span class="custom-radio">
                                                            <input
                                                                name="id_gender"
                                                                type="radio"
                                                                value="female"
                                                                >
                                                            <span></span>
                                                        </span>
                                                        Mrs.
                                                    </label>

                                                </div>

                                                <div class="col-md-3 form-control-comment">


                                                </div>
                                            </div>

                                            <%                                                String username = (String) session.getAttribute("username");
                                                AccountDAO accdao = new AccountDAO();
                                                Account rs = accdao.getAccountByUsername(username);
                                            %>
                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label required">
                                                    First name
                                                </label>
                                                <div class="col-md-6">



                                                    <input
                                                        class="form-control"
                                                        name="firstname"
                                                        type="text"
                                                        value="<%= rs.getFullName().split(" ")[2]%>"
                                                        required          >
                                                    <span class="form-control-comment">
                                                        Only letters and the dot (.) character, followed by a space, are allowed.
                                                    </span>






                                                </div>

                                                <div class="col-md-3 form-control-comment">


                                                </div>
                                            </div>





                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label required">
                                                    Last name
                                                </label>
                                                <div class="col-md-6">



                                                    <input
                                                        class="form-control"
                                                        name="lastname"
                                                        type="text"
                                                        value="<%= rs.getFullName().split(" ")[0]%>"
                                                        required          >
                                                    <span class="form-control-comment">
                                                        Only letters and the dot (.) character, followed by a space, are allowed.
                                                    </span>






                                                </div>

                                                <div class="col-md-3 form-control-comment">


                                                </div>
                                            </div>





                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label required">
                                                    Email
                                                </label>
                                                <div class="col-md-6">



                                                    <input
                                                        class="form-control"
                                                        name="email"
                                                        type="email"
                                                        value="<%= rs.getEmail()%>"
                                                        required          >






                                                </div>

                                                <div class="col-md-3 form-control-comment">


                                                </div>
                                            </div>



                <div class="form-group row ">
                                                <label class="col-md-3 form-control-label required">
                                                   Old Password
                                                </label>
                                                <div class="col-md-6">
                                                    <div class="input-group js-parent-focus">
                                                        <input
                                                            class="form-control js-child-focus js-visible-password"
                                                            name="password"
                                                            title="At least 5 characters long"
                                                            type="password"
                                                            value="<%= rs.getPassword()%>"
                                                            pattern=".{5,}"
                                                            required            >
                                                        <span class="input-group-btn">
                                                            <button
                                                                class="btn"
                                                                type="button"
                                                                data-action="show-password"
                                                                data-text-show="Show"
                                                                data-text-hide="Hide"
                                                                >
                                                                Show
                                                            </button>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 form-control-comment">
                                                </div>
                                            </div>


                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label required">
                                                    Password
                                                </label>
                                                <div class="col-md-6">
                                                    <div class="input-group js-parent-focus">
                                                        <input
                                                            class="form-control js-child-focus js-visible-password"
                                                            name="password"
                                                            title="At least 5 characters long"
                                                            type="password"
                                                            value="<%= rs.getPassword()%>"
                                                            pattern=".{5,}"
                                                            required            >
                                                        <span class="input-group-btn">
                                                            <button
                                                                class="btn"
                                                                type="button"
                                                                data-action="show-password"
                                                                data-text-show="Show"
                                                                data-text-hide="Hide"
                                                                >
                                                                Show
                                                            </button>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 form-control-comment">
                                                </div>
                                            </div>





                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label">
                                                    New password
                                                </label>
                                                <div class="col-md-6">



                                                    <div class="input-group js-parent-focus">
                                                        <input
                                                            class="form-control js-child-focus js-visible-password"
                                                            name="new_password"
                                                            title="At least 5 characters long"
                                                            type="password"
                                                            value=""
                                                            pattern=".{5,}"
                                                            >
                                                        <span class="input-group-btn">
                                                            <button
                                                                class="btn"
                                                                type="button"
                                                                data-action="show-password"
                                                                data-text-show="Show"
                                                                data-text-hide="Hide"
                                                                >
                                                                Show
                                                            </button>
                                                        </span>
                                                    </div>






                                                </div>

                                                <div class="col-md-3 form-control-comment">

                                                    Optional

                                                </div>
                                            </div>





                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label">
                                                    Birthdate
                                                </label>
                                                <div class="col-md-6">



                                                    <input
                                                        class="form-control"
                                                        name="birthday"
                                                        type="text"
                                                        value="<%= rs.getBirthdate()%>"
                                                        placeholder="MM/DD/YYYY"                                  >
                                                    <span class="form-control-comment">
                                                        (E.g.: 05/31/1970)
                                                    </span>

                                                </div>

                                                <div class="col-md-3 form-control-comment">

                                                    Optional

                                                </div>
                                            </div>
                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label">
                                                </label>
                                                <div class="col-md-6">



                                                    <span class="custom-checkbox">
                                                        <label>
                                                            <input name="optin" type="checkbox" value="1" checked="checked" >
                                                            <span><i class="material-icons rtl-no-flip checkbox-checked">&#xE5CA;</i></span>

                                                            Receive offers from our partners
                                                        </label>
                                                    </span>

                                                </div>

                                                <div class="col-md-3 form-control-comment">


                                                </div>
                                            </div>

                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label required">
                                                </label>
                                                <div class="col-md-6">



                                                    <span class="custom-checkbox">
                                                        <label>
                                                            <input name="customer_privacy" type="checkbox" value="1"  required>
                                                            <span><i class="material-icons rtl-no-flip checkbox-checked">&#xE5CA;</i></span>

                                                            Customer data privacy<br><em>The personal data you provide is used to answer queries, process orders or allow access to specific information. You have the right to modify and delete all the personal information found in the "My Account" page.</em>
                                                        </label>
                                                    </span>

                                                </div>

                                                <div class="col-md-3 form-control-comment">


                                                </div>
                                            </div>

                                            <div class="form-group row ">
                                                <label class="col-md-3 form-control-label">
                                                </label>
                                                <div class="col-md-6">



                                                    <span class="custom-checkbox">
                                                        <label>
                                                            <input name="newsletter" type="checkbox" value="1" checked="checked" >
                                                            <span><i class="material-icons rtl-no-flip checkbox-checked">&#xE5CA;</i></span>

                                                            Sign up for our newsletter<br><em>You may unsubscribe at any moment. For that purpose, please find our contact info in the legal notice.</em>
                                                        </label>
                                                    </span>

                                                </div>

                                                <div class="col-md-3 form-control-comment">


                                                </div>
                                            </div>

                                        </section>


                                        <footer class="form-footer clearfix">
                                            <input type="hidden" name="submitCreate" value="1">

                                            <button class="btn btn-primary form-control-submit float-xs-right" data-link-action="save-customer" type="submit">
                                                Save
                                            </button>

                                        </footer>


                                    </form>



                                </section>



                                <footer class="page-footer">



                                    <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/my-account" class="account-link">
                                        <i class="material-icons">&#xE5CB;</i>
                                        <span>Back to your account</span>
                                    </a>
                                    <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/" class="account-link">
                                        <i class="material-icons">&#xE88A;</i>
                                        <span>Home</span>
                                    </a>



                                </footer>


                            </section>



                        </div>



                    </div>

                    </seincludection>

                    <%@ include file="/components/footer.jsp" %>
            </div>
        </main>
        <script src="/js/bottom-8d0d2558.js"></script>
    </body>
</html>