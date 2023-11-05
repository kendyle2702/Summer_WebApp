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
public class AddressDAO {

    private Connection conn;

    public AddressDAO() {
        try {
            conn = DB.DBConnection.connect();
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Address");
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int createNewAddress(Address add) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("insert into Address values (addressID=?, phoneNumber=?, name=?, detailAddress=?, email=?, isDeleted=?)");

            ps.setInt(1, add.getAddressID());
            ps.setString(2, add.getPhoneNumer());
            ps.setString(3, add.getName());
            ps.setString(4, add.getDetailAddress());
            ps.setString(5, add.getEmail());
            ps.setInt(6, 0);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int updateAddresss(int addressID, Address newInfo) {
        int count = 0;

        try {
            PreparedStatement ps = conn.prepareStatement("update Address set phoneNumber=?, name=?, detailAddress=?, email=?, isDeleted=? where addressID=?");

            ps.setString(1, newInfo.getPhoneNumer());
            ps.setString(2, newInfo.getName());
            ps.setString(3, newInfo.getDetailAddress());
            ps.setString(4, newInfo.getEmail());
            ps.setInt(5, newInfo.getIsDeleted());
            ps.setInt(6, addressID);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return count;
    }

    public int deleteAddress(int addressID) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("update Address set isDeleted=? where addressID=?");

            ps.setInt(1, 1);
            ps.setInt(2, addressID);

            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
}
