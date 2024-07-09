/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LAPTOP ACER
 */
public class Product {
    private int id;
    private String fullName, descript;
    private int quantity, quantitySold;
    private String imgUrl;
    private int categoryID;
    private double price;
    private String author;
    private int numberOfPage;
    private String publisher;

    public Product(int id, String fullName, String descript, int quantity, int quantitySold, String imgUrl, int categoryID, double price, String author, int numberOfPage, String publisher) {
        this.id = id;
        this.fullName = fullName;
        this.descript = descript;
        this.quantity = quantity;
        this.quantitySold = quantitySold;
        this.imgUrl = imgUrl;
        this.categoryID = categoryID;
        this.price = price;
        this.author = author;
        this.numberOfPage = numberOfPage;
        this.publisher = publisher;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantitySold() {
        return quantitySold;
    }

    public void setQuantitySold(int quantitySold) {
        this.quantitySold = quantitySold;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getNumberOfPage() {
        return numberOfPage;
    }

    public void setNumberOfPage(int numberOfPage) {
        this.numberOfPage = numberOfPage;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", fullName=" + fullName + ", descript=" + descript + ", quantity=" + quantity + ", quantitySold=" + quantitySold + ", imgUrl=" + imgUrl + ", categoryID=" + categoryID + ", price=" + price + ", author=" + author + ", numberOfPage=" + numberOfPage + ", publisher=" + publisher + '}';
    }
    
    
}
