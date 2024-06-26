/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.ProductDAO;
import Models.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Le Chi Khiem - CE171515
 */
public class ProductController extends HttpServlet {

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
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
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
        String path = request.getRequestURI();
        ProductDAO pDAO = new ProductDAO();
        HttpSession session = request.getSession();
        if (path.endsWith("/product/iceCream")) {
            session.setAttribute("type", 1);
            
            request.getRequestDispatcher("/category.jsp").forward(request, response);
        } else if (path.endsWith("/product/iceDrink")) {
            session.setAttribute("type", 4);
            request.getRequestDispatcher("/category.jsp").forward(request, response);
        } else if (path.endsWith("/product/iceJuice")) {
            session.setAttribute("type", 2);
            request.getRequestDispatcher("/category.jsp").forward(request, response);
        } else if (path.endsWith("/product/icePop")) {
            session.setAttribute("type", 3);
            request.getRequestDispatcher("/category.jsp").forward(request, response);
        } else {
            if (path.startsWith("/product/detail/")) {
                String[] str = path.split("/");
                int productID = Integer.parseInt(str[str.length - 1]);
                Product product = pDAO.getProduct(productID);
                session.setAttribute("product", product);
                request.getRequestDispatcher("/product_details.jsp").forward(request, response);
            } else {
                if (path.startsWith("/product/iceCream/sort")) {
                    session.setAttribute("type", 1);
                    if (path.endsWith("name")) {
                        session.setAttribute("sort", "name");
                    } else {
                        session.setAttribute("sort", "price");
                    }
                    request.getRequestDispatcher("/category.jsp").forward(request, response);
                } else if (path.startsWith("/product/iceDrink/sort")) {
                    session.setAttribute("type", 4);
                    if (path.endsWith("name")) {
                        session.setAttribute("sort", "name");
                    } else {
                        session.setAttribute("sort", "price");
                    }
                    request.getRequestDispatcher("/category.jsp").forward(request, response);
                } else if (path.startsWith("/product/iceJuice/sort")) {
                    session.setAttribute("type", 2);
                    if (path.endsWith("name")) {
                        session.setAttribute("sort", "name");
                    } else {
                        session.setAttribute("sort", "price");
                    }
                    request.getRequestDispatcher("/category.jsp").forward(request, response);
                } else if (path.startsWith("/product/icePop/sort")) {
                    session.setAttribute("type", 3);
                    if (path.endsWith("name")) {
                        session.setAttribute("sort", "name");
                    } else {
                        session.setAttribute("sort", "price");
                    }
                    request.getRequestDispatcher("/category.jsp").forward(request, response);
                }
            }
        }
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
        processRequest(request, response);
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
