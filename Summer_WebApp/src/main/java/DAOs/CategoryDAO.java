/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import Models.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class CategoryDAO {

    Connection conn;

    public CategoryDAO() {
        try {
            conn = DB.DBConnection.connect();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Category");
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Category addNew(Category newCategory) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("Insert into Category values(?,?,?)");
            ps.setString(1, newCategory.getCategoryName());
            ps.setString(2, newCategory.getDescription());
            ps.setBoolean(3, newCategory.isIsDeleted());

            count = ps.executeUpdate(); // tra ve so dong bi anh huong trong sql

        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return (count == 0) ? null : newCategory;
    }

    public Category getCategory(int categoryID) {
        Category category = null;
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from Category where categoryID = ?");
            ps.setInt(1, categoryID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                category = new Category(rs.getInt("categoryID"), rs.getString("categoryName"), rs.getString("description"), rs.getBoolean("isDeleted"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return category;
    }

    public boolean getCategoryCheckID(String categoryID) {
        boolean checkID = false;
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from Category where categoryID = ?");
            ps.setString(1, categoryID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                checkID = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
            return checkID;
        }
        return checkID;
    }

    public Category update(int cate_id, Category newCategory) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("update category set categoryName =?, description=? ,isDeleted=? where categoryID =?");

            ps.setString(1, newCategory.getCategoryName());
            ps.setString(2, newCategory.getDescription());
            ps.setBoolean(3, newCategory.isIsDeleted());
            ps.setInt(4, cate_id);
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (count == 0) ? null : newCategory;
    }

    public void delete(int categoryID) {
        boolean isDelete = true;
        try {
            PreparedStatement ps1 = conn.prepareStatement("update Category set isDeleted=?  where categoryID =?");
            PreparedStatement ps2 = conn.prepareStatement("update Product set isDeleted=? where categoryID = ?");
            ps1.setBoolean(1, isDelete);
            ps2.setBoolean(1, isDelete);
            ps1.setInt(2, categoryID);
            ps2.setInt(2, categoryID);
            ps1.executeUpdate();
            ps2.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void sellingAgain(int categoryID) {
        boolean isDelete = false;
        try {
            PreparedStatement ps = conn.prepareStatement("update Category set isDeleted=?  where categoryID =?");
            ps.setBoolean(1, isDelete);
            ps.setInt(2, categoryID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getCategoriesQuantity() {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select c.categoryID, c.categoryName,count(p.productID) as quantity from Product p inner join Category c on p.categoryID = c.categoryID\n"
                    + "  group by c.categoryID, c.categoryName");
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    public int getRows() {
        int quantity = -1;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select count(categoryID) as quantity from [Category]");
            while(rs.next()){
                quantity = rs.getInt("quantity");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return quantity;
    }
}
