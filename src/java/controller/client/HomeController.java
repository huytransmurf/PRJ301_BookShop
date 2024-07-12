/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.client;

import dao.implement.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Product;

/**
 *
 * @author LAPTOP
 */
@WebServlet(name = "HomeController", urlPatterns = {"/Home"})
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> organicFruits = new ProductDao().getOrganicFruits();
        List<Product> freshVegetables = new ProductDao().getFreshVegetables();
        List<Product> bestSellers = new ProductDao().getBestSeller();
        request.setAttribute("organicFruits", organicFruits);
        request.setAttribute("freshVegetables", freshVegetables);
        request.setAttribute("bestSellers", bestSellers);
        request.getRequestDispatcher("views/client/home.jsp").include(request, response);
    }
}
