/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import Models.Wishlist;
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
public class WishlistDAO {

    private Connection conn;

    public WishlistDAO() {
        try {
            conn = DB.DBConnection.connect();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Wishlist");
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int createNewWishlist(Wishlist wl) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(
                    "insert into Wishlist values (wishlistID=?, wishlistName=?, time=?, email=?, isDeleted=?)");

            ps.setInt(1, wl.getWishlistID());
            ps.setString(2, wl.getWishlistName());
            ps.setTimestamp(3, wl.getTime());
            ps.setString(4, wl.getEmail());
            ps.setBoolean(5, false);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int updateWishlist(int wishlistID, Wishlist newInfo) {
        int count = 0;

        try {
            PreparedStatement ps = conn.prepareStatement(
                    "update Wishlist set wishlistName=?, time=?, email=?, isDeleted=? where wishlistID=?");

            ps.setString(1, newInfo.getWishlistName());
            ps.setTimestamp(2, newInfo.getTime());
            ps.setString(3, newInfo.getEmail());
            ps.setBoolean(4, newInfo.isIsDeleted());
            ps.setInt(5, wishlistID);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return count;
    }

    public int deleteWishlist(int wishlistID) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("update Wishlist set isDeleted=? where wishlistID=?");

            ps.setBoolean(1, true);
            ps.setInt(2, wishlistID);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
