/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Timestamp;
import java.sql.Timestamp;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class Wishlist {

    private Timestamp time;
    private int wishlistID;
    private String wishlistName, email;
    private boolean isDeleted, defaultValue;

    public boolean isDefaultValue() {
        return defaultValue;
    }

    public void setDefaultValue(boolean defaultValue) {
        this.defaultValue = defaultValue;
    }

    public Wishlist() {
    }

    public Wishlist(Timestamp time, int wishlistID, String wishlistName, String email, boolean isDeleted) {
        this.time = time;
        this.wishlistID = wishlistID;
        this.wishlistName = wishlistName;
        this.email = email;
        this.isDeleted = isDeleted;
    }

    public Wishlist(Timestamp time, int wishlistID, String wishlistName, String email, boolean isDeleted, boolean defaultValue) {
        this.time = time;
        this.wishlistID = wishlistID;
        this.wishlistName = wishlistName;
        this.email = email;
        this.isDeleted = isDeleted;
        this.defaultValue = defaultValue;
    }
    
    

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public int getWishlistID() {
        return wishlistID;
    }

    public void setWishlistID(int wishlistID) {
        this.wishlistID = wishlistID;
    }

    public String getWishlistName() {
        return wishlistName;
    }

    public void setWishlistName(String wishlistName) {
        this.wishlistName = wishlistName;
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
