/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author QuocCu
 */
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String path = request.getRequestURI();

        if (session.getAttribute("acc") != null) {
            Account currentAcc = (Account) session.getAttribute("acc");
            if (currentAcc.getRole() != "member") {
                if(path.endsWith("/admin")){
                    request.getRequestDispatcher("/manage.jsp").forward(request, response);
                }
                // ... cac route khac
                else{
                    response.sendRedirect("/admin");
                }
            } else{
                response.sendRedirect("/");
            }
        } else {
            response.sendRedirect("/");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
