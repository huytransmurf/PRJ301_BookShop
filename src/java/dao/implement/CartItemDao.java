package dao.implement;

import dao.connection.Connector;
import dao.intefaces.GenericDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.CartItem;

public class CartItemDao extends Connector implements GenericDao<CartItem> {

    @Override
    public List<CartItem> getAll() {
        List<CartItem> cartItems = new ArrayList<>();
        String query = "SELECT * FROM CartItem";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                CartItem cartItem = new CartItem();
                cartItem.setId(rs.getInt("CartItemID"));
                cartItem.setQuantity(rs.getInt("Quantity"));
                cartItem.setTotalCost(rs.getDouble("TotalCost"));
                cartItem.setCartID(rs.getInt("CartID"));
                cartItem.setProductID(rs.getInt("ProductID"));

                cartItems.add(cartItem);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching cart items: " + e.getMessage());
        }

        return cartItems;
    }

    @Override
    public CartItem getById(int id) {
        CartItem cartItem = null;
        String query = "SELECT * FROM CartItem WHERE CartItemID = ?";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                cartItem = new CartItem();
                cartItem.setId(rs.getInt("CartItemID"));
                cartItem.setQuantity(rs.getInt("Quantity"));
                cartItem.setTotalCost(rs.getDouble("TotalCost"));
                cartItem.setCartID(rs.getInt("CartID"));
                cartItem.setProductID(rs.getInt("ProductID"));
            }

        } catch (SQLException e) {
            System.out.println("Error fetching cart item with ID " + id + ": " + e.getMessage());
        }

        return cartItem;
    }

    @Override
    public void insert(CartItem cartItem) {
        String query = "INSERT INTO CartItem (Quantity, TotalCost, CartID, ProductID) VALUES (?, ?, ?, ?)";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, cartItem.getQuantity());
            stmt.setDouble(2, cartItem.getTotalCost());
            stmt.setInt(3, cartItem.getCartID());
            stmt.setInt(4, cartItem.getProductID());
            stmt.executeUpdate();

            System.out.println("Cart item inserted successfully.");

        } catch (SQLException e) {
            System.out.println("Error inserting cart item: " + e.getMessage());
        }
    }

    @Override
    public void update(CartItem cartItem) {
        String query = "UPDATE CartItem SET Quantity = ?, TotalCost = ?, CartID = ?, ProductID = ? WHERE CartItemID = ?";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, cartItem.getQuantity());
            stmt.setDouble(2, cartItem.getTotalCost());
            stmt.setInt(3, cartItem.getCartID());
            stmt.setInt(4, cartItem.getProductID());
            stmt.setInt(5, cartItem.getId());
            stmt.executeUpdate();

            System.out.println("Cart item updated successfully.");

        } catch (SQLException e) {
            System.out.println("Error updating cart item with ID " + cartItem.getId() + ": " + e.getMessage());
        }
    }

    @Override
    public void delete(int id) {
        String query = "DELETE FROM CartItem WHERE CartItemID = ?";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

            System.out.println("Cart item deleted successfully.");

        } catch (SQLException e) {
            System.out.println("Error deleting cart item with ID " + id + ": " + e.getMessage());
        }
    }
}
