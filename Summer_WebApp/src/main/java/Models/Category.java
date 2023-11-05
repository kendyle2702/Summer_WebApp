/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class Category {

    private int categoryID;
    private String categoryName;
    private String description;
    private boolean isDeleted;

    public Category() {
    }

    public Category(int categoryID, String categoryName, String description, boolean isDeleted) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.description = description;
        this.isDeleted = isDeleted;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    

}
