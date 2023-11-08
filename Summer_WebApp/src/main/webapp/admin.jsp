<%-- 
    Document   : manage
    Created on : Nov 5, 2023, 10:01:17 PM
    Author     : QuocCu
--%>

<%@page import="DAOs.AccountDAO"%>
<%@page import="DAOs.CategoryDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="DAOs.OrderDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.time.YearMonth"%>
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
                                <li class="app-sidebar__heading">Dashboard</li>
                                <li class="mm-active">
                                    <a href="/admin/analytics"> <i class="metismenu-icon pe-7s-display1"></i>Analytics </a>
                                </li>
                            </ul>
                            <ul class="vertical-nav-menu">
                                <li class="app-sidebar__heading">Product Management</li>
                                <li class="mm-active">
                                    <a href="/admin/product"> <i class="metismenu-icon pe-7s-note2"></i>View Products </a>
                                </li>
                                <li>
                                    <a href="/admin/product/add"> <i class="metismenu-icon pe-7s-download"></i>Add Products </a>
                                </li>
                            </ul>

                            <ul class="vertical-nav-menu">
                                <li class="app-sidebar__heading">Category Management</li>
                                <li class="mm-active">
                                    <a href="/admin/category"> <i class="metismenu-icon pe-7s-note2"></i>View Categories </a>
                                </li>
                                <li>
                                    <a href="/admin/category/add"> <i class="metismenu-icon pe-7s-download"></i>Add Categories </a>
                                </li>
                            </ul>
                            <ul class="vertical-nav-menu">
                                <li class="app-sidebar__heading">Order Management</li>
                                <li class="mm-active">
                                    <a href="/admin/order"> <i class="metismenu-icon pe-7s-note2"></i>View Orders </a>
                                </li>
                            </ul>

                            <ul class="vertical-nav-menu">
                                <li class="app-sidebar__heading">Account Management</li>
                                <li class="mm-active">
                                    <a href="/admin/account"> <i class="metismenu-icon pe-7s-note2"></i>View Accounts </a>
                                </li>
                                <li>
                                    <a href="/admin/account/add"> <i class="metismenu-icon pe-7s-download"></i>Add Accounts </a>
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
                                        <i class="header-icon lnr-chart-bars icon-gradient bg-night-fade"> </i>View Income In Month
                                    </div>
                                </div>
                                <div id="chart" style="background: white;margin-bottom: 50px"></div>
                                <%
                                    OrderDAO orderChartDao = new OrderDAO();

                                    String monthYear = "";
                                    if(session.getAttribute("month") != null){
                                       monthYear = (String)session.getAttribute("month");
                                    }
                                    else{
                                       monthYear = "2023-11";
                                    }
                                    
                                    String month = monthYear.split("-")[1];
                                    
                                    YearMonth yearMonth = YearMonth.of(Integer.parseInt(monthYear.split("-")[0]), Integer.parseInt(month));
                                    int numberOfDaysInMonth = yearMonth.lengthOfMonth();
                                    
                                    ArrayList<String> dates = new ArrayList<String>();
                                    
                                    for (int i = 1; i <= numberOfDaysInMonth; i++) {
                                        if(i<10){
                                            dates.add(monthYear +"-"+ "0" + String.valueOf(i));
                                        }
                                        else{
                                            dates.add(monthYear +"-"+ String.valueOf(i));
                                        }
                                    }  
                                    
                                    
                                    String datesInMonth = "";
                                    String dataIncome = "";
                                    String dataOrders = "";
                                    for (String date : dates) {
                                          datesInMonth += "'" + date.split("-")[2]+"',"  ;
                                          dataIncome += orderChartDao.getTotalOfDate(Date.valueOf(date)) + ",";
                                          dataOrders += orderChartDao.getOrderQuantityOfDate(Date.valueOf(date)) + ",";
                                          System.out.println("Date: " + datesInMonth); 
                                          System.out.println("dataIncome " + dataIncome); 
                                          System.out.println("dataOrders " + dataOrders); 
                                    }
                                    
                                %>
                                <script>
                                    var options = {
                                        series: [{
                                                name: "Income",
                                                data: [<%=dataIncome%>]
                                            }],
                                        chart: {
                                            height: 350,
                                            type: 'line',
                                            zoom: {
                                                enabled: false
                                            }
                                        },
                                        dataLabels: {
                                            enabled: false
                                        },
                                        stroke: {
                                            curve: 'straight'
                                        },
                                        title: {
                                            text: '',
                                            align: 'left'
                                        },
                                        grid: {
                                            row: {
                                                colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
                                                opacity: 0.5
                                            },
                                        },
                                        xaxis: {
                                            categories: [<%=datesInMonth%>],
                                        }
                                    };

                                    var chart = new ApexCharts(document.querySelector("#chart"), options);
                                    chart.render();
                                </script>
                            </div>
                            <div class="card mb-2">
                                <div class="card-header-tab card-header">
                                    <div class="card-header-title font-size-lg text-capitalize font-weight-normal">
                                        <i class="header-icon lnr-book icon-gradient bg-amy-crisp"> </i>View Orders In Month
                                    </div>
                                </div>
                                <div id="chart2" style="background: white;margin-bottom: 50px"></div>
                                <script>
                                    var options = {
                                        series: [{
                                                name: "Quantity",
                                                data: [<%=dataOrders%>]
                                            }],
                                        chart: {
                                            height: 350,
                                            type: 'line',
                                            zoom: {
                                                enabled: false
                                            }
                                        },
                                        dataLabels: {
                                            enabled: false
                                        },
                                        stroke: {
                                            curve: 'straight'
                                        },
                                        title: {
                                            text: '',
                                            align: 'left'
                                        },
                                        grid: {
                                            row: {
                                                colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
                                                opacity: 0.5
                                            },
                                        },
                                        xaxis: {
                                            categories: [<%=datesInMonth%>],
                                        }
                                    };

                                    var chart = new ApexCharts(document.querySelector("#chart2"), options);
                                    chart.render();
                                </script>
                            </div>
                            <div class="card mb-3">
                                <div class="card-header-tab card-header">
                                    <div class="card-header-title font-size-lg text-capitalize font-weight-normal">
                                        <i class="header-icon lnr-calendar-full icon-gradient bg-night-fade"> </i>
                                        
                                    </div>
                                    <form action="admin" method="POST" class="container" >
                                            <div class="row align-items-center">
                                                <label for="month" class="col-sm-2 col-form-label">Choose Time</label>
                                                <div class="col-sm-5">
                                                    <input type="month" class="form-control" id="month" name="month" value="<%=(String)session.getAttribute("month")!=null?session.getAttribute("month"):"2023-11"%>">
                                                    <div class="message"></div>
                                                </div>
                                                <div class="col-sm-5">
                                                    <input type="hidden" name="setMonth" value="setMonth">
                                                    <button type="submit" class="btn btn-primary btn-lg">Set Month</button>
                                                </div>
                                            </div>
                                    </form>
                                </div>
                            </div>


                            <div class="card-header-tab card-header">
                                <div class="card-header-title font-size-lg text-capitalize font-weight-normal"><i class="header-icon lnr-rocket mr-3 text-muted opacity-6"> </i>Statistics
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card mb-3 widget-chart">
                                        <div class="icon-wrapper rounded-circle">
                                            <div class="icon-wrapper-bg bg-primary"></div>
                                            <i class="lnr-cog text-primary"></i>
                                        </div>
                                        <%
                                            ProductDAO productDAO = new ProductDAO();
                                        %>
                                        <div class="widget-numbers"><span><%=productDAO.getRows()%></span></div>
                                        <div class="widget-subheading">Total Products</div>
                                        <div class="widget-description text-success">
                                            <span class="pl-1"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card mb-3 widget-chart">
                                        <div class="icon-wrapper rounded-circle">
                                            <div class="icon-wrapper-bg bg-success"></div>
                                            <i class="lnr-screen text-success"></i>
                                        </div>
                                        <div class="widget-numbers"><span><%=orderChartDao.getRows() %></span></div>
                                        <div class="widget-subheading">Total Orders</div>
                                        <div class="widget-description text-warning"><span class="pr-1"></span>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card mb-3 widget-chart">
                                        <div class="icon-wrapper rounded-circle">
                                            <div class="icon-wrapper-bg bg-danger"></div>
                                            <i class="lnr-laptop-phone text-danger"></i>
                                        </div>
                                        <%
                                            CategoryDAO cateDAO = new CategoryDAO();
                                        %>
                                        <div class="widget-numbers"><span><%=cateDAO.getRows() %></span></div>
                                        <div class="widget-subheading">Total Categories</div>
                                        <div class="widget-description text-primary"><span class="pr-1"></span>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card mb-3 widget-chart">
                                        <div class="icon-wrapper rounded-circle">
                                            <div class="icon-wrapper-bg bg-info"></div>
                                            <i class="lnr-graduation-hat text-info"></i>
                                        </div>
                                        <%
                                            AccountDAO accDAO = new AccountDAO();
                                        %>
                                        <div class="widget-numbers"><span><%=cateDAO.getRows() %></span></div>
                                        <div class="widget-subheading">Total Accounts</div>
                                        <div class="widget-description text-info">

                                            <span class="pl-1"></span></div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card mb-3 widget-chart">
                                        <div class="icon-wrapper rounded">
                                            <div class="icon-wrapper-bg bg-focus"></div>
                                            <div class="center-svg">
                                                <i class="fa fa-arrow-right ">
                                                </i>
                                            </div>
                                        </div>
                                       
                                        <div class="widget-numbers"><span><%=orderChartDao.totalIncome()%>đ</span></div>
                                        <div class="widget-subheading">Total Income</div>
                                        <div class="widget-description text-danger"><span class="pr-1"></span>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card mb-3 widget-chart">
                                        <div class="icon-wrapper rounded">
                                            <div class="icon-wrapper-bg bg-primary"></div>
                                            <div class="center-svg">
                                                <i class="fa fa-angle-down ">
                                                </i>
                                            </div>
                                        </div>
                                        <div class="widget-numbers"><span><%=productDAO.getRowsOnSale()%></span></div>
                                        <div class="widget-subheading">Products On Sale Quantity</div>
                                        <div class="widget-description text-focus">
                                            <span class="pl-1"></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="app-drawer-overlay d-none animated fadeIn"></div>
        <script type="text/javascript" src="/js/main.d810cf0ae7f39f28f336.js"></script>
    </body>
</html>
