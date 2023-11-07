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
public class Payment {

    private int paymentID;
    private String paymentMethod;
    private String paymentStatus;
    private int fee;
    private Timestamp time;
    private int totalPayment;
    private String transactionID;
    private int orderID;
    private boolean isDeleted;

    public Payment() {
    }

    public Payment(int paymentID, String paymentMethod, String paymentStatus, int fee, Timestamp time, int totalPayment,
            String transactionID, int orderID, boolean isDeleted) {
        this.paymentID = paymentID;
        this.paymentMethod = paymentMethod;
        this.paymentStatus = paymentStatus;
        this.fee = fee;
        this.time = time;
        this.totalPayment = totalPayment;
        this.transactionID = transactionID;
        this.orderID = orderID;
        this.isDeleted = isDeleted;
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

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getTransactionID() {
        return transactionID;
    }

    public void setTransactionID(String transactionID) {
        this.transactionID = transactionID;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

}
