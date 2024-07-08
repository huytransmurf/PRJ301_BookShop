
package model;

public class OrderDetail {
    private int id, oderID, productID;
    private int quantity;
    private double cost;

    public OrderDetail(int id, int oderID, int productID, int quantity, double cost) {
        this.id = id;
        this.oderID = oderID;
        this.productID = productID;
        this.quantity = quantity;
        this.cost = cost;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOderID() {
        return oderID;
    }

    public void setOderID(int oderID) {
        this.oderID = oderID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "id=" + id + ", oderID=" + oderID + ", productID=" + productID + ", quantity=" + quantity + ", cost=" + cost + '}';
    }


    
}
