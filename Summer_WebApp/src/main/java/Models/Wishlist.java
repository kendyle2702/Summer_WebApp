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
public class Wishlist {

    private Date time;
    private int wishlistID;
    private String wishlistName, email;
    private boolean isDeleted;

    public Wishlist() {
    }

    public Wishlist(int wishlistID, String wishlistName, Date time, String email, boolean isDeleted) {
        this.time = time;
        this.wishlistID = wishlistID;
        this.wishlistName = wishlistName;
        this.email = email;
        this.isDeleted = isDeleted;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
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
