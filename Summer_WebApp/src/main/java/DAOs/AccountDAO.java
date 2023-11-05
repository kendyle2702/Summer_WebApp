/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import Models.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author QuocCu
 */
public class AccountDAO {

    private Connection conn;

    public AccountDAO() {
        try {
            conn = DB.DBConnection.connect();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Account");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Account getAccountbyUsernameAndPassword1(String username, String password) {
        Account account = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from Account where email = ? and password = ?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                account = new Account(rs.getString("email"), rs.getString("password"), rs.getString("fullName"), rs.getDate("birhdate"), rs.getString("role"), rs.getString("sex"),rs.getBoolean("isDeleted"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return account;
    }

    public boolean getAccountbyUsernameAndPassword(String username, String password) {
        Boolean account = false;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from Account where [email] = ? and [password] = ?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                // account = new Account(rs.getString("email"),rs.getString("password"),rs.getString("fullName"),rs.getDate("birhdate"),rs.getString("role"));
                account = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return account;
    }

    public Account addNewProduct(Account acc) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("insert into product values(?,?,?,?,?,?)");
            ps.setString(3, acc.getFullName());
            ps.setString(6, acc.getSex());
            ps.setString(1, acc.getEmail());
            ps.setString(2, acc.getPassword());
            ps.setDate(4, acc.getBirthdate());
            count = ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return (count == 0) ? null : acc;
    }

}
