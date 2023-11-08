/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import Models.Wishlist;
import Models.WishlistItem;

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
            PreparedStatement ps = conn.prepareStatement("insert into Wishlist values (?,?,?,?,?)");

            ps.setString(1, wl.getWishlistName());
            ps.setTimestamp(2, wl.getTime());
            ps.setString(3, wl.getEmail());
            ps.setBoolean(4, false);
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

    public int updateDefault(int wishlistID) {
        int count = 0;

        try {
            PreparedStatement ps = conn.prepareStatement("UPDATE [prj_project].[dbo].[Wishlist]\n"
                    + "SET [defaultValue] = CASE WHEN [wishlistID] = ? THEN 1 ELSE 0 END");
            ps.setInt(1, wishlistID);

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

    public ResultSet getWistListByEmail1(String email) {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement(
                    "select WishlistItem.wishlistID, wishlistName, WishlistItem.quantity, Wishlist.email, Wishlist.[time], Wishlist.isDeleted   from  Wishlist join WishlistItem \n"
                            + "  on Wishlist.wishlistID = WishlistItem.wishlistID\n"
                            + "  join Product on Product.productID = WishlistItem.productID where email =? and Wishlist.isDeleted = ?");
            ps.setString(1, email);
            ps.setBoolean(2, false);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet getWistListByEmail2(String email) {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select *  from  Wishlist join WishlistItem \n"
                    + "                     on Wishlist.wishlistID = WishlistItem.wishlistID where email =? and Wishlist.isDeleted = ?");
            ps.setString(1, email);
            ps.setBoolean(2, false);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet getWistListByEmail(String email) {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select *  from  Wishlist where email =? and isDeleted = ?");
            ps.setString(1, email);
            ps.setBoolean(2, false);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int quantityWishlist(int wishlistID) {
        ResultSet rs = null;
        int quantity = -1;
        try {
            PreparedStatement ps = conn
                    .prepareStatement("select w.wishlistID, COUNT(wl.productID)as quantity from Wishlist w \n"
                            + "  inner join WishlistItem wl on w.wishlistID = wl.wishlistID\n"
                            + "  group by w.wishlistID \n"
                            + "  having w.wishlistID = ?");
            ps.setInt(1, wishlistID);
            rs = ps.executeQuery();
            if (rs == null) {
                quantity = 0;
            } else {
                while (rs.next()) {
                    quantity = rs.getInt("quantity");
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return quantity;
    }

    public ResultSet getWistListDetailByEmail(String email, int id) {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement(
                    " select Wishlist.wishlistID, wishlistName, WishlistItem.quantity, Wishlist.email, Wishlist.[time], Product.price, Product.productName, Product.[image]  from  Wishlist join WishlistItem\n"
                            + "                    on Wishlist.wishlistID = WishlistItem.wishlistID\n"
                            + "                     join Product on Product.productID = WishlistItem.productID  where email = ? and Wishlist.wishlistID = ?");
            ps.setString(1, email);
            ps.setInt(2, id);

            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int getWistListByEmailAndDefault(String email) {
        int id = 0;
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn
                    .prepareStatement("select *  from  Wishlist where email =? and isDeleted = ? and defaultValue = ?");
            ps.setString(1, email);
            ps.setBoolean(2, false);
            ps.setBoolean(3, true);
            rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("wishlistID");
            }
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs == null ? 0 : id;
    }

    public WishlistItem getWishlistItemByWishlistIDAndProductID(int wishlistID, int productID) {
        ResultSet rs = null;
        WishlistItem wishlistItem = null;
        try {
            PreparedStatement ps = conn
                    .prepareStatement("select *  from  WishlistItem where wishlistID = ? and productID = ?");
            ps.setInt(1, wishlistID);
            ps.setInt(2, productID);
            rs = ps.executeQuery();
            while (rs.next()) {
                 wishlistItem = new WishlistItem(rs.getInt("quantity"), rs.getInt("wishlistID"), rs.getInt("productID"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return wishlistItem;

    }

    public boolean addProductIntoWishlist(int wishlistID, int productID) {
        int count = 0;
        try {
            PreparedStatement ps = conn
                    .prepareStatement("insert into wishlistItem values(?,?,?)");
            ps.setInt(1, 1);
            ps.setInt(2, wishlistID);
            ps.setInt(3, productID);
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count == 0 ? false : true;
    }

    public boolean updateQuantityOfWishlistItem(int quantity, int wishlistID, int productID) {
        int count = 0;
        try {
            PreparedStatement ps = conn
                    .prepareStatement("update wishlistItem set quantity = ? where wishlistID = ? and productID = ?");
            ps.setInt(1, quantity + 1);
            ps.setInt(2, wishlistID);
            ps.setInt(3, productID);
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count == 0 ? false : true;
    }
}
