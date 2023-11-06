/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.ProductDAO;
import Models.Account;
import Models.Product;
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
            if (!currentAcc.getRole().equals("member")) {
                if (path.endsWith("/admin")) {
                    // Tam thoi cho qua product
                    response.sendRedirect("/admin/product");
                } else if (path.endsWith("/admin/product")) {
                    request.getRequestDispatcher("/view-product.jsp").forward(request, response);
                } else if (path.startsWith("/admin/product/view/")) {
                    String[] s = path.split("/");
                    try {
                        int pro_id = Integer.parseInt(s[s.length - 1]);
                        ProductDAO pDAO = new ProductDAO();
                        Product product = pDAO.getProduct(pro_id);
                        if (product != null) {
                            session.setAttribute("viewProduct", product);
                            request.getRequestDispatcher("/edit-product.jsp").forward(request, response);
                        } else {
                            response.sendRedirect("/admin/product");
                        }
                    } catch (IOException | NumberFormatException ex) {
                        response.sendRedirect("/admin/product");
                    }
                } else {
                    response.sendRedirect("/admin");
                }
            } else {
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
