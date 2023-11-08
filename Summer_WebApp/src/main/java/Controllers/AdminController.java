/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.AccountDAO;
import DAOs.CategoryDAO;
import DAOs.OrderDAO;
import DAOs.ProductDAO;
import Models.Account;
import Models.Category;
import Models.Order;
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

        if (session.getAttribute("acc") != null) {
            Account currentAcc = (Account) session.getAttribute("acc");
            if (!currentAcc.getRole().equals("member")) {// Admin 
                if (path.endsWith("/admin")) {
                    request.getRequestDispatcher("/admin.jsp").forward(request, response);
                } else if (path.startsWith("/admin/product")) {
                    if (path.endsWith("/admin/product")) {
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
                    } else if (path.startsWith("/admin/product/delete/")) {
                        String[] s = path.split("/");
                        try {
                            int pro_id = Integer.parseInt(s[s.length - 1]);
                            ProductDAO pDAO = new ProductDAO();
                            pDAO.delete(pro_id);
                            response.sendRedirect("/admin/product");
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/product");
                        }
                    } else if (path.startsWith("/admin/product/again/")) {
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
                } else if (path.startsWith("/admin/category")) {
                    if (path.endsWith("/admin/category")) {
                        request.getRequestDispatcher("/view-category.jsp").forward(request, response);
                    } else if (path.startsWith("/admin/category/view/")) {
                        String[] s = path.split("/");
                        try {
                            int cate_id = Integer.parseInt(s[s.length - 1]);
                            CategoryDAO cateDAO = new CategoryDAO();
                            Category category = cateDAO.getCategory(cate_id);
                            if (category != null) {
                                session.setAttribute("viewCategory", category);
                                request.getRequestDispatcher("/edit-category.jsp").forward(request, response);
                            } else {
                                response.sendRedirect("/admin/category");
                            }
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/category");
                        }
                    } else if (path.endsWith("/admin/category/add")) {
                        request.getRequestDispatcher("/add-category.jsp").forward(request, response);
                    } else if (path.startsWith("/admin/category/delete/")) {
                        String[] s = path.split("/");
                        try {
                            int cate_id = Integer.parseInt(s[s.length - 1]);
                            CategoryDAO cateDAO = new CategoryDAO();
                            cateDAO.delete(cate_id);
                            response.sendRedirect("/admin/category");
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/category");
                        }
                    } else if (path.startsWith("/admin/category/again/")) {
                        String[] s = path.split("/");
                        try {
                            int cate_id = Integer.parseInt(s[s.length - 1]);
                            CategoryDAO cateDAO = new CategoryDAO();
                            cateDAO.sellingAgain(cate_id);
                            response.sendRedirect("/admin/category");
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/category");
                        }
                    } else {
                        response.sendRedirect("/admin");
                    }
                } else if (path.startsWith("/admin/order")) {
                    if (path.endsWith("/admin/order")) {
                        request.getRequestDispatcher("/view-order.jsp").forward(request, response);
                    }
                    else if (path.startsWith("/admin/order/accept/")) {
                        String[] s = path.split("/");
                        try {
                            int cate_id = Integer.parseInt(s[s.length - 1]);
                            OrderDAO orDAO = new OrderDAO();
                            orDAO.acceptOrder(cate_id);
                            response.sendRedirect("/admin/order");
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/order");
                        }
                    } else if (path.startsWith("/admin/order/decline/")) {
                        String[] s = path.split("/");
                        try {
                            int cate_id = Integer.parseInt(s[s.length - 1]);
                            OrderDAO orDAO = new OrderDAO();
                            orDAO.declineOrder(cate_id);
                            response.sendRedirect("/admin/order");
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/order");
                        }
                    }
                    else if (path.startsWith("/admin/order/view/")) {
                        String[] s = path.split("/");
                        try {
                            int cate_id = Integer.parseInt(s[s.length - 1]);
                            OrderDAO orDAO = new OrderDAO();
                            Order order = orDAO.getOrder(cate_id);
                            if (order != null) {
                                session.setAttribute("viewOrder", order);
                                request.getRequestDispatcher("/edit-order.jsp").forward(request, response);
                            } else {
                                response.sendRedirect("/admin/account");
                            }
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/order");
                        }
                    }
                    

                } else if (path.startsWith("/admin/payment")) {
                    if (path.endsWith("/admin/payment")) {
                        request.getRequestDispatcher("/view-payment.jsp").forward(request, response);
                    }
                } else if (path.startsWith("/admin/account")) {
                    if (path.endsWith("/admin/account")) {
                        request.getRequestDispatcher("/view-account.jsp").forward(request, response);
                    }
                    else if(path.startsWith("/admin/account/ban")){
                        String[] s = path.split("/");
                        try {
                            String email = s[s.length - 1];
                            AccountDAO accDAO = new AccountDAO();
                            accDAO.ban(email);
                            response.sendRedirect("/admin/account");
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/account");
                        }
                    }
                    else if(path.startsWith("/admin/account/unban")){
                        String[] s = path.split("/");
                        try {
                            String email = s[s.length - 1];
                            AccountDAO accDAO = new AccountDAO();
                            accDAO.unban(email);
                            response.sendRedirect("/admin/account");
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/account");
                        }
                    }
                    else if (path.endsWith("/admin/account/add")) {
                        request.getRequestDispatcher("/add-account.jsp").forward(request, response);
                    }
                    else if (path.startsWith("/admin/account/view/")) {
                        String[] s = path.split("/");
                        try {
                            String email = s[s.length - 1];
                            AccountDAO accDAO = new AccountDAO();
                            Account account = accDAO.getAccountByUsername(email);
                            if (account != null) {
                                session.setAttribute("viewAccount", account);
                                request.getRequestDispatcher("/edit-account.jsp").forward(request, response);
                            } else {
                                response.sendRedirect("/admin/account");
                            }
                        } catch (IOException | NumberFormatException ex) {
                            response.sendRedirect("/admin/account");
                        }
                        
                    }
                    
                }
                else if(path.startsWith("/admin/analytics")){
                    request.getRequestDispatcher("/admin.jsp").forward(request, response);
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

            Product newProduct = new Product(productID, productName, discount, quantity, description, categoryID, picture, Boolean.parseBoolean(request.getParameter("updateProduct")), date, price);
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
        } else if (request.getParameter("updateCategory") != null) {

            int categoryID = Integer.parseInt(request.getParameter("categoryID"));
            String catagoryName = request.getParameter("categoryName");
            String description = request.getParameter("description");

            Category newCategory = new Category(categoryID, catagoryName, description, Boolean.parseBoolean(request.getParameter("updateCategory")));
            CategoryDAO cateDAO = new CategoryDAO();
            Category category = cateDAO.update(categoryID, newCategory);

            if (category == null) {
                Category oldInfo = cateDAO.getCategory(categoryID);
                session.setAttribute("viewCategory", oldInfo);
                response.sendRedirect("/admin/category/view/" + categoryID);
            } else {
                response.sendRedirect("/admin/category");
            }
        } else if (request.getParameter("addCategory") != null) {
            String catagoryName = request.getParameter("categoryName");
            String description = request.getParameter("description");

            Category newCategory = new Category(catagoryName, description, false);
            CategoryDAO cateDAO = new CategoryDAO();
            Category category = cateDAO.addNew(newCategory);

            if (category != null) {
                response.sendRedirect("/admin/category");
            } else {
                response.sendRedirect("/admin/category/add");
            }
        } 
        else if (request.getParameter("addAccount") != null) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            String fullname = request.getParameter("fullname");
            String sex = request.getParameter("sex");
            Date birthdate = null;
            if(!request.getParameter("birthdate").isEmpty() && request.getParameter("birthdate") != null ){
                birthdate = Date.valueOf(request.getParameter("birthdate"));
            }
            else{
                birthdate = null;
            }
            String role = request.getParameter("role");
            

            Account newAccount = new Account(email, password, fullname,birthdate,role,sex,false);
            AccountDAO accDAO = new AccountDAO();
            Account acc = accDAO.addNewAccount(newAccount);

            if (acc != null) {
                response.sendRedirect("/admin/account");
            } else {
                session.setAttribute("isDuplicated", "true");
                response.sendRedirect("/admin/account/add");
            }
        } 
        else if (request.getParameter("updateAccount") != null) {
            
            String role = request.getParameter("role");
            String email = request.getParameter("email");
            AccountDAO accDAO = new AccountDAO();
            accDAO.updateRole(email,role);
            response.sendRedirect("/admin/account");
        }
        else if (request.getParameter("search") != null) {
            Date startdate = Date.valueOf(request.getParameter("startdate"));
            Date enddate = Date.valueOf(request.getParameter("enddate"));
            
            session.setAttribute("startDate", startdate);
            session.setAttribute("endDate", enddate);
            
            response.sendRedirect("/admin/order");
        } 
        else if (request.getParameter("setMonth") != null) {
            String month = request.getParameter("month");
            System.out.println(month);
            session.setAttribute("month", month);
            response.sendRedirect("/admin/analytics");
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
