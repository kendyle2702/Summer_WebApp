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

/**
 *
 * @author Le Chi Khiem - CE171515
 */
public class WishLlistDAO {
    private Connection conn;

    public WishLlistDAO() {
        try {
            conn = DB.DBConnection.connect();
        } catch (SQLException ex) {
            Logger.getLogger(WishLlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Wishlist");
        } catch (SQLException ex) {
            Logger.getLogger(WishLlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int createNewWishlist(Wishlist wl) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("insert into Wishlist values (wishlistID=?, wishlistName=?, time=?, email=?, isDeleted=?)");

            ps.setInt(1, wl.getWishlistID());
            ps.setString(2, wl.getWishlistName());
            ps.setDate(3, wl.getTime());
            ps.setString(4, wl.getEmail());
            ps.setInt(5, 0);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishLlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int updateWishlist(int wishlistID, Wishlist newInfo) {
        int count = 0;

        try {
            PreparedStatement ps = conn.prepareStatement("update Wishlist set wishlistName=?, time=?, email=?, isDeleted=? where wishlistID=?");
            
            ps.setString(1, newInfo.getWishlistName());
            ps.setDate(2, newInfo.getTime());
            ps.setString(3, newInfo.getEmail());
            ps.setInt(4, newInfo.getIsDeleted);
            ps.setInt(5, wishlistID);
            
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishLlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return count;
    }

    public int deleteWishlist(int wishlistID) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("update Wishlist set isDeleted=? where wishlistID=?");

            ps.setInt(1, 1);
            ps.setInt(2, wishlistID);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishLlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
}
