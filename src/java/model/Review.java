
package model;

public class Review {
    private int id;
    private String descript;
    private int userID, productID;

    public Review(int id, String descript, int userID, int productID) {
        this.id = id;
        this.descript = descript;
        this.userID = userID;
        this.productID = productID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    @Override
    public String toString() {
        return "Review{" + "id=" + id + ", descript=" + descript + ", userID=" + userID + ", productID=" + productID + '}';
    }
    
}
