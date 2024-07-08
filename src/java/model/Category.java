
package model;

public class Category {
    private int id;
    private String fullName, descript;

    public Category() {
    }

    public Category(int id, String name, String descript) {
        this.id = id;
        this.fullName = name;
        this.descript = descript;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return fullName;
    }

    public void setName(String name) {
        this.fullName = name;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", name=" + fullName + ", descript=" + descript + '}';
    }
    
}
