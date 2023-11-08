/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAOs.ProductDAO;
import Models.Account;
import Models.Product;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Duy
 */
public class AjaxController extends HttpServlet {

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
			out.println("<title>Servlet AjaxController</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Servlet AjaxController at " + request.getContextPath() + "</h1>");
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
		if (request.getParameter("getAllProduct") != null) {
			try {
				ProductDAO pDao = new ProductDAO();
				ResultSet rs = pDao.getAllWithCategory();
				List<Map<String, Object>> rows = new ArrayList<>();
				ResultSetMetaData rsmd = rs.getMetaData();
				int columnCount = rsmd.getColumnCount();

				while (rs.next()) {
					// Represent a row in DB. Key: Column name, Value: Column value
					Map<String, Object> row = new HashMap<>();
					for (int i = 1; i <= columnCount; i++) {
						// Note that the index is 1-based
						String colName = rsmd.getColumnName(i);
						Object colVal = rs.getObject(i);
						row.put(colName, colVal);
					}
					rows.add(row);
				}
				response.setContentType("application/json");
				response.setCharacterEncoding("UTF-8");
				ObjectMapper objectMapper = new ObjectMapper();
				objectMapper.writeValue(response.getOutputStream(), rows);
			} catch (SQLException ex) {
				Logger.getLogger(testJson.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		if(request.getParameter("getCart") != null){
			Account acc = (Account)session.getAttribute("acc");
			List<Product> cart = (List<Product>) session.getAttribute("cart");
			if (cart == null || acc == null) {
				cart = new ArrayList<>();
			}
			session.setAttribute("cart", cart);
			ObjectMapper objectMapper = new ObjectMapper();
			String jsonCart = objectMapper.writeValueAsString(cart);

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(jsonCart);
		}
		if (request.getParameter("updateQuantity") != null) {
			int productId = Integer.parseInt(request.getParameter("productId"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			ProductDAO pDAO = new ProductDAO();
			Product productToAdd = pDAO.getProduct(productId);

			List<Product> cart = (List<Product>) session.getAttribute("cart");

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			Map<String, String> responseData = new HashMap<>();
			ObjectMapper objectMapper = new ObjectMapper();

			if (cart == null) {
				cart = new ArrayList<>();
			}

			boolean productExistsInCart = false;
			for (Product product : cart) {
				if (product.getProductID() == productId) {
					if(quantity > productToAdd.getQuantity()){
						response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
						responseData.put("title", "Quantity is not enough!");
						responseData.put("text", "The number of remaining products is "
								+ productToAdd.getQuantity() + "! Please choose again");
						String jsonResponse = objectMapper.writeValueAsString(responseData);
						response.getWriter().write(jsonResponse);
						return;
					}
					product.setQuantity(quantity);
					productExistsInCart = true;
					break;
				}
			}

			if (!productExistsInCart) {
				if (quantity > productToAdd.getQuantity()) {
					response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
					responseData.put("title", "Quantity is not enough!");
					responseData.put("text", "The number of remaining products is "
							+ productToAdd.getQuantity() + "! Please choose again");
					String jsonResponse = objectMapper.writeValueAsString(responseData);
					response.getWriter().write(jsonResponse);
					return;
				}
				productToAdd.setQuantity(quantity);
				cart.add(productToAdd);
			}
			session.setAttribute("cart", cart);

			String jsonCart = objectMapper.writeValueAsString(cart);

			response.getWriter().write(jsonCart);
		}

		if (request.getParameter("deleteCart") != null) {
			int productIdToDelete = Integer.parseInt(request.getParameter("productId"));
			List<Product> cartItem = (List<Product>) session.getAttribute("cart");
			for (Product product : cartItem) {
				if (product.getProductID() == productIdToDelete) {
					cartItem.remove(product);
					break;
				}
			}
			session.setAttribute("cart", cartItem);
			ObjectMapper objectMapper = new ObjectMapper();
			String jsonCart = objectMapper.writeValueAsString(cartItem);

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(jsonCart);
		}
		if(request.getParameter("addCart") != null){
			int productId = Integer.parseInt(request.getParameter("productId")); // Lấy id sản phẩm từ request parameter
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			ProductDAO pDAO = new ProductDAO();
			Product productToAdd = pDAO.getProduct(productId); // Lấy sản phẩm từ cơ sở dữ liệu hoặc danh sách sản phẩm

			List<Product> cart = (List<Product>) session.getAttribute("cart");

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			Map<String, String> responseData = new HashMap<>();
			ObjectMapper objectMapper = new ObjectMapper();

			if (cart == null) {
				cart = new ArrayList<>();
			}

			boolean productExistsInCart = false;
			for (Product product : cart) {
				if (product.getProductID() == productId) {
					if(product.getQuantity() + quantity > productToAdd.getQuantity()){
						response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
						responseData.put("title", "Quantity is not enough!");
						responseData.put("text", "The number of remaining products is "
								+ (productToAdd.getQuantity() - product.getQuantity()) + "! Please choose again");
						String jsonResponse = objectMapper.writeValueAsString(responseData);
						response.getWriter().write(jsonResponse);
						return;
					}
					product.setQuantity(product.getQuantity() + quantity);
					product.setPrice((100 - product.getDiscount()) *product.getPrice()/100);
					productExistsInCart = true;
					break;
				}
			}

			if (!productExistsInCart) {
				if(productToAdd.getQuantity() < quantity){
					response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
					responseData.put("title", "Quantity is not enough!");
					responseData.put("text", "The number of remaining products is "
							+ productToAdd.getQuantity() + "! Please choose again");
					String jsonResponse = objectMapper.writeValueAsString(responseData);
					response.getWriter().write(jsonResponse);
					return;
				}
				productToAdd.setQuantity(quantity);
				productToAdd.setPrice((100 - productToAdd.getDiscount()) *productToAdd.getPrice()/100);
				cart.add(productToAdd);
			}
			session.setAttribute("cart", cart);
			String jsonCart = objectMapper.writeValueAsString(cart);

			response.getWriter().write(jsonCart);
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
