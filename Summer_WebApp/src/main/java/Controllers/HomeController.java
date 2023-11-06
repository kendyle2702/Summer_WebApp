/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.AccountDAO;
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
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (session.getAttribute("acc") == null) {
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
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
