/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Date;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class Payment {

    private int paymentID, fee, totalPayment, orderID;
    private String paymentMethod, paymentStatus, transactionID;
    private Date time;
    private boolean isDeleted;

    public Payment() {
    }



    public Payment(int paymentID, String paymentMethod, String paymentStatus, int fee, Date time, int totalPayment, String transactionID, int orderID, boolean isDeleted) {
        this.paymentID = paymentID;
        this.fee = fee;
        this.totalPayment = totalPayment;
        this.orderID = orderID;
        this.paymentMethod = paymentMethod;
        this.paymentStatus = paymentStatus;
        this.transactionID = transactionID;
        this.time = time;
        this.isDeleted = isDeleted;
    }

    
     public String getTransactionID() {
        return transactionID;
    }

    public void setTransactionID(String transactionID) {
        this.transactionID = transactionID;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public int getFee() {
        return fee;
    }

    public void setFee(int fee) {
        this.fee = fee;
    }

    public int getTotalPayment() {
        return totalPayment;
    }

    public void setTotalPayment(int totalPayment) {
        this.totalPayment = totalPayment;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }
    

  
}
