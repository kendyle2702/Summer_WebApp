/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import Models.Product;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class ProductDAO {

	Connection conn;

	public ProductDAO() {
		try {
			conn = DB.DBConnection.connect();
		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public ResultSet getAll() {
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery("select * from product");
		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return rs;
	}

	public Product addNew(Product newProduct) {
		int count = 0;
		try {
			PreparedStatement ps = conn.prepareStatement("Insert into Product values(?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, newProduct.getProductID());
			ps.setString(2, newProduct.getProductName());
			ps.setInt(3, newProduct.getDiscount());
			ps.setInt(4, newProduct.getQuantity());
			ps.setString(5, newProduct.getDescription());
			ps.setInt(6, newProduct.getCategoryID());
			ps.setString(7, newProduct.getImage());
			ps.setBoolean(8, newProduct.isIsDeleted());
			ps.setDate(9, newProduct.getCreateTime());
			ps.setFloat(10, newProduct.getPrice());

			count = ps.executeUpdate(); // tra ve so dong bi anh huong trong sql

		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}

		return (count == 0) ? null : newProduct;
	}

	public Product getProduct(String producID) {
		Product product = null;
		try {
			PreparedStatement ps = conn.prepareStatement("Select * from Product where productID = ?");
			ps.setString(1, producID);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				product = new Product(rs.getInt("productID"), rs.getString("productName"), rs.getInt("discount"),
								rs.getInt("quantity"), rs.getString("description"), rs.getInt("categoryID"),
								rs.getString("image"), rs.getBoolean("isDeleted"), rs.getDate("createTime"),
								rs.getFloat("price"));
			}

		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return product;
	}

	public boolean getProductCheckID(String producID) {
		boolean checkID = false;
		try {
			PreparedStatement ps = conn.prepareStatement("Select * from Product where productID = ?");
			ps.setString(1, producID);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				checkID = true;
			}

		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
			return checkID;
		}
		return checkID;
	}

	public Product update(String pro_id, Product newProduct) {
		int count = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(
							"update product set productName =?, discount=?, quantity=?, description=?, categoryID=?,image=?,isDeleted=?, createTime=?, price=? where productID =?");

			ps.setString(1, newProduct.getProductName());
			ps.setInt(2, newProduct.getDiscount());
			ps.setInt(3, newProduct.getQuantity());
			ps.setString(4, newProduct.getDescription());
			ps.setInt(5, newProduct.getCategoryID());
			ps.setString(6, newProduct.getImage());
			ps.setBoolean(7, newProduct.isIsDeleted());
			ps.setDate(8, newProduct.getCreateTime());
			ps.setFloat(9, newProduct.getPrice());
			ps.setInt(10, newProduct.getProductID());
			count = ps.executeUpdate();
		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return (count == 0) ? null : newProduct;
	}

	public void delete(String productID) {
		boolean isDelete = true;
		try {
			PreparedStatement ps = conn.prepareStatement("update product set isDeleted=?  where productID =?");
			ps.setBoolean(1, isDelete);
			ps.executeUpdate();
		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public ResultSet getNearSevenDay() {
		ResultSet rs = null;
		try {
			PreparedStatement ps = conn.prepareStatement(
							"Select * from Product where createTime >= DATEADD(day, -7, GETDATE()) AND createTime <= GETDATE()");
			rs = ps.executeQuery();
		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return rs;
	}

	public ResultSet getProductByCategory(int cate) {
		ResultSet rs = null;
		try {
			PreparedStatement ps = conn.prepareStatement("select * from Product where categoryID =?");
			ps.setInt(1, cate);
			rs = ps.executeQuery();
		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return rs;
	}

	public ResultSet getTop10BestSeller() {
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery("SELECT TOP 10 * FROM Product ORDER BY discount DESC");
		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return rs;
	}

	public ResultSet get5SpecialProducts() {
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery("SELECT TOP 5 * FROM Product ORDER BY productID ASC");
		} catch (SQLException ex) {
			Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return rs;
	}

}
