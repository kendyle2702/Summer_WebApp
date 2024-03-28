<%-- 
    Document   : addresspage
    Created on : Nov 9, 2023, 1:20:09 AM
    Author     : La Hoang Khoi - CE171855
--%>

<%@page import="DAOs.AddressDAO"%>
<%@page import="Models.Address"%>
<%@page import="DAOs.OrderDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                        Your addresses
                                    </h1>
                                </header>

                                <%                                    AddressDAO DAO = new AddressDAO();
                                    Account acc = (Account) session.getAttribute("acc");

                                    ResultSet rs = DAO.getAllByEmail(acc.getEmail());
                                    if (rs == null) {
                                        response.sendRedirect("/account/addresses/create");
                                    }
                                    int no =0;
                                    while (rs.next()) {
                                        no++;
                                %>
                                <section id="content" class="page-content card card-block">
                                    <aside id="notifications">
                                        <div class="container">
                                        </div>
                                    </aside>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <article id="address-18" class="address" data-id-address="18">
                                            <div class="address-body">
                                                <h4>No. <%= no%></h4>
                                                <address><%=rs.getString("detailAddress")%><br><%=rs.getString("phoneNumber")%></address>
                                            </div>
                                            <div class="address-footer">
                                                <a href="/account/addresses/update/<%=rs.getInt("addressID")%>" data-link-action="edit-address">
                                                    <i class="material-icons">&#xE254;</i>
                                                    <span>Update</span>
                                                </a>
                                                <a href="/account/addresses/delete/<%=rs.getInt("addressID")%>" data-link-action="delete-address">
                                                    <i class="material-icons">&#xE872;</i>
                                                    <span>Delete</span>
                                                </a>
                                            </div>
                                        </article>
                                    </div>                  
                                    <div class="clearfix"></div>
                                    <div class="addresses-footer">
                                        <a href="/account/addresses/create" data-link-action="add-address">
                                            <i class="material-icons">&#xE145;</i>
                                            <span>Create new address</span>
                                        </a>
                                    </div>
                                </section>
                                <%
                                    }
                                %>
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