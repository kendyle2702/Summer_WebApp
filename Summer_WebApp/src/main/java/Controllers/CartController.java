/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import DAOs.ProductDAO;
import Models.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Duy
 */
public class CartController extends HttpServlet {

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
        HttpSession session = request.getSession();
        if (path.endsWith("/cart/checkout")) {
            request.getRequestDispatcher("/cart.jsp").forward(request, response);
        }else if(path.startsWith("/cart/delete/")){
            String [] str = path.split("/");
            int productIdToDelete = Integer.parseInt(str[str.length - 1]);
            List<Product> cartItem = (List<Product>) session.getAttribute("cart");
            for(Product product: cartItem){
                if(product.getProductID() == productIdToDelete){
                    cartItem.remove(product);
                    break;
                }
            }
            session.setAttribute("cart", cartItem);
            request.getRequestDispatcher("/cart.jsp").forward(request, response);
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
        if (request.getParameter("addCart") != null) {
            int productId = Integer.parseInt(request.getParameter("productId")); // Lấy id sản phẩm từ request parameter
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            ProductDAO pDAO = new ProductDAO();
            Product productToAdd = pDAO.getProduct(productId); // Lấy sản phẩm từ cơ sở dữ liệu hoặc danh sách sản phẩm

            HttpSession session = request.getSession();
            List<Product> cart = (List<Product>) session.getAttribute("cart");
            
            if (cart == null) {
                cart = new ArrayList<>();
            }

            // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng chưa
            boolean productExistsInCart = false;
            for (Product product : cart) {
                if (product.getProductID() == productId) {
                    product.setQuantity(product.getQuantity() + quantity);
                    productExistsInCart = true;
                    break;
                }
            }

            // Nếu sản phẩm chưa tồn tại trong giỏ hàng, thêm sản phẩm mới vào giỏ hàng
            if (!productExistsInCart) {
                productToAdd.setQuantity(quantity);
                cart.add(productToAdd);
            }
            session.setAttribute("cart", cart);
            
            response.sendRedirect("/");
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
