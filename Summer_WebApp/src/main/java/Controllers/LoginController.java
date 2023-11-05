/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.AccountDAO;
import Hash.MD5;
import Models.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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

        if (session.getAttribute("acc") != null) {
            Account curAcc = (Account) session.getAttribute("acc");
            if(curAcc.getRole() != "member"){
                response.sendRedirect("/admin");
            }
            else{
                response.sendRedirect("/");
            }
        } else if (path.endsWith("/login")) {
            String username = null;
            Cookie[] cList = request.getCookies();
            if (cList != null) {
                boolean logged = false;
                for (Cookie c : cList) {
                    if (c.getName().equals("login")) {
                        username = c.getValue();
                        logged = true;
                        break;
                    }
                }
                if (logged) {
                    AccountDAO aDAO = new AccountDAO();
                    Account acc = aDAO.getAccountByUsername(username);
                    if (acc != null) {
                        session.setAttribute("acc", acc);
                    }
                    if (acc.getRole() != "member") {
                        response.sendRedirect("/admin");
                    } else {
                        response.sendRedirect("/");
                    }
                } else {
                    request.getRequestDispatcher("/login.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        } else if (path.endsWith("/login/register")) {
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        } else if (path.endsWith("/login/recovery")) {
            request.getRequestDispatcher("/password-recovery.jsp").forward(request, response);
        } else if (path.endsWith("/login/out")) {
            Cookie[] cList = request.getCookies();
            if (cList != null) {
                for (Cookie c : cList) {
                    c.setValue("");
                    c.setPath("/");
                    c.setMaxAge(0);
                    response.addCookie(c);
                }

            }
            session.invalidate();
            response.sendRedirect("/");
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
            Account acc = aDAO.getAccountByUsernameAndPassword(userName, pass_hash);
            if (acc == null) {
                session.setAttribute("isSuccess", "false");
                response.sendRedirect("/login");
            } else {
                // thêm att là acc de tien lay thong tin qua các trang khác
                session.setAttribute("acc", acc);
                Cookie c = new Cookie("login", userName);
                c.setMaxAge(24 * 60 * 60 * 3);
                response.addCookie(c);
                response.sendRedirect("/");
            }
        }
    }
}
