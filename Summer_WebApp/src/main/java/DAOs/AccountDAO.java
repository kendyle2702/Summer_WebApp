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
    public Account getAccountByUsername(String username){
        Account account = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from Account where email = ?");
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                account = new Account(rs.getString("email"), rs.getString("password"), rs.getString("fullName"), rs.getDate("birthdate"), rs.getString("role"), rs.getString("sex"),rs.getBoolean("isDeleted"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return account;
    }
    public Account getAccountByUsernameAndPassword(String username, String password) {
        Account account = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from account where email =? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                account = new Account(rs.getString("email"), rs.getString("password"), rs.getString("fullName"), rs.getDate("birthdate"), rs.getString("role"), rs.getString("sex"),rs.getBoolean("isDeleted"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return account;
    }

    public Account addNewAccount(Account acc) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("insert into Account values(?,?,?,?,?,?)");
            ps.setString(1, acc.getEmail());
            ps.setString(2, acc.getPassword());
            ps.setString(3, acc.getFullName()); 
            ps.setDate(4, acc.getBirthdate());
            ps.setString(5, "member");
            ps.setString(6, acc.getSex());
            ps.setBoolean(7, false);
           
            count = ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return (count == 0) ? null : acc;
    }

}
