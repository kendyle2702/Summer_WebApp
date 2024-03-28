<%-- 
    Document   : orderhistory
    Created on : Nov 6, 2023, 4:02:19 PM
    Author     : La Hoang Khoi - CE171855
--%>
<%@page import="DAOs.OrderDAO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="/components/head.jsp" %>
    </head>

    <body id="my-account" class="lang-en country-us currency-usd layout-full-width page-my-account tax-display-disabled" itemscope itemtype="http://schema.org/WebPage">
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
                            <span>Order history</span>
                        </li>
                    </ol>
                </nav>
                <section id="wrapper">
                    <div class="container">
                        <div id="content-wrapper">
                            <section id="main">
                                <header class="page-header">
                                    <h1 class="tt-innerpagetitle">
                                        Order history
                                    </h1>
                                </header>
                                <section id="content" class="page-content card card-block">
                                    <aside id="notifications">
                                        <div class="container">
                                        </div>
                                    </aside>
                                    <h6>Here are the orders you've placed since your account was created.</h6>
                                    <%                                        OrderDAO DAO = new OrderDAO();
                                        Account acc = (Account) session.getAttribute("acc");
                                        ResultSet rs = DAO.getOrderAndPayment(acc.getEmail());

                                    %>
                                    <table class="table table-striped table-bordered table-labeled hidden-sm-down">
                                        <thead class="thead-default">
                                            <tr>
                                                <th>Order ID</th>
                                                <th>Date</th>
                                                <th>Total price</th>
                                                <th class="hidden-md-down">Payment</th>
                                                <th class="hidden-md-down">Status</th>


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                while (rs.next()) {
                                            %>
                                            <tr>
                                                <th scope="row"><%=rs.getString("orderID")%> </th>
                                                <td><%=rs.getTimestamp("time")%></td>
                                                <td class="text-xs-right"><%=rs.getInt("total")%></td>
                                                <td class="hidden-md-down"><%=rs.getString("paymentMethod")%></td>
                                                <td>
                                                    <span
                                                        class="label label-pill bright"
                                                        style="background-color:#34209E"
                                                        >
                                                        <%=rs.getString("orderStatus")%>
                                                    </span>
                                                </td>


                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                    </table>

                                    <div class="orders hidden-md-up">
                                        <div class="order">
                                            <div class="row">
                                                <div class="col-xs-10">
                                                    <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/index.php?controller=order-detail&amp;id_order=16"><h3>QWYXUIZKX</h3></a>
                                                    <div class="date">11/06/2023</div>
                                                    <div class="total">$17.90</div>
                                                    <div class="status">
                                                        <span
                                                            class="label label-pill bright"
                                                            style="background-color:#34209E"
                                                            >
                                                            Awaiting bank wire payment
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-xs-2 text-xs-right">
                                                    <div>
                                                        <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/index.php?controller=order-detail&amp;id_order=16" data-link-action="view-order-details" title="Details">
                                                            <i class="material-icons">&#xE8B6;</i>
                                                        </a>
                                                    </div>
                                                    <div>
                                                        <a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/order?submitReorder=&amp;id_order=16" title="Reorder">
                                                            <i class="material-icons">&#xE863;</i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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

                </section>

                <%@include file="/components/footer.jsp" %>
            </div>
        </main>
        <script src="/js/bottom-8d0d2558.js"></script>
    </body>
</html>