<%@include file="/header.jsp" %>
  <main>
    <div id="page" class="">
      <nav data-depth="2" class="breadcrumb hidden-sm-down">
        <ol itemscope itemtype="http://schema.org/BreadcrumbList">
          <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
            <a itemprop="item" href="index.html"><span itemprop="name">Home</span></a>
            <meta itemprop="position" content="1" />
          </li>

          <li>
            <span>Contact us</span>
          </li>
        </ol>
      </nav>

      <section id="wrapper">
        <aside id="notifications">
          <div class="container"></div>
        </aside>

        <div class="container">
          <div id="left-column" class="col-xs-12 col-sm-4 col-md-3">
            <div class="contact-rich">
              <h4>Store information</h4>
              <div class="block">
                <div class="icon"><i class="material-icons">&#xE55F;</i></div>
                <div class="data">demo store<br />United States</div>
              </div>
              <hr />
              <div class="block">
                <div class="icon"><i class="material-icons">&#xE0CD;</i></div>
                <div class="data">
                  Call us:<br />
                  <a href="tel:+91 0123456789">+91 0123456789</a>
                </div>
              </div>
              <hr />
              <div class="block">
                <div class="icon"><i class="material-icons">&#xE158;</i></div>
                <div class="data email">
                  Email us:<br />
                  <a href="mailto:demo@gmail.com">demo@gmail.com</a>
                </div>
              </div>
            </div>
          </div>

          <div id="content-wrapper" class="left-column col-xs-12 col-sm-8 col-md-9">
            <section id="main">
              <section id="content" class="page-content card card-block">
                <section class="contact-form">
                  <form action="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/contact-us" method="post"
                    enctype="multipart/form-data">
                    <section class="form-fields">
                      <div class="form-group row">
                        <div class="col-md-9 col-md-offset-3">
                          <h3>Contact us</h3>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Subject</label>
                        <div class="col-md-6">
                          <select name="id_contact" class="form-control form-control-select">
                            <option value="2">Customer service</option>
                            <option value="1">Webmaster</option>
                          </select>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Email address</label>
                        <div class="col-md-6">
                          <input class="form-control" name="from" type="email" value="" placeholder="your@email.com" />
                        </div>
                      </div>

                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Attachment</label>
                        <div class="col-md-6">
                          <input type="file" name="fileUpload" class="filestyle" data-buttonText="Choose file" />
                        </div>
                        <span class="col-md-3 form-control-comment">
                          optional
                        </span>
                      </div>

                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Message</label>
                        <div class="col-md-9">
                          <textarea class="form-control" name="message" placeholder="How can we help?"
                            rows="3"></textarea>
                        </div>
                      </div>

                      <div class="form-group row">
                        <div class="offset-md-3"></div>
                      </div>
                    </section>

                    <footer class="form-footer text-sm-right">
                      <style>
                        input[name="url"] {
                          display: none !important;
                        }
                      </style>
                      <input type="text" name="url" value="" />
                      <input type="hidden" name="token" value="e0ce764e115b822c8a8352e7065c86d2" />
                      <input class="btn btn-primary" type="submit" name="submitMessage" value="Send" />
                    </footer>
                  </form>
                </section>
              </section>

              <footer class="page-footer">
                <!-- Footer content -->
              </footer>
            </section>
          </div>
        </div>
      </section>
      <%@include file="/footer.jsp" %>