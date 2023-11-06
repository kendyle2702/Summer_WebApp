/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import Models.Order;
import Models.Order;
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
public class OrderDAO {

    Connection conn;

    public OrderDAO() {
        try {
            conn = DB.DBConnection.connect();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from [Order]");
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Order addNew(Order newOrder) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("Insert into [Order] values(?,?,?,?,?,?,?,?)");
            ps.setInt(1, newOrder.getOrderID());
            ps.setDate(2, newOrder.getTime());
            ps.setInt(3, newOrder.getTotal());
            ps.setString(4, newOrder.getDescription());
            ps.setString(5, newOrder.getEmail());
            ps.setInt(6, newOrder.getAddressID());
            ps.setBoolean(7, newOrder.isIsDeleted());

            count = ps.executeUpdate(); // tra ve so dong bi anh huong trong sql

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return (count == 0) ? null : newOrder;
    }

    public Order getOrder(int orderID) {
        Order order = null;
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from [Order] where orderID = ?");
            ps.setInt(1, orderID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                order = new Order(rs.getInt("orderID"), rs.getDate("time"), rs.getString("orderStatus"), rs.getInt("total"), rs.getString("description"), rs.getString("email"), rs.getInt("addressID"), rs.getBoolean("isDeleted"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return order;
    }

    public boolean getOrderCheckID(String orderID) {
        boolean checkID = false;
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from [Order] where orderID = ?");
            ps.setString(1, orderID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                checkID = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            return checkID;
        }
        return checkID;
    }

    public Order update(String pro_id, Order newOrder) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("update [order] set time =?, orderStatus=?, total=?, description=?, email=?,addressID=?,isDeleted=? where orderID =?");

            ps.setDate(1, newOrder.getTime());
            ps.setInt(2, newOrder.getTotal());
            ps.setString(3, newOrder.getDescription());
            ps.setString(4, newOrder.getEmail());
            ps.setInt(5, newOrder.getAddressID());
            ps.setBoolean(6, newOrder.isIsDeleted());
            ps.setInt(7, newOrder.getOrderID());
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (count == 0) ? null : newOrder;
    }

    public void delete(String orderID) {
        boolean isDelete = true;
        try {
            PreparedStatement ps = conn.prepareStatement("update [order] set isDeleted=?  where orderID =?");
            ps.setBoolean(1, isDelete);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getNearSevenDay() {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from [Order] where time >= DATEADD(day, -7, GETDATE()) AND time <= GETDATE()");
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

}
