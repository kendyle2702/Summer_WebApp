/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import Models.Payment;
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
public class PaymentDAO {
    private Connection conn;

    public PaymentDAO() {
        try {
            conn = DB.DBConnection.connect();
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Payment");
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int createNewPayment(Payment pm) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("insert into Wishlist values (paymentID=?, paymentMethod=?, paymentStatus=?, fee=?, time=?, totalPayment=?, transactionID=?, orderID=?, isDeleted=?)");

            ps.setInt(1, pm.getPaymentID());
            ps.setString(2, pm.getPaymentMethod());
            ps.setString(3, pm.getPaymentStatus());
            ps.setInt(4, pm.getFee());
            ps.setDate(5, pm.getTime());
            ps.setInt(6, pm.getTotalPayment());
            ps.setString(7, pm.getTransactionID());
            ps.setInt(8, pm.getOrderID());
            ps.setBoolean(9, pm.isIsDeleted());
            
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int updateWishlist(int paymentID, Payment newInfo) {
        int count = 0;

        try {
            PreparedStatement ps = conn.prepareStatement("update Wishlist set paymentMethod=?, paymentStatus=?, fee=?, time=?, totalPayment=?, transactionID=?, orderID=?, isDeleted=? where paymentID=?");

            ps.setString(1, newInfo.getPaymentMethod());
            ps.setString(2, newInfo.getPaymentStatus());
            ps.setInt(3, newInfo.getFee());
            ps.setDate(4, newInfo.getTime());
            ps.setInt(5, newInfo.getTotalPayment());
            ps.setString(6, newInfo.getTransactionID());
            ps.setInt(7, newInfo.getOrderID());
            ps.setBoolean(8, newInfo.isIsDeleted());
            ps.setInt(9, paymentID);
            
            
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return count;
    }

    public int deleteWishlist(int paymentID) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("update Wishlist set isDeleted=? where paymentID=?");

            ps.setBoolean(1, true);
            ps.setInt(2, paymentID);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
