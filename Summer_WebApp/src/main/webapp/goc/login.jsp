<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="/components/head.jsp" %>
  </head>

  <body>
    <%@include file="/components/header.jsp" %>
    <div class="newsletter-pop"></div>
    <main
      id="index"
      class="lang-en country-us currency-usd layout-full-width page-index tax-display-disabled"
      itemscope
      itemtype="http://schema.org/WebPage"
    >
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
                    <form id="login-form" action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/login" method="post">
                      <section>
                        <input type="hidden" name="back" value="" />

                        <div class="form-group row">
                          <label class="col-md-3 form-control-label required"> Email </label>
                          <div class="col-md-6">
                            <input class="form-control" name="email" type="email" value="" required />
                          </div>

                          <div class="col-md-3 form-control-comment"></div>
                        </div>

                        <div class="form-group row">
                          <label class="col-md-3 form-control-label required"> Password </label>
                          <div class="col-md-6">
                            <div class="input-group js-parent-focus">
                              <input
                                class="form-control js-child-focus js-visible-password"
                                name="password"
                                title="At least 5 characters long"
                                type="password"
                                value=""
                                pattern=".{5,}"
                                required
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

                        <div class="forgot-password">
                          <a href="password-recovery.html" rel="nofollow"> Forgot your password? </a>
                        </div>
                      </section>

                      <footer class="form-footer text-sm-center clearfix">
                        <input type="hidden" name="submitLogin" value="1" />

                        <button id="submit-login" class="btn btn-primary" data-link-action="sign-in" type="submit" class="form-control-submit">
                          Sign in
                        </button>
                      </footer>
                    </form>
                  </section>
                  <hr />

                  <div class="no-account">
                    <a href="register.html" data-link-action="display-register-form"> No account? Create one here </a>
                  </div>
                </section>

                <footer class="page-footer">
                  <!-- Footer content -->
                </footer>
              </section>
            </div>
          </div>
        </section>
        <%@ include file="/components/footer.jsp" %>
      </div>
    </main>

    <script src="/js/bottom-254fa158.js"></script>
  </body>
</html>
