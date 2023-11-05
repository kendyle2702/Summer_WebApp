/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class Address {
    private int addressID;
    private String phoneNumber;
    private String name;
    private String detailAddress;
    private  String email;
    private boolean isDeleted;


    public Address() {
    }

    public Address(int addressID, String phoneNumber, String name, String detailAddress, String email, boolean isDeleted) {
        this.addressID = addressID;
        this.phoneNumber = phoneNumber;
        this.name = name;
        this.detailAddress = detailAddress;
        this.email = email;
        this.isDeleted = isDeleted;
    }

    public int getAddressID() {
        return addressID;
    }

    public void setAddressID(int addressID) {
        this.addressID = addressID;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDetailAddress() {
        return detailAddress;
    }

    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }
    

}
