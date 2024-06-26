/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Timestamp;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class Order {

    private int orderID;
    private Timestamp time;
    private String orderStatus;
    private int total;
    private String description;
    private String email;
    private int addressID;
    private boolean isDeleted;

    public Order() {
    }

    public Order(int orderID, Timestamp time, String orderStatus, int total, String description, String email,
            int addressID, boolean isDeleted) {
        this.orderID = orderID;
        this.time = time;
        this.orderStatus = orderStatus;
        this.total = total;
        this.description = description;
        this.email = email;
        this.addressID = addressID;
        this.isDeleted = isDeleted;
    }

    public Order(Timestamp time, String orderStatus, int total, String description, String email, int addressID,
            boolean isDeleted) {

        this.time = time;
        this.orderStatus = orderStatus;
        this.total = total;
        this.description = description;
        this.email = email;
        this.addressID = addressID;
        this.isDeleted = isDeleted;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAddressID() {
        return addressID;
    }

    public void setAddressID(int addressID) {
        this.addressID = addressID;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    // public int isIsDeleted() {
    // return isDeleted;
    // }
    //
    // public void setIsDeleted(int isDeleted) {
    // this.isDeleted = isDeleted;
    // }

}
