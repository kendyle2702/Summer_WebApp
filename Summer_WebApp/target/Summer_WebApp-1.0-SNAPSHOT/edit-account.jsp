<%-- 
    Document   : manage
    Created on : Nov 5, 2023, 10:01:17 PM
    Author     : QuocCu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAOs.AccountDAO"%>
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
                                        <i class="header-icon lnr-laptop-phone mr-3 text-muted opacity-6"> </i>Detail Accounts
                                    </div>
                                </div>
                                <div class="card-body">
                                    <%
                                        Account account = (Account) session.getAttribute("viewAccount");
                                    %>
                                    <form action="admin" id="form-1" method="POST" class="container form__box" enctype="multipart/form-data">
                                        <div class="mt-3 mb-3 row">
                                            <label for="email" class="col-sm-2 col-form-label a">Order ID</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="email" value="<%= account.getEmail()%>" name="email" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="orderStatus" class="col-sm-2 col-form-label">Full Name</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="orderStatus" name="orderStatus" value="<%= account.getFullName()%>" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="createTime" class="col-sm-2 col-form-label">Birth Date</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" id="createTime" name="createTime" value="<%= account.getBirthdate()!=null?account.getBirthdate():""%>" readonly>
                                                <div class="message"></div>
                                            </div>
                                        </div>  
                                        <div class="mb-3 row">
                                            <label for="total" class="col-sm-2 col-form-label">Sex</label>
                                            <div class="col-sm-10">
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="sex" id="inlineRadio1" value="male" <%=account.getSex()!=null && account.getSex().equals("male")?"checked":"" %> disabled>
                                                    <label class="form-check-label" for="inlineRadio1">Male</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="sex" id="inlineRadio2" value="female" <%=account.getSex()!=null && account.getSex().equals("female")?"checked":"" %> disabled>
                                                    <label class="form-check-label" for="inlineRadio2">Female</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="role" class="col-sm-2 col-form-label">Role</label>
                                            <div class="col-sm-10">
                                                <select id="role" name="role" class="form-select" aria-label="Default select example">
                                                    <%
                                                        AccountDAO accDao = new AccountDAO();
                                                        ResultSet rs = accDao.getAll();
                                                        ArrayList roles = new ArrayList();
                                                        roles.add("admin");
                                                        while(rs.next()){
                                                            if(!roles.contains(rs.getString("role"))){
                                                                roles.add(rs.getString("role"));
                                                        %>
                                                            <option value="<%=rs.getString("role") %>" <%=rs.getString("role").equals(account.getRole())?"selected":""%>><%=rs.getString("role") %></option>
                                                           <% }
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <input type="hidden" name="updateAccount" value="<%=account.isIsDeleted()%>">
                                            <button class="btn btn-primary col-sm-1 offset-sm-2" type="submit" value="save" name="save">Save</button>
                                            <a class="btn btn-danger col-sm-2 ms-1" href="/admin/account">Back to View Orders</a>
                                        </div>
                                    </form>
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
