<%-- 
    Document   : wishlist
    Created on : Nov 6, 2023, 9:00:07 PM
    Author     : La Hoang Khoi - CE171855
--%>

<%@page import="DAOs.WishlistDAO"%>
<html lang="en">
    <head>
        <%@include file="/components/head.jsp" %>
    </head



    <body id="my-account" class="lang-en country-us currency-usd layout-full-width page-my-account tax-display-disabled" itemscope itemtype="http://schema.org/WebPage">
        <div class="ttloading-bg spinner"></div>

        <%@include file="/components/header.jsp" %>

        <script>
            function deleteWishList(id) {
                Swal.fire({
                    title: "Are you sure?",
                    text: "Do you want to delete it!!!",
                    icon: "question",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Yes, delete it!"
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = "/account/mywishlist/delete/" + id
                    }
                });
            }

        </script>

        <main>
            <%                if (session.getAttribute("success") != null) {
            %>
            <script>
                function notifyAddWishlist() {
                    Swal.fire({
                        icon: "success",
                        title: "<%= session.getAttribute("success")%>",
                        showConfirmButton: true,

                    });
                }
                notifyAddWishlist();
            </script>

            <%
                    request.getSession().removeAttribute("success");
                }
            %>

            <div id="page" class="">
                <nav data-depth="3" class="breadcrumb hidden-sm-down">
                    <ol itemscope itemtype="http://schema.org/BreadcrumbList">
                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/"><span itemprop="name">Home</span></a>
                            <meta itemprop="position" content="1">
                        </li>
                        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                            <a itemprop="item" href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/my-account"><span itemprop="name">Your Account</span></a>
                            <meta itemprop="position" content="2">
                        </li>
                        <li>
                            <span>Your Wishlist</span>
                        </li>
                    </ol>
                </nav>
                <section id="wrapper">
                    <aside id="notifications">
                        <div class="container">
                        </div>
                    </aside>

                    <div class="container">
                        <div id="content-wrapper">


                            <div id="mywishlist">
                                <h1 class="h1 tt-innerpagetitle">My wishlists</h1>

                                <form method="post" class="card card-block" id="form_wishlist">
                                    <fieldset>
                                        <h3 class="page-subheading">New wishlist</h3>
                                        <div class="form-group">
                                            <input type="hidden" name="token" value="9adee427a2999c0ba48a2a46f3005fe9" />
                                            <label class="align_right" for="name">
                                                Name
                                            </label>
                                            <input type="text" id="name" name="nameWL" class="inputTxt form-control" value="" />
                                        </div>
                                        <p class="submit">
                                            <button id="submitWishlist" class="btn btn-primary" type="submit" name="submitWishlist">
                                                <span>Save</span>
                                            </button>
                                        </p>
                                    </fieldset>
                                </form>

                                <%                                    WishlistDAO wl = new WishlistDAO();
                                    Account acc = (Account) session.getAttribute("acc");


                                %>
                                <div id="block-history" class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th class="first_item">Name</th>
                                                <th class="item mywishlist_first">Qty</th>
                                                <th class="item mywishlist_second">Created</th>
                                                <th class="item mywishlist_second">Default</th>
                                                <th class="item mywishlist_second">Direct Link</th>

                                                <th class="last_item mywishlist_first">Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody> 
                                            <%                                                ResultSet rs = wl.getWistListByEmail(acc.getEmail());
                                                while (rs.next()) {
                                                    int quan = wl.quantityWishlist(rs.getInt("wishlistID"));
                                            %>
                                            <tr id="wishlist_16">
                                                <td style="width:200px;">
                                                    <a href="#" onclick="javascript:event.preventDefault();
                                                            WishlistManage('block-order-detail', '16');">
                                                        <%=rs.getString("wishlistName")%>
                                                    </a>
                                                </td>

                                                <td class="bold align_center">
                                                    <%= quan == -1 ? "0" : quan%>
                                                </td>

                                                <td>  <%=rs.getTimestamp("time")%></td>
                                                <td class="wishlist_default">
                                                    <a href="/account/mywishlist/setdefault/<%=rs.getInt("wishlistID")%>">

                                                        <% if (rs.getBoolean("defaultValue")) { %>
                                                        <span class="material-symbols-outlined">check_circle </span>
                                                        <% }%>

                                                        <% if (!rs.getBoolean("defaultValue")) { %>
                                                        <span class="material-symbols-outlined">cancel</span>
                                                        <% }%>


                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="/account/wishlistdetail/<%=rs.getInt("wishlistID")%>">
                                                        View
                                                    </a>
                                                </td>

                                                <td class="wishlist_delete">
                                                    <a class="icon" href="#" onclick="deleteWishList(<%=rs.getInt("wishlistID")%>)";>
                                                        <i class="material-icons">&#xE872;</i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <%
                                            }

                                        %>
                                    </table>
                                </div>
                                <div id="block-order-detail">&nbsp;</div>
                                <div class="page-footer clearfix">

                                    <a href="/account" class="account-link">
                                        <i class="material-icons">&#xE408;</i>
                                        <span>Back to your account</span>
                                    </a>
                                    <a href="/" class="account-link">
                                        <i class="material-icons">&#xE88A;</i>
                                        <span>Home</span>
                                    </a>

                                </div>
                            </div>


                        </div>



                    </div>

                </section>


            </div>
        </main>
        <script src="/js/bottom-8d0d2558.js"></script>
    </body>
</html>