/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao.intefaces;

import java.util.List;
import model.Product;

/**
 *
 * @author admin
 */
public interface IProductDao extends GenericDao<Product> {
    List<Product> getOrganicFruits();
    List<Product> getFreshVegetables();
    List<Product> getBestSeller();
    List<Product> getOrganicVegetables();
    List<Product> getOrganicNuts();
    List<Product> searchByName(String name);
    List<Product> searchByCategory(int categoryID);
    List<Product> getPaginatedProducts(int offset, int limit);
    int getQuantityByCateID(int categoryID, double low, double high);
}
