<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="/components/head.jsp" %>
  </head>

  <body
    id="password"
    class="lang-en country-us currency-usd layout-full-width page-password tax-display-disabled page-customer-account"
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
              <span>Reset your password</span>
            </li>
          </ol>
        </nav>

        <section id="wrapper">
          <div class="container">
            <div id="content-wrapper">
              <section id="main">
                <header class="page-header">
                  <h1 class="tt-innerpagetitle">Forgot your password?</h1>
                </header>

                <section id="content" class="page-content card card-block">
                  <form
                    action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/password-recovery"
                    class="forgotten-password"
                    method="post"
                  >
                    <ul class="ps-alert-error"></ul>

                    <header>
                      <p class="send-renew-password-link">
                        Please enter the email address you used to register. You will receive a temporary link to reset your password.
                      </p>
                    </header>

                    <section class="form-fields">
                      <div class="form-group center-email-fields">
                        <label class="col-md-3 form-control-label required">Email address</label>
                        <div class="col-md-5 email">
                          <input type="email" name="email" id="email" value="" class="form-control" required />
                        </div>
                        <button class="form-control-submit btn btn-primary hidden-xs-down" name="submit" type="submit">Send reset link</button>
                        <button class="form-control-submit btn btn-primary hidden-sm-up" name="submit" type="submit">Send</button>
                      </div>
                    </section>
                  </form>
                </section>

                <footer class="page-footer">
                  <a href="loginfd9a.html" class="account-link">
                    <i class="material-icons">&#xE5CB;</i>
                    <span>Back to login</span>
                  </a>
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
