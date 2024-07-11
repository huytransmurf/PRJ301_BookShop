package dao.implement;

import dao.connection.Connector;
import dao.intefaces.GenericDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Cart;

public class CartDao extends Connector implements GenericDao<Cart> {

    @Override
    public List<Cart> getAll() {
        List<Cart> carts = new ArrayList<>();
        String query = "SELECT * FROM Cart";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Cart cart = new Cart();
                cart.setId(rs.getInt("CartID"));
                cart.setUserID(rs.getInt("UserID"));

                carts.add(cart);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching carts: " + e.getMessage());
        }

        return carts;
    }

    @Override
    public Cart getById(int id) {
        Cart cart = null;
        String query = "SELECT * FROM Cart WHERE CartID = ?";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                cart = new Cart();
                cart.setId(rs.getInt("CartID"));
                cart.setUserID(rs.getInt("UserID"));
            }

        } catch (SQLException e) {
            System.out.println("Error fetching cart with ID " + id + ": " + e.getMessage());
        }

        return cart;
    }

    @Override
    public void insert(Cart cart) {
        String query = "INSERT INTO Cart (UserID) VALUES (?)";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, cart.getUserID());
            stmt.executeUpdate();

            System.out.println("Cart inserted successfully.");

        } catch (SQLException e) {
            System.out.println("Error inserting cart: " + e.getMessage());
        }
    }

    @Override
    public void update(Cart cart) {
        String query = "UPDATE Cart SET UserID = ? WHERE CartID = ?";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, cart.getUserID());
            stmt.setInt(2, cart.getId());
            stmt.executeUpdate();

            System.out.println("Cart updated successfully.");

        } catch (SQLException e) {
            System.out.println("Error updating cart with ID " + cart.getId() + ": " + e.getMessage());
        }
    }

    @Override
    public void delete(int id) {
        String query = "DELETE FROM Cart WHERE CartID = ?";

        try (Connection conn = getConnect();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

            System.out.println("Cart deleted successfully.");

        } catch (SQLException e) {
            System.out.println("Error deleting cart with ID " + id + ": " + e.getMessage());
        }
    }
}
