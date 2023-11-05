/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.AccountDAO;
import Hash.MD5;
import Models.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;

/**
 *
 * @author QuocCu
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String path = request.getRequestURI();

        if (path.endsWith("/login")) {
            if (session.getAttribute("acc") == null) {
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                response.sendRedirect("/");
            }
        } else if (path.startsWith("/login/register")) {
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        } else if (path.startsWith("/login/recovery")) {
            request.getRequestDispatcher("/password-recovery.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        // dang nhap
        if (request.getParameter("submit") != null) {
            AccountDAO aDAO = new AccountDAO();
            String userName = request.getParameter("email");
            String pass = request.getParameter("password");
            String pass_hash = MD5.getMd5(pass);
            Account acc = aDAO.getAccountbyUsernameAndPassword(userName, pass_hash);
            if (acc == null) {
                response.sendRedirect("/login");
            } else {
                // thêm att là acc de tien lay thong tin qua các trang khác
                session.setAttribute("acc", acc);
                session.setAttribute("username", userName);

                Cookie c = new Cookie("login", userName);
                c.setMaxAge(24 * 60 * 60 * 3);
                response.addCookie(c);
                response.sendRedirect("/");
            }
        }
        if (request.getParameter("btnAddnew") != null) {
            String fullname = request.getParameter("fullName");
            String gen = request.getParameter("id_gender");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String pass_hash = MD5.getMd5(password);
            Date birthday = Date.valueOf(request.getParameter("birthday"));
            String role = "member";
            AccountDAO accnew = new AccountDAO();
            Account newAccount = new Account(email, pass_hash, fullname, birthday, role, gen, false);
            Account account = accnew.addNewAccount(newAccount);
            if (account == null) {
                response.sendRedirect("/login/register");
            } else {
                response.sendRedirect("/");
            }
        }
    }
}
