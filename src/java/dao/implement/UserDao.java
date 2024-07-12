package dao.implement;

import dao.connection.Connector;
import dao.intefaces.GenericDao;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends Connector implements GenericDao<User> {

    @Override
    public List<User> getAll() {
        List<User> users = new ArrayList<>();
        String query = "SELECT * FROM [User]";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                User user = new User(
                        rs.getInt("UserID"),
                        rs.getString("FirstName"),
                        rs.getString("LastName"),
                        rs.getString("Address"),
                        rs.getString("Role"),
                        rs.getString("AvatarURL")
                );
                users.add(user);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching users: " + e.getMessage());
        }

        return users;
    }

    @Override
    public User getById(int id) {
        User user = null;
        String query = "SELECT * FROM [User] WHERE UserID = ?";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new User(
                        rs.getInt("UserID"),
                        rs.getString("FirstName"),
                        rs.getString("LastName"),
                        rs.getString("Address"),
                        rs.getString("Role"),
                        rs.getString("AvatarURL")
                );
            }

        } catch (SQLException e) {
            System.out.println("Error fetching user with ID " + id + ": " + e.getMessage());
        }

        return user;
    }

    @Override
    public boolean insert(User user) {
        String query = "INSERT INTO [User] (FirstName, LastName, Address, Role, AvatarURL) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, user.getFirstName());
            stmt.setString(2, user.getLastName());
            stmt.setString(3, user.getAddress());
            stmt.setString(4, user.getRole());
            stmt.setString(5, user.getAvatarURL());
            stmt.executeUpdate();

            System.out.println("User inserted successfully.");
            return true;

        } catch (SQLException e) {
            System.out.println("Error inserting user: " + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean update(User user) {
        String query = "UPDATE [User] SET FirstName = ?, LastName = ?, Address = ?, Role = ?, AvatarURL = ? WHERE UserID = ?";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, user.getFirstName());
            stmt.setString(2, user.getLastName());
            stmt.setString(3, user.getAddress());
            stmt.setString(4, user.getRole());
            stmt.setString(5, user.getAvatarURL());
            stmt.setInt(6, user.getId());
            stmt.executeUpdate();

            System.out.println("User updated successfully.");
            return true;

        } catch (SQLException e) {
            System.out.println("Error updating user with ID " + user.getId() + ": " + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String query = "DELETE FROM [User] WHERE UserID = ?";

        try (Connection conn = getConnect(); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

            System.out.println("User deleted successfully.");
            return true;

        } catch (SQLException e) {
            System.out.println("Error deleting user with ID " + id + ": " + e.getMessage());
        }
        return false;
    }

    public List<User> getPaginatedUsers(int offset, int limit) {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM [User] ORDER BY UserID OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try (Connection connection = getConnect(); PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, offset);
            statement.setInt(2, limit);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int id = resultSet.getInt("UserID");
                    String firstName = resultSet.getString("FirstName");
                    String lastName = resultSet.getString("LastName");
                    String address = resultSet.getString("Address");
                    String role = resultSet.getString("Role");
                    String avatarURL = resultSet.getString("AvatarURL");

                    User user = new User(id, firstName, lastName, address, role, avatarURL);
                    users.add(user);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public int getTotalUserCount() {
        String sql = "SELECT COUNT(*) AS total FROM [User]";
        int total = 0;

        try (Connection connection = getConnect(); PreparedStatement statement = connection.prepareStatement(sql); ResultSet resultSet = statement.executeQuery()) {

            if (resultSet.next()) {
                total = resultSet.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return total;
    }
}
