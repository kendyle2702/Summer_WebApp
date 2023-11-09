<%-- 
    Document   : manage
    Created on : Nov 5, 2023, 10:01:17 PM
    Author     : QuocCu
--%>

<%@page import="java.sql.Date"%>
<%@page import="DAOs.OrderDAO"%>
<%@page import="Models.Account"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAOs.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/components/headAdmin.jsp"%>
    </head>
    <body>
        <% Account acc = (Account) session.getAttribute("acc");%>
        <div class="app-container app-theme-white body-tabs-shadow fixed-header fixed-sidebar">
            <div class="app-header header-shadow">
                <div class="app-header__logo">
                    <a href="/admin"><div class="logo-src">Summer</div></a> 
                    <div class="header__pane ml-auto">
                        <div>
                            <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="app-header__mobile-menu">
                    <div>
                        <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="app-header__menu">
                    <span>
                        <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                            <span class="btn-icon-wrapper">
                                <i class="fa fa-ellipsis-v fa-w-6"></i>
                            </span>
                        </button>
                    </span>
                </div>
                <div class="app-header__content">
                    <div class="app-header-left">
                        <div class="search-wrapper">
                            <div class="input-holder">
                                <input type="text" class="search-input" placeholder="Type to search" />
                                <button class="search-icon"><span></span></button>
                            </div>
                            <button class="close"></button>
                        </div>
                    </div>
                    <div class="app-header-right">
                        <div class="header-btn-lg pr-0">
                            <div class="widget-content p-0">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-left">
                                        <div class="btn-group">
                                            <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                                <img width="42" class="rounded-circle" src="/img/avatar.png" alt />
                                                <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                            </a>
                                            <div tabindex="-1" role="menu" aria-hidden="true" class="rm-pointers dropdown-menu-lg dropdown-menu dropdown-menu-right">
                                                <div class="dropdown-menu-header">
                                                    <div class="dropdown-menu-header-inner bg-info">
                                                        <div class="menu-header-image opacity-2" style="background-image: url('assets/images/dropdown-header/city3.jpg')"></div>
                                                        <div class="menu-header-content text-left">
                                                            <div class="widget-content p-0">
                                                                <div class="widget-content-wrapper">
                                                                    <div class="widget-content-left mr-3">
                                                                        <img width="42" class="rounded-circle" src="/img/avatar.png" alt="avatar" />
                                                                    </div>
                                                                    <div class="widget-content-left">
                                                                        <div class="widget-heading" style="display: inline-block; max-width: 100px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"><%=acc.getFullName()%></div>
                                                                        <div class="widget-subheading opacity-8" style="text-transform: capitalize;"><%=acc.getRole()%></div>
                                                                    </div>
                                                                    <div class="widget-content-right mr-2">
                                                                        <a href ="/login/out">
                                                                            <button class="btn-pill btn-shadow btn-shine btn btn-focus">Logout</button>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="scroll-area-xs" style="height: 150px">
                                                    <div class="scrollbar-container ps">
                                                        <ul class="nav flex-column">
                                                            <li class="nav-item-header nav-item" style="text-transform: lowercase">Email: <%=acc.getEmail()%></li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <ul class="nav flex-column">
                                                    <li class="nav-item-divider mb-0 nav-item"></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="widget-content-left ml-3 header-user-info">
                                        <div class="widget-heading" style="display: inline-block; max-width: 100px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"><%=acc.getFullName()%></div>
                                        <div class="widget-subheading" style="text-transform: capitalize"><%=acc.getRole()%></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="app-main">
                <div class="app-sidebar sidebar-shadow">
                    <div class="app-header__logo">
                        <div class="logo-src"></div>
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>
                    <div class="scrollbar-sidebar">
                        <div class="app-sidebar__inner">
                            <ul class="vertical-nav-menu">
                                <li class="app-sidebar__heading">Order Management</li>
                                <li class="mm-active">
                                    <a href="/admin/order"> <i class="metismenu-icon pe-7s-note2"></i>View Orders </a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
                <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="tabs-animation">
                            <div class="card mb-3">
                                <div class="card-header-tab card-header">
                                    <div class="card-header-title font-size-lg text-capitalize font-weight-normal">
                                        <i class="header-icon lnr-printer icon-gradient bg-ripe-malin"> </i>Statistics Order Status
                                    </div>
                                </div>
                                <div id="chart"></div>

                                <%
                                    OrderDAO orderChartDAO = new OrderDAO();
                                    ResultSet rsChart = orderChartDAO.getOrderStatus();
                                    String series = "";
                                    String lables = "";
                                    if (session.getAttribute("startDate") != null && session.getAttribute("endDate") != null) {
                                        rsChart = orderChartDAO.getOrdersStatusFromDates((Date) session.getAttribute("startDate"), (Date) session.getAttribute("endDate"));
                                    } else {
                                        rsChart = orderChartDAO.getOrderStatus();
                                    }
                                    while (rsChart.next()) {
                                        if (!rsChart.getString("orderStatus").equals("Pending") && !rsChart.getString("orderStatus").equals("Cancelled")) {
                                            lables += "'" + rsChart.getString("orderStatus") + "',";
                                            series += rsChart.getInt("quantity") + ",";
                                        }
                                    }
                                %>
                                <script>
                                    var options = {
                                        series: [<%=series%>],
                                        chart: {
                                            width: 380,
                                            type: 'pie',
                                        },
                                        labels: [<%=lables%>],
                                        responsive: [{
                                                breakpoint: 480,
                                                options: {
                                                    chart: {
                                                        width: 200
                                                    },
                                                    legend: {
                                                        position: 'bottom'
                                                    }
                                                }
                                            }]
                                    };

                                    var chart = new ApexCharts(document.querySelector("#chart"), options);
                                    chart.render();
                                </script>
                            </div>
                            <div class="card mb-3">
                                <div class="card-header-tab card-header">
                                    <div class="card-header-title font-size-lg text-capitalize font-weight-normal">
                                        <i class="header-icon lnr-laptop-phone mr-3 text-muted opacity-6"> </i>View Orders
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title mb-0">Predefined Date Ranges</h5>
                                    <button class="btn btn-primary mb-5 mt-3" id="reportrange">
                                        <i class="fa fa-calendar pr-1"></i>
                                        <span></span>
                                        <i class="fa pl-1 fa-caret-down"></i>
                                    </button>
                                    <form action="admin" method="POST" class="ml-4" style="display:inline-block;margin-bottom:5px;">
                                        <input type="hidden" name="startdate" id="startdate" value="1900-01-01">
                                        <input type="hidden" name="enddate" id="enddate" value="2200-01-01">
                                        <input type="hidden" name="search" id="search" value="search">
                                        <button type="submit" style="height: 34px" class="mb-2 mr-2 btn-icon btn-shadow btn-outline-2x btn btn-outline-primary"><i class="lnr-funnel btn-icon-wrapper"></i>Filter</button>
                                    </form>

                                    <table style="width: 100%" id="example" class="table table-hover table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Order Status</th>
                                                <th>Create Time</th>
                                                <th>Full Name</th>
                                                <th>Address</th>
                                                <th>Total</th>
                                                <th>Description</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                OrderDAO orDao = new OrderDAO();
                                                ResultSet rs = null;
                                                if (session.getAttribute("startDate") != null && session.getAttribute("endDate") != null) {
                                                    rs = orDao.getOrdersFromDates((Date) session.getAttribute("startDate"), (Date) session.getAttribute("endDate"));
                                                } else {
                                                    rs = orDao.getAll();
                                                }
                                                while (rs.next()) {
                                                 if (!rs.getString("orderStatus").equals("Pending") && !rs.getString("orderStatus").equals("Cancelled")) {
                                                    
                                            %>
                                            <tr>
                                                <td><%=rs.getInt("orderID")%></td>
                                                <td><%
                                                    switch (rs.getString("orderStatus")) {
                                                        case "Pending":
                                                            out.print("<button class=\"mb-2 mr-2 btn btn-warning\">" + rs.getString("orderStatus") + "</button>");
                                                            break;
                                                        case "Give back":
                                                            out.print("<button class=\"mb-2 mr-2 btn btn-alternate\">" + rs.getString("orderStatus") + "</button>");
                                                            break;
                                                        case "Awaiting delivery":
                                                            out.print("<button class=\"mb-2 mr-2 btn btn-info\">" + rs.getString("orderStatus") + "</button>");
                                                            break;
                                                        case "Delivering":
                                                            out.print("<button class=\"mb-2 mr-2 btn btn-primary\">" + rs.getString("orderStatus") + "</button>");
                                                            break;
                                                        case "Success":
                                                            out.print("<button class=\"mb-2 mr-2 btn btn-success\">" + rs.getString("orderStatus") + "</button>");
                                                            break;
                                                        case "Cancelled":
                                                            out.print("<button class=\"mb-2 mr-2 btn btn-danger\">" + rs.getString("orderStatus") + "</button>");
                                                            break;
                                                    }
                                                    %></td>
                                                <td><%=rs.getTimestamp("time")%></td>
                                                <td><%=rs.getString("fullName")%></td>
                                                <td><%=rs.getString("detailAddress")%></td>
                                                <td><%=rs.getInt("total")%>đ</td>
                                                <td><%=rs.getString("description")%></td>
                                                <td> <%if (rs.getString("orderStatus").equals("Awaiting delivery")) {%>
                                                    <a  href="/admin/order/accept/<%=rs.getInt("orderID")%>"><button class="mb-2 mr-2 btn-icon btn-pill btn btn-outline-primary"><i class="pe-7s-upload btn-icon-wrapper"></i>Receive Order</button></a>
                                                    
                                                    <%}
                                                    else if(rs.getString("orderStatus").equals("Delivering")){%>
                                                    <a  href="/admin/order/success/<%=rs.getInt("orderID")%>"><button class="mb-2 mr-2 btn-icon btn-pill btn btn-outline-success"><i class="pe-7s-tools btn-icon-wrapper"></i>Success</button></a>
                                                    <a  href="/admin/order/giveback/<%=rs.getInt("orderID")%>"><button class="mb-2 mr-2 btn-icon btn-pill btn btn-outline-danger"><i class="pe-7s-trash btn-icon-wrapper"></i>Failed</button></a>
                                                </td>
                                            </tr>
                                            <%}}}
                                            %>

                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Order Status</th>
                                                <th>Create Time</th>
                                                <th>Full Name</th>
                                                <th>Address</th>
                                                <th>Total</th>
                                                <th>Description</th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="app-drawer-overlay d-none animated fadeIn"></div>
        <script type="text/javascript" src="/js/main.d810cf0ae7f39f28f336.js"></script>
        <style>
            .daterangepicker .ranges li.active{
                background-color: white ;
                color: black;
            }
        </style>
        <script>
                                    function toDate(originalDateStr) {
                                        let originalDate = new Date(originalDateStr);
                                        let year = originalDate.getFullYear();
                                        let month = (originalDate.getMonth() + 1).toString().padStart(2, '0');
                                        let day = originalDate.getDate().toString().padStart(2, '0');
                                        let formattedDate = year + '-' + month + '-' + day;

                                        return formattedDate
                                    }
                                    let startdate = document.querySelector("#startdate");
                                    let enddate = document.querySelector("#enddate");
                                    setTimeout(() => {

                                        document.querySelector("#reportrange span").textContent = "All"


                                        document.querySelector(".ranges ul").innerHTML = document.querySelector(".ranges ul").innerHTML + '<li class="all" data-range-key>All</li>'



                                        console.log(document.querySelector(".ranges li.all"))




                                        document.querySelector("#reportrange").addEventListener('click', () => {
                                            document.querySelector(".ranges li.active").classList.remove("active")
                                        })
                                        document.querySelector(".ranges li.all").addEventListener('click', () => {
                                            document.querySelector(".daterangepicker").style.display = 'none'
                                            document.querySelector("#reportrange span").textContent = "All"

                                            startdate.value = "1900-01-01";
                                            enddate.value = "2200-01-01";
                                        });

                                        document.querySelectorAll(".ranges li").forEach((element) => {
                                            if (!element.classList.contains('all')) {
                                                element.addEventListener('click', () => {
                                                    setTimeout(() => {
                                                        console.log(document.querySelector("#reportrange span").textContent)

                                                        let dateRange = document.querySelector("#reportrange span").textContent;

                                                        let startDateString = dateRange.split(' - ')[0]
                                                        let endDateString = dateRange.split(' - ')[1]

                                                        startdate.value = toDate(startDateString)
                                                        enddate.value = toDate(endDateString)
                                                    }, 50);
                                                });
                                            }
                                        });

                                        document.querySelector(".applyBtn").addEventListener('click', () => {
                                            setTimeout(() => {
                                                let dateRange = document.querySelector("#reportrange span").textContent;

                                                let startDateString = dateRange.split(' - ')[0]
                                                let endDateString = dateRange.split(' - ')[1]

                                                startdate.value = toDate(startDateString)
                                                enddate.value = toDate(endDateString)
                                            }, 100);
                                        });
                                    }, 50);
        </script>
    </body>
</html>
F