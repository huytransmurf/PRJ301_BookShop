/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao.implement;

import java.sql.*;
import dao.connection.Connector;
import dao.intefaces.IProductDao;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author admin
 */
public class ProductDao extends Connector implements IProductDao {

    @Override
    public List<Product> getAll() {
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM Product";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getInt("ProductID"));
                product.setBestSeller(rs.getBoolean("isBestSeller"));
                product.setFullName(rs.getString("FullName"));
                product.setDescription(rs.getString("Description"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setQuantitySold(rs.getInt("QuantitySold"));
                product.setImageURL(rs.getString("ImageURL"));
                product.setCategoryID(rs.getInt("CategoryID"));
                product.setPrice(rs.getDouble("Price"));
                product.setDiscount(rs.getInt("discount"));

                products.add(product);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching products: " + e.getMessage());
        }

        return products;
    }

    @Override
    public Product getById(int id) {
        Product product = null;
        String query = "SELECT * FROM Product WHERE ProductID = ?";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                product = new Product();
                product.setProductID(rs.getInt("ProductID"));
                product.setBestSeller(rs.getBoolean("isBestSeller"));
                product.setFullName(rs.getString("FullName"));
                product.setDescription(rs.getString("Description"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setQuantitySold(rs.getInt("QuantitySold"));
                product.setImageURL(rs.getString("ImageURL"));
                product.setCategoryID(rs.getInt("CategoryID"));
                product.setPrice(rs.getDouble("Price"));
                product.setDiscount(rs.getInt("discount"));
            }

        } catch (SQLException e) {
            System.out.println("Error fetching product with ID " + id + ": " + e.getMessage());
        }

        return product;
    }

    @Override
    public boolean insert(Product product) {
        String query = "INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setBoolean(1, product.isBestSeller());
            stmt.setString(2, product.getFullName());
            stmt.setString(3, product.getDescription());
            stmt.setInt(4, product.getQuantity());
            stmt.setInt(5, product.getQuantitySold());
            stmt.setString(6, product.getImageURL());
            stmt.setInt(7, product.getCategoryID());
            stmt.setDouble(8, product.getPrice());
            stmt.setInt(9, product.getDiscount());

            stmt.executeUpdate();
            System.out.println("Product inserted successfully.");
            return true;

        } catch (SQLException e) {
            System.out.println("Error inserting product: " + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean update(Product product) {
        String query = "UPDATE Product SET isBestSeller=?, FullName=?, Description=?, Quantity=?, QuantitySold=?, "
                + "ImageURL=?, CategoryID=?, Price=?, discount=? WHERE ProductID=?";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setBoolean(1, product.isBestSeller());
            stmt.setString(2, product.getFullName());
            stmt.setString(3, product.getDescription());
            stmt.setInt(4, product.getQuantity());
            stmt.setInt(5, product.getQuantitySold());
            stmt.setString(6, product.getImageURL());
            stmt.setInt(7, product.getCategoryID());
            stmt.setDouble(8, product.getPrice());
            stmt.setInt(9, product.getDiscount());
            stmt.setInt(10, product.getProductID());

            stmt.executeUpdate();
            System.out.println("Product updated successfully.");
            return true;

        } catch (SQLException e) {
            System.out.println("Error updating product: " + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String query = "DELETE FROM Product WHERE ProductID = ?";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
            System.out.println("Product with ID " + id + " deleted successfully.");
            return true;

        } catch (SQLException e) {
            System.out.println("Error deleting product with ID " + id + ": " + e.getMessage());
        }
        return false;
    }

    @Override
    public List<Product> getOrganicFruits() {
        List<Product> result = new ArrayList<>();
        try {
            String query = "select  top 8 * from Product"
                    + "	where CategoryID = 1";
            PreparedStatement ps = getConnect().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getInt("ProductID"));
                product.setBestSeller(rs.getBoolean("isBestSeller"));
                product.setFullName(rs.getString("FullName"));
                product.setDescription(rs.getString("Description"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setQuantitySold(rs.getInt("QuantitySold"));
                product.setImageURL(rs.getString("ImageURL"));
                product.setCategoryID(rs.getInt("CategoryID"));
                product.setPrice(rs.getDouble("Price"));
                product.setDiscount(rs.getInt("discount"));

                result.add(product);
            }
        } catch (SQLException e) {
            System.out.println("Error get organic products!!");
        }
        return result;
    }

    @Override
    public List<Product> getFreshVegetables() {
        List<Product> result = new ArrayList<>();
        try {
            String query = "select  top 10 * from Product\n"
                    + "	where CategoryID = 3";
            PreparedStatement ps = getConnect().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getInt("ProductID"));
                product.setBestSeller(rs.getBoolean("isBestSeller"));
                product.setFullName(rs.getString("FullName"));
                product.setDescription(rs.getString("Description"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setQuantitySold(rs.getInt("QuantitySold"));
                product.setImageURL(rs.getString("ImageURL"));
                product.setCategoryID(rs.getInt("CategoryID"));
                product.setPrice(rs.getDouble("Price"));
                product.setDiscount(rs.getInt("discount"));

                result.add(product);
            }
        } catch (SQLException e) {
            System.out.println("Error get fresh vegetables!!");
        }
        return result;
    }

    @Override
    public List<Product> getBestSeller() {
        List<Product> result = new ArrayList<>();
        try {
            String query = "select  top 8 * from Product\n"
                    + "	where isBestSeller = 1";
            PreparedStatement ps = getConnect().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getInt("ProductID"));
                product.setBestSeller(rs.getBoolean("isBestSeller"));
                product.setFullName(rs.getString("FullName"));
                product.setDescription(rs.getString("Description"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setQuantitySold(rs.getInt("QuantitySold"));
                product.setImageURL(rs.getString("ImageURL"));
                product.setCategoryID(rs.getInt("CategoryID"));
                product.setPrice(rs.getDouble("Price"));
                product.setDiscount(rs.getInt("discount"));

                result.add(product);
            }
        } catch (SQLException e) {
            System.out.println("Error get bestseller!!");
        }
        return result;
    }

    public int getTotalProductCount() {
        int totalCount = 0;
        String query = "SELECT COUNT(*) FROM Product";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query); ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                totalCount = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching total product count: " + e.getMessage());
        }

        return totalCount;
    }

    public List<Product> getPaginatedProducts(int offset, int limit) {
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM [Product] ORDER BY ProductID OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, offset);
            stmt.setInt(2, limit);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getInt("ProductID"));
                product.setBestSeller(rs.getBoolean("isBestSeller"));
                product.setFullName(rs.getString("FullName"));
                product.setDescription(rs.getString("Description"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setQuantitySold(rs.getInt("QuantitySold"));
                product.setImageURL(rs.getString("ImageURL"));
                product.setCategoryID(rs.getInt("CategoryID"));
                product.setPrice(rs.getDouble("Price"));
                product.setDiscount(rs.getInt("discount"));

                products.add(product);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching paginated products: " + e.getMessage());
        }

        return products;
    }
    
    
}
