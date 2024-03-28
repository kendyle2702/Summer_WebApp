<%@page import="DAOs.AccountDAO"%>
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
        <%@include file="/components/header.jsp" %>
        <div class="ttloading-bg spinner"></div>

        <div class="newsletter-pop"></div>

        <main>
            <div id="page" class="">
                <nav data-depth="2" class="breadcrumb hidden-sm-down">
                    <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/"><span itemprop="name">Home</span></a>
                            <meta itemprop="position" content="1" />
                        </li>

                        <li>
                            <span>Create an account</span>
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
                                <section id="content" class="page-content card card-block">
                                    <section class="register-form">
                                        <p>
                                            Already have an account?
                                            <a href="/login">Log in instead!</a>
                                        </p>

                                        <form
                                            action="account"
                                            id="customer-form"
                                            class="js-customer-form"
                                            method="post"
                                            >
                                              <%                       
                                              String username = (String) session.getAttribute("username");
                                                AccountDAO accdao = new AccountDAO();
                                                Account rs = accdao.getAccountByUsername(username);
                                            %>
                                            <section>
                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label required">Full name</label>
                                                    <div class="col-md-6">
                                                        <input class="form-control" name="fullName" type="text"  value="<%= rs.getFullName()%>" required />
                                                        <span class="form-control-comment"> Only letters and the dot (.) character, followed by a space, are allowed. </span>
                                                    </div>

                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label"> Gender </label>
                                                    <div class="col-md-6 form-control-valign">
                                                        <label class="radio-inline">
                                                            <span class="custom-radio">
                                                                <input name="id_gender" type="radio" value="Male" <%= rs.getSex().equals("male") ? "Checked" : ""%> />
                                                                <span></span>
                                                            </span>
                                                            Male
                                                        </label>
                                                        <label class="radio-inline">
                                                            <span class="custom-radio">
                                                                <input name="id_gender" type="radio" value="Female" <%= rs.getSex().equals("female") ? "Checked" : ""%>/>
                                                                <span></span>
                                                            </span>
                                                            Female
                                                        </label>
                                                    </div>
                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label required"> Email </label>
                                                    <div class="col-md-6">
                                                        <input class="form-control" name="email" type="email" value="<%= rs.getEmail()%>" required />
                                                    </div>

                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label required"> Old Password </label>
                                                    <div class="col-md-6">
                                                        <div class="input-group js-parent-focus">
                                                            <input
                                                                class="form-control js-child-focus js-visible-password"
                                                                name="old_password"
                                                                title="At least 5 characters long"
                                                                type="password"
                                                                value=""
                                                               
                                                                />
                                                            <span class="input-group-btn">
                                                                <button class="btn" type="button" data-action="show-password" data-text-show="Show" data-text-hide="Hide">
                                                                    Show
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <!--////////////////////////////////////////454///////////////////////////-->
                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label required"> Password </label>
                                                    <div class="col-md-6">
                                                        <div class="input-group js-parent-focus">
                                                            <input
                                                                class="form-control js-child-focus js-visible-password"
                                                                name="newPassword"
                                                                title="At least 5 characters long"
                                                                type="password"
                                                                value=""
                                                               
                                                                />
                                                            <span class="input-group-btn">
                                                                <button class="btn" type="button" data-action="show-password" data-text-show="Show" data-text-hide="Hide">
                                                                    Show
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label required">Confirm password</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group js-parent-focus">
                                                            <input
                                                                class="form-control js-child-focus js-visible-password"
                                                                name="confirmPassword"
                                                                title="At least 5 characters long"
                                                                type="password"
                                                                value=""
                                                               
                                                                />
                                                            <span class="input-group-btn">
                                                                <button class="btn" type="button" data-action="show-password" data-text-show="Show" data-text-hide="Hide">
                                                                    Show
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label"> Birthdate </label>
                                                    <div class="col-md-6">
                                                        <input class="form-control" name="birthday" type="date" value="<%= rs.getBirthdate()%>" placeholder="MM/DD/YYYY" />
                                                        <span class="form-control-comment"> (E.g.: 05/31/1970) </span>
                                                    </div>

                                                    <div class="col-md-3 form-control-comment">Optional</div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-3 form-control-label required"> </label>
                                                    <div class="col-md-6">
                                                        <span class="custom-checkbox">
                                                            <label>
                                                                <input name="customer_privacy" type="checkbox" value="1" required />
                                                                <span><i class="material-icons rtl-no-flip checkbox-checked">&#xE5CA;</i></span>
                                                                Customer data privacy<br />
                                                                <em
                                                                    >The personal data you provide is used to answer queries, process orders or allow access to specific information.
                                                                    You have the right to modify and delete all the personal information found in the "My Account" page.</em
                                                                >
                                                            </label>
                                                        </span>
                                                    </div>

                                                    <div class="col-md-3 form-control-comment"></div>
                                                </div>
                                            </section>

                                            <footer class="form-footer clearfix">
                                                <input type="hidden" name="submitCreate" value="1" />

                                                <button class="btn btn-primary form-control-submit float-xs-right" data-link-action="save-customer" type="submit" name="btnAddnew">
                                                    Save
                                                </button>
                                            </footer>
                                        </form>
                                    </section>
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