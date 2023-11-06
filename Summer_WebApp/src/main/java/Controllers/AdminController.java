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
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.nio.file.Paths;
import java.sql.Date;

/**
 *
 * @author QuocCu
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxRequestSize = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10
)
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String path = request.getRequestURI();
        int count = 0;
        System.out.println(++count + ": " + path);
        if (session.getAttribute("acc") != null) {
            Account currentAcc = (Account) session.getAttribute("acc");
            if (!currentAcc.getRole().equals("member")) {
                if (path.endsWith("/admin")) {
                    request.getRequestDispatcher("/admin.jsp").forward(request, response);
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
                } else if (path.endsWith("/admin/product/add")) {
                    request.getRequestDispatcher("/add-product.jsp").forward(request, response);
                } else if (path.startsWith("/admin/product/delete")) {
                    String[] s = path.split("/");
                    try {
                        int pro_id = Integer.parseInt(s[s.length - 1]);
                        ProductDAO pDAO = new ProductDAO();
                        pDAO.delete(pro_id);
                        response.sendRedirect("/admin/product");
                    } catch (IOException | NumberFormatException ex) {
                        response.sendRedirect("/admin/product");
                    }
                } else if (path.startsWith("/admin/product/again")) {
                    String[] s = path.split("/");
                    try {
                        int pro_id = Integer.parseInt(s[s.length - 1]);
                        ProductDAO pDAO = new ProductDAO();
                        pDAO.sellingAgain(pro_id);
                        response.sendRedirect("/admin/product");
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
        HttpSession session = request.getSession();

        if (request.getParameter("updateProduct") != null) {

            int productID = Integer.parseInt(request.getParameter("productID"));
            String productName = request.getParameter("productName");
            float price = Float.parseFloat(request.getParameter("price"));
            int discount = Integer.parseInt(request.getParameter("discount"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            String picture = "";
            Part part = request.getPart("picture");
            if (Paths.get(part.getSubmittedFileName()).toString().isEmpty()) {
                picture = (String) session.getAttribute("picture");
            } else {
                try {
                    String realPath = request.getServletContext().getRealPath("/img");
                    picture = Paths.get(part.getSubmittedFileName()).toString();
                    part.write(realPath + "/" + picture);
                } catch (Exception ex) {
                    response.sendRedirect("/admin/product/view/" + productID);
                }
            }
            session.removeAttribute("picture");

            Date date = Date.valueOf(request.getParameter("date"));
            int categoryID = Integer.parseInt(request.getParameter("category"));
            String description = request.getParameter("description");

            Product newProduct = new Product(productID, productName, discount, quantity, description, categoryID, picture, false, date, price);
            ProductDAO pDAO = new ProductDAO();
            Product product = pDAO.update(productID, newProduct);

            if (product == null) {
                Product oldInfo = pDAO.getProduct(productID);
                session.setAttribute("viewProduct", oldInfo);
                response.sendRedirect("/admin/product/view/" + productID);
            } else {
                response.sendRedirect("/admin/product");
            }
        } else if (request.getParameter("addProduct") != null) {
            String productName = request.getParameter("productName");
            float price = Float.parseFloat(request.getParameter("price"));
            int discount = Integer.parseInt(request.getParameter("discount"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            String picture = "";
            try {
                Part part = request.getPart("picture");
                String realPath = request.getServletContext().getRealPath("/img");
                picture = Paths.get(part.getSubmittedFileName()).toString();
                part.write(realPath + "/" + picture);
            } catch (Exception ex) {
                response.sendRedirect("/admin/product/add");
            }

            Date date = new Date(new Date(System.currentTimeMillis()).getTime());
            int categoryID = Integer.parseInt(request.getParameter("category"));
            String description = request.getParameter("description");

            Product newProduct = new Product(productName, discount, quantity, description, categoryID, picture, false, date, price);
            ProductDAO pDAO = new ProductDAO();
            Product product = pDAO.addNew(newProduct);
            
            if (product != null) {
                response.sendRedirect("/admin/product");
            } else {
                response.sendRedirect("/admin/product/add");
            }
        }
    }

    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        if (!contentDisposition.contains("filename=")) {
            return null;
        }
        int beginIndex = contentDisposition.indexOf("filename=") + 10;
        int endIndex = contentDisposition.length() - 1;

        return contentDisposition.substring(beginIndex, endIndex);
    }

}
