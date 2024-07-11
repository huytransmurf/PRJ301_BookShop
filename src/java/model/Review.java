package model;

public class Review {
    private int id;
    private String description;
    private int userID;
    private int productID;

    public Review(int id, String description, int userID, int productID) {
        this.id = id;
        this.description = description;
        this.userID = userID;
        this.productID = productID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
        return "Review{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", userID=" + userID +
                ", productID=" + productID +
                '}';
    }
}
