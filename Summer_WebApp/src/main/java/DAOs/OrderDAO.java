package DAOs;

import Models.Order;
import Models.Order;
import java.sql.Connection;
import java.sql.Date;
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
            rs = st.executeQuery("  select * from [Order] o inner join [Address] a on o.addressID = a.addressID inner join [Account] ac on o.email =  ac.email");
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet getOrdersFromDates(Date start, Date end) {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT *\n"
                    + "FROM [Order] o left join [Address] a on o.addressID = a.addressID left join [Account] ac on ac.email = o.email\n"
                    + "WHERE [time] >= CAST(? AS DATETIME)\n"
                    + "  AND [time] < DATEADD(day, 1, CAST(? AS DATETIME));");
            ps.setDate(1, start);
            ps.setDate(2, end);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet getOrdersStatusFromDates(Date start, Date end) {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT o.orderStatus, count(o.orderID) as quantity\n"
                    + "FROM [Order] o left join [Address] a on o.addressID = a.addressID left join [Account] ac on ac.email = o.email\n"
                    + "WHERE [time] >= CAST(? AS DATETIME)\n"
                    + "AND [time] < DATEADD(day, 1, CAST(? AS DATETIME))\n"
                    + "group by o.orderStatus");
            ps.setDate(1, start);
            ps.setDate(2, end);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Order addNew(Order newOrder) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("Insert into [Order] values(?,?,?,?,?,?,?)");

            ps.setTimestamp(1, newOrder.getTime());

            ps.setString(2, newOrder.getOrderStatus());
            ps.setInt(3, newOrder.getTotal());
            ps.setString(4, newOrder.getDescription());
            ps.setString(5, newOrder.getEmail());
            ps.setInt(6, newOrder.getAddressID());
            ps.setBoolean(7, newOrder.isIsDeleted());
            //  ps.setInt(6, newOrder.isIsDeleted());

            count = ps.executeUpdate(); // tra ve so dong bi anh huong trong sql

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return (count == 0) ? null : newOrder;
    }

    public Order getOrder(int orderID) {
        Order order = null;
        try {
            PreparedStatement ps = conn.prepareStatement(" select * from [Order] o left join [OrderItem] ot on o.orderID = ot.orderID left join [Product] p on p.productID = ot.productID where o.orderID = ?");
            ps.setInt(1, orderID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                order = new Order(rs.getInt("orderID"), rs.getTimestamp("time"), rs.getString("orderStatus"), rs.getInt("total"), rs.getString("description"), rs.getString("email"), rs.getInt("addressID"), rs.getBoolean("isDeleted"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return order;
    }

    public ResultSet getProductByOrder(int orderID) {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from [Order] o left join [OrderItem] ot on o.orderID = ot.orderID left join [Product] p on p.productID = ot.productID  left join [Address] a on a.addressID = o.addressID left join Payment pa on pa.orderID =  o.orderID where o.orderID = ?");
            ps.setInt(1, orderID);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public String getPaymentMethod(int orderID) {
        String method = "";
        try {
            PreparedStatement ps = conn.prepareStatement("select * from [Payment] where orderID = ?");
            ps.setInt(1, orderID);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                method = rs.getString("paymentMethod");
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return method;
    }
    public String getPaymentStatus(int orderID) {
        String method = "";
        try {
            PreparedStatement ps = conn.prepareStatement("select * from [Payment] where orderID = ?");
            ps.setInt(1, orderID);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                method = rs.getString("paymentStatus");
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return method;
    }

    public String getAddressByOrder(int orderID) {
        String address = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from [Order] o inner join [Address] a on o.addressID = a.addressID inner join [Account] ac on o.email =  ac.email where o.orderID = ?");
            ps.setInt(1, orderID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                address = rs.getString("detailAddress");
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return address;
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

    public Order update(int or_id, Order newOrder) {
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("update [Order] set orderStatus=? where orderID =?");
            ps.setString(1, newOrder.getOrderStatus());
            ps.setInt(2, or_id);
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (count == 0) ? null : newOrder;
    }

    public void acceptOrder(int orderID) {
        try {
            PreparedStatement ps = conn.prepareStatement("update [Order] set orderStatus=?  where orderID =?");
            ps.setString(1, "Awaiting delivery");
            ps.setInt(2, orderID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void receiveOrder(int orderID) {
        try {
            PreparedStatement ps = conn.prepareStatement("update [Order] set orderStatus=?  where orderID =?");
            ps.setString(1, "Delivering");
            ps.setInt(2, orderID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void successOrder(int orderID) {
        try {
            PreparedStatement ps = conn.prepareStatement("update [Order] set orderStatus=?  where orderID =?");
            ps.setString(1, "Success");
            ps.setInt(2, orderID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void givebackOrder(int orderID) {
        try {
            PreparedStatement ps = conn.prepareStatement("update [Order] set orderStatus=?  where orderID =?");
            ps.setString(1, "Give back");
            ps.setInt(2, orderID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void declineOrder(int orderID) {
        try {
            PreparedStatement ps = conn.prepareStatement("update [Order] set orderStatus=?  where orderID =?");
            ps.setString(1, "Cancelled");
            ps.setInt(2, orderID);
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

    public ResultSet getOrderStatus() {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select orderStatus,count(orderID) as quantity  from [Order]\n"
                    + "  group by orderStatus ");
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int getTotalOfDate(Date date) {
        int total = -1;
        try {
            PreparedStatement ps = conn.prepareStatement("select sum(total) as total from [Order] where CONVERT(date, time) = ? ");
            ps.setDate(1, date);
            ResultSet rs = ps.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    total = rs.getInt("total");
                }
            } else {
                total = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return total;
    }

    public int getOrderQuantityOfDate(Date date) {
        int quantity = -1;
        try {
            PreparedStatement ps = conn.prepareStatement("select count(orderID) as quantity from [Order] where CONVERT(date, time) = ?");
            ps.setDate(1, date);
            ResultSet rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    quantity = rs.getInt("quantity");
                }
            } else {
                quantity = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return quantity;
    }
    
    public int getRows() {
        int quantity = -1;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select count(orderID) as quantity from [Order]");
            while(rs.next()){
                quantity = rs.getInt("quantity");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return quantity;
    }
    
    public int totalIncome() {
        int total = -1;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select sum(total) as total from [Order]");
            while(rs.next()){
                total = rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return total;
    }
}