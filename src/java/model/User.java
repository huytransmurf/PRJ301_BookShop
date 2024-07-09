
package model;

public class User {
    private int id;
    private String firstName, LastName;
    private String address;
    private String role;
    private String avatarURL;

    public User(int id, String firstName, String LastName, String address, String role, String avatarURL) {
        this.id = id;
        this.firstName = firstName;
        this.LastName = LastName;
        this.address = address;
        this.role = role;
        this.avatarURL = avatarURL;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getAvatarURL() {
        return avatarURL;
    }

    public void setAvatarURL(String avatarURL) {
        this.avatarURL = avatarURL;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", firstName=" + firstName + ", LastName=" + LastName + ", address=" + address + ", role=" + role + ", avatarURL=" + avatarURL + '}';
    }

    
    
}
