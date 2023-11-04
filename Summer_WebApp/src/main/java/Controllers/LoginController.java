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

/**
 *
 * @author QuocCu
 */
public class LoginController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        String path = request.getRequestURI();
//        // tao duong dan cho trang 
//        if (path.startsWith("/Login")) {
//            // cat chuoi thong qua dau' /
//    
//                // dua vao` session de bao voi nguoi dung da~ login fail
//                // dua vao trang index.jsp
//               // HttpSession session = request.getSession();
//              //  session.setAttribute("loginFail", "1");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
//            } else {
//                request.getRequestDispatcher("/login.jsp").forward(request, response);
//            }
            
        }
            
     

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int a =5;
                if (request.getParameter("submit") != null ) {
            AccountDAO aDAO = new AccountDAO();
            MD5 md5 = new MD5();
            String userName = request.getParameter("email");
            String pass = request.getParameter("password");
            String pass_hash = md5.getMd5(pass);
            //Account acc = aDAO.getAccountbyUsernameAndPassword(userName, pass_hash);
            boolean acc = aDAO.getAccountbyUsernameAndPassword(userName, pass_hash);
            if (acc == false) {
                response.sendRedirect("login.jsp");
            } else {
                Cookie c = new Cookie("login", userName);
                c.setMaxAge(24 * 60 * 60 * 3);
                response.addCookie(c);
                response.sendRedirect("index.jsp");
            }
        }
    }
}
