package controller;

import dao.implement.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Product;

@WebServlet(name = "ProductServlet", urlPatterns = {"/ProductServlet"})
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action;
        action = request.getParameter("action");
        if (action == null) {
            action = "loadHome";
        }
        switch (action) {
            case "loadHome":
                loadHome(request, response);
                break;
            case "loadShop":
                getProductById(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "add" ->
                createNewProduct(request, response);

            case "delete" ->
                deleteProductById(request, response);

            case "update" ->
                updateProductById(request, response);

            default -> {
            }
        }
        // Continue
    }

    private void createNewProduct(HttpServletRequest request, HttpServletResponse response) {

        // Continue ...
    }

    private void deleteProductById(HttpServletRequest request, HttpServletResponse response) {
        String productIdToDelete = request.getParameter("productId");
        int productId = Integer.parseInt(productIdToDelete);
        ProductDao productDao = new ProductDao();

        // Continue ...
    }

    private void updateProductById(HttpServletRequest request, HttpServletResponse response) {

        // Continue ...
    }

    private void loadHome(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int category;
        try {
            category = Integer.parseInt(request.getParameter("category"));
        } catch (Exception e) {
            category = 1;
        }
        List<Product> organicProducts = new ProductDao().getOrganicProducts(category);
        List<Product> freshVegetables = new ProductDao().getFreshVegetables();
        List<Product> bestSellers = new ProductDao().getBestSeller();
        request.setAttribute("organicProducts", organicProducts);
        request.setAttribute("freshVegetables", freshVegetables);
        request.setAttribute("bestSellers", bestSellers);
        request.getRequestDispatcher("views/client/index.jsp").include(request, response);
    }

    private void getProductById(HttpServletRequest request, HttpServletResponse response) {

        // Continue ...
    }

}
