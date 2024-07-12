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
}
