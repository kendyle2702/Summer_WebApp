<%-- 
    Document   : manage
    Created on : Nov 5, 2023, 10:01:17 PM
    Author     : QuocCu
--%>

<%@page import="DAOs.OrderDAO"%>
<%@page import="Models.Order"%>
<%@page import="DAOs.CategoryDAO"%>
<%@page import="Models.Product"%>
<%@page import="Models.Account"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/components/headAdmin.jsp"%>
        <style>
            h4{
                padding-bottom: 20px;
                border-bottom: 1px solid rgba(0,0,0,0.1);
            }
            .form__box{
                max-width: 1000px;
            }
            label{
                text-align: end;
            }
            .img__box{
                width: 100px;
                height: 100px;
            }
            .img__box img{
                width: 100%;
                height: 100%;
                object-fit: contain;
            }
            .invalid div {
                color: red;
            }
            .invalid input {
                border: 1px solid red;
            }
            @media screen and (max-width:768px){
                label{
                    text-align: start;
                }
            }
        </style>
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
                                        <i class="header-icon lnr-laptop-phone mr-3 text-muted opacity-6"> </i>Detail Orders
                                    </div>
                                </div>
                                <div class="card-body">
                                    <%
                                        Order order = (Order) session.getAttribute("viewOrder");  
                           
                                        OrderDAO orDAO = new OrderDAO();
                                        ResultSet rs = orDAO.getProductByOrder(order.getOrderID());
                                    %>
                                    <form action="admin" id="form-1" method="POST" class="container form__box" enctype="multipart/form-data">
                                        <div class="mt-3 mb-3 row">
                                            <label for="orderID" class="col-sm-2 col-form-label a">Order ID</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="orderID" value="<%= order.getOrderID()%>" name="orderID" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="orderStatus" class="col-sm-2 col-form-label">Order Status</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="orderStatus" name="orderStatus" value="<%= order.getOrderStatus()%>" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="createTime" class="col-sm-2 col-form-label">Create Time</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="createTime" name="createTime" value="<%= order.getTime()%>" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="address" class="col-sm-2 col-form-label">Address</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="address" name="address" value="<%=orDAO.getAddressByOrder(order.getOrderID())%>" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>       
                                        <div class="mb-3 row">
                                            <label for="total" class="col-sm-2 col-form-label">Total</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="total" name="total" value="<%= order.getTotal()%>đ" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="email" name="email" value="<%= order.getEmail()%>" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="email" class="col-sm-2 col-form-label">Payment Method</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="email" name="email" value="<%=orDAO.getPaymentMethod(order.getOrderID())%>" readonly> 
                                                <%----%>
                                                <div class="message"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="email" class="col-sm-2 col-form-label">Payment Status</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="email" name="email" value="<%=orDAO.getPaymentStatus(order.getOrderID())%>" readonly>
                                                <div class="message"></div>
                                                <%----%>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="description" class="col-sm-2 col-form-label">Description</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="description" rows="3" name="description" readonly><%= order.getDescription()%></textarea>
                                                <div class="message"></div>
                                            </div>
                                        </div> 
                                    </form>
                                    <div class="card-header">
                                        <i class="header-icon lnr-gift icon-gradient bg-mixed-hopes"> </i>Items
                                    </div>
                                    <div class="row">
                                       <style>
                                             .card img{
                                                 height: 300px;
                                                 width: 100%;
                                                 object-fit: contain;
                                             }
                                       </style>
                                       <% 
    
                                           while(rs.next()){%>
                                         <div class="col-lg-4 mt-3">
                                             <div class="card" >
                                                 <img src="/img/<%=rs.getString("image") %>" class="card-img-top" alt="item">
                                                 <div class="card-body">
                                                     <h5 class="card-title"><%=rs.getString("productName") %></h5>
                                                     <p class="card-text">Quantity: <%=rs.getInt("quantity") %></p>
                                                     <p class="card-text">Total: <span style="color:red;font-size: 18px;font-weight: bold;"><%=rs.getInt("total")*rs.getInt("quantity") %></span></p>
                                                 </div>
                                             </div>
                                         </div>
                                           <%}
                                       %>

                                    </div>            
                                    <a class="btn btn-danger col-sm-2 ms-1 mt-5" href="/admin/order">Back to View Orders</a>            
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="app-drawer-overlay d-none animated fadeIn"></div>





        <script type="text/javascript" src="/js/main.d810cf0ae7f39f28f336.js"></script>


        <script src="${pageContext.request.contextPath}/js/Validator.js"></script>

        <script>
            Validator({
                form: "#form-1",
                message: ".message", // Selector class
                invalid: "invalid", // Tên class message
                rules: [

                ]
            });
        </script>
    </body>
</html>
