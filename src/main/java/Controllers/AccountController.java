/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.AccountDAO;
import DAOs.AddressDAO;
import DAOs.OrderDAO;
import DAOs.WishlistDAO;
import Hash.MD5;
import Models.Account;
import Models.Address;
import Models.Order;
import Models.Wishlist;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class AccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AccountController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AccountController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String path = request.getRequestURI();
        if (path.endsWith("/account")) {
            request.getRequestDispatcher("/inforcustomer.jsp").forward(request, response);
        } else if (path.endsWith("/account/showaccount")) {
            String username = "";
            Cookie[] cookie = request.getCookies();
            for (Cookie c : cookie) {
                if (c.getName().equals("login")) {
                    username = c.getValue();
                    break;
                }
            }

            session.setAttribute("username", username);
            request.getRequestDispatcher("/infodetail.jsp").forward(request, response);
        } else if (path.endsWith("/account/addresses")) {
            request.getRequestDispatcher("/addresspage.jsp").forward(request, response);
        } else if (path.startsWith("/account/addresses/update")) {
            try {
                String[] s = path.split("/");
                int id = Integer.parseInt(s[s.length - 1]);
                session.setAttribute("idaddress", id);
//                AddressDAO DAO = new AddressDAO();
//                Address newInfo = DAO.getAddressByID(id);
//                DAO.updateAddresss(id, newInfo);
                // session.setAttribute("success", "Delete wishlist successful!");
                request.getRequestDispatcher("/updateaddress.jsp").forward(request, response);
            } catch (Exception e) {
                response.sendRedirect("/account/addresses");
            }
        } else if (path.startsWith("/account/addresses/create")) {

            request.getRequestDispatcher("/createaddress.jsp").forward(request, response);
        } else if (path.startsWith("/account/addresses/delete")) {
            try {
                String[] s = path.split("/");
                int id = Integer.parseInt(s[s.length - 1]);

                AddressDAO DAO = new AddressDAO();
                DAO.deleteAddress(id);
//                DAO.updateAddresss(id, newInfo);
                // session.setAttribute("success", "Delete wishlist successful!");
                response.sendRedirect("/account/addresses");
            } catch (Exception e) {
                response.sendRedirect("/account/addresses");
            }
        } else if (path.endsWith("/account/showorder")) {
            request.getRequestDispatcher("/orderhistory.jsp").forward(request, response);
        } else if (path.endsWith("/account/mywishlist")) {
            request.getRequestDispatcher("/wishlist.jsp").forward(request, response);
        } else if (path.startsWith("/account/mywishlist/delete")) {
            try {
                String[] s = path.split("/");
                int id = Integer.parseInt(s[s.length - 1]);
                WishlistDAO DAO = new WishlistDAO();
                DAO.deleteWishlist(id);
                session.setAttribute("success", "Delete wishlist successful!");
                response.sendRedirect("/account/mywishlist");
            } catch (Exception e) {
                response.sendRedirect("/account/mywishlist");
            }
        } else if (path.startsWith("/account/mywishlist/setdefault/")) {
            try {
                String[] s = path.split("/");
                int id = Integer.parseInt(s[s.length - 1]);
                WishlistDAO DAO = new WishlistDAO();
                DAO.updateDefault(id);
                response.sendRedirect("/account/mywishlist");
            } catch (Exception e) {
                response.sendRedirect("/account/mywishlist");
            }

        } else if (path.startsWith("/account/wishlistdetail")) {
            try {
                String[] s = path.split("/");
                int id = Integer.parseInt(s[s.length - 1]);

                session.setAttribute("detailwishlist", id);
                request.getRequestDispatcher("/detailwishlist.jsp").forward(request, response);
            } catch (Exception e) {
                response.sendRedirect("/account/mywishlist");
            }

        }

        //  processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        // processRequest(request, response);
        //   HttpSession session = request.getSession();
        if (request.getParameter("submitCreate") != null) {

            String fullname = request.getParameter("fullName");
            String gen = request.getParameter("id_gender");
            String email = request.getParameter("email");

            String oldPassword = request.getParameter("old_password");

            String newPassword = request.getParameter("newPassword");
            //  String comfirmPassword = request.getParameter("confirmPassword");
            Date birthday = Date.valueOf(request.getParameter("birthday"));

//            boolean checkPass = false;
//            if (password.equals(comfirmPassword)) {
//                checkPass = true;
//            }
            AccountDAO DAO = new AccountDAO();
            AccountDAO accnew = new AccountDAO();
            if (oldPassword != null && oldPassword.equals("") != true) {

                boolean checkPass = false;
                String pass_hash = MD5.getMd5(oldPassword);
                if (pass_hash.equals(DAO.getPassByEmail(email))) {
                    checkPass = true;
                }

                if (checkPass) {
                    String pass_hashNew = MD5.getMd5(newPassword);
                    Account newAccount = new Account(email, pass_hashNew, fullname, birthday, "member", gen, false);
                    Account account = accnew.update(email, newAccount);
                    if (account == null) {
                        response.sendRedirect("/account/showaccount");
                    } else {
                        response.sendRedirect("/account");
                    }
                } else {
                    // Xu li khi ghi sai mat khau cu
                }
            } else {
                Account newAccount = new Account(email, fullname, birthday, "member", gen, false);
                Account account = accnew.updateNotPass(email, newAccount);
                if (account == null) {
                    response.sendRedirect("/account/showaccount");
                } else {
                    response.sendRedirect("/account");
                }

            }

        }

        //Create WishList
        if (request.getParameter("submitWishlist") != null) {
            String nameWistList = request.getParameter("nameWL");

            Account acc = (Account) session.getAttribute("acc");

            String email = acc.getEmail();
            WishlistDAO wl = new WishlistDAO();
            Timestamp timeNow = new Timestamp(System.currentTimeMillis());
            Wishlist w = new Wishlist(timeNow, 0, nameWistList, email, false, false);

            int checkCreate = wl.createNewWishlist(w);

            if (checkCreate == 0) {

                response.sendRedirect("/account/mywishlist");
            } else {
                session.setAttribute("success", "Add wishlist successful!");
                response.sendRedirect("/account/mywishlist");
            }

        }

        if (request.getParameter("submitAddress") != null) {
            int id = Integer.parseInt(request.getParameter("idadr"));
            String phone = request.getParameter("phone");
            String name = request.getParameter("fullname");
            String adress = request.getParameter("address");
            String email = request.getParameter("email");
            boolean isDelete = false;
            Address adr = new Address(id, phone, name, adress, email, isDelete);

            AddressDAO DAO = new AddressDAO();
            int count = DAO.updateAddresss(id, adr);
            if (count == 0) {
                response.sendRedirect("/account/addresses/update/" + id);
            } else {
                response.sendRedirect("/account/addresses");
            }

        }
        if (request.getParameter("createAddress") != null) {
            Account acc = (Account) session.getAttribute("acc");
            String phone = request.getParameter("phone");
            String name = request.getParameter("fullname");
            String adress = request.getParameter("address");
            String email = request.getParameter("email");
            boolean isDelete = false;
            Address adr = new Address(0, phone, name, adress, acc.getEmail(), isDelete);

            AddressDAO DAO = new AddressDAO();
            int count = DAO.createNewAddress(adr);
            if (count == 0) {
                response.sendRedirect("/account/addresses");
            } else {
                response.sendRedirect("/account/addresses");
            }

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
