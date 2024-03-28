/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.AccountDAO;
import DAOs.AddressDAO;
import DAOs.OrderDAO;
import DAOs.PaymentDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import DAOs.ProductDAO;
import Models.Account;
import Models.Address;
import Models.Order;
import Models.Payment;
import Models.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Random;

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
                    } else {
                        response.sendRedirect("/");
                        return;
                    }
                } else {
                    response.sendRedirect("/");
                    return;
                }
            } else {
                response.sendRedirect("/");
                return;
            }
        }

        String path = request.getRequestURI();
        if (path.endsWith("/cart/checkout")) {
            List<Product> cart = (List<Product>) session.getAttribute("cart");
            if (cart == null) {
                cart = new ArrayList<>();
                session.setAttribute("cart", cart);
            }
            request.getRequestDispatcher("/cart.jsp").forward(request, response);
        } else if (path.startsWith("/cart/delete/")) {
            String[] str = path.split("/");
            int productIdToDelete = Integer.parseInt(str[str.length - 1]);
            List<Product> cartItem = (List<Product>) session.getAttribute("cart");
            for (Product product : cartItem) {
                if (product.getProductID() == productIdToDelete) {
                    cartItem.remove(product);
                    break;
                }
            }
            session.setAttribute("cart", cartItem);
            request.getRequestDispatcher("/cart.jsp").forward(request, response);
        } else {
            if (path.endsWith("/cart/order")) {
                List<Product> cartItem = (List<Product>) session.getAttribute("cart");
                session.setAttribute("cart", cartItem);
                request.getRequestDispatcher("/order.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("acc");
        List<Product> listItem = (List<Product>) session.getAttribute("cart");

        if (acc == null) {
            response.sendRedirect("/login");
            return;
        }
        if (request.getParameter("addCart") != null) {
            int productId = Integer.parseInt(request.getParameter("productId")); // Lấy id sản phẩm từ request parameter
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            ProductDAO pDAO = new ProductDAO();
            Product productToAdd = pDAO.getProduct(productId); // Lấy sản phẩm từ cơ sở dữ liệu hoặc danh sách sản phẩm

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

        if (request.getParameter("btnAddNewAddress") != null) {
            String fullname = request.getParameter("fullName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");

            String email = acc.getEmail();
            Address add = new Address(0, phone, fullname, address, email, false);
            int totalPrice = 0;
            String description = "";
            for (Product product : listItem) {
                totalPrice += (int) product.getPrice() * product.getQuantity();
                description += ", " + product.getProductName();
            }
            description = description.substring(1);
            String orderStatus = "Pending";

            AddressDAO aDAO = new AddressDAO();
            if(fullname != null){
                int check = aDAO.createNewAddress(add);
            }
            int addressID = aDAO.getAddressIDByEmail(email);
            LocalDateTime now = LocalDateTime.now();
            String timestamp = Timestamp.valueOf(now).toString();
            
            Order newInfo = new Order(Timestamp.valueOf(timestamp), orderStatus, totalPrice, description, email, addressID, false);
            OrderDAO oDAO = new OrderDAO();
            Order order = oDAO.addNew(newInfo);
            
            String paymentMethod = request.getParameter("payment-option").equals("cod") ? "COD" : "Banking";
            String paymentStatus = randomPaymentStatus();
            
            int orderID = oDAO.getOrderIDByAddressID(addressID);
            PaymentDAO pDAO = new PaymentDAO();
            Payment payment = new Payment(0, paymentMethod, paymentStatus, 0, Timestamp.valueOf(timestamp), totalPrice, "00", orderID, false);

            List<Product> cart = (List<Product>) session.getAttribute("cart");
            cart= new ArrayList<>();
            session.setAttribute("cart", cart);
            
            int checkPay = pDAO.createNewPayment(payment);
            
            response.sendRedirect("/account/showorder");
        }

    }

    private String randomPaymentStatus() {
        String[] arr = {"Pending", "Success"};
        Random rand = new Random();
        int index = rand.nextInt(arr.length);
        String randomString = arr[index];
        return randomString;
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
