
package controller;

import dao.implement.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ProductServlet", urlPatterns = {"/ProductServlet"})
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");

        switch (action) {
            case "list" ->
                getListProducts(request, response);

            case "detail" ->
                getProductById(request, response);

            default -> {
                // Continue
            }
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

    private void getListProducts(HttpServletRequest request, HttpServletResponse response) {

        // Continue ...
    }

    private void getProductById(HttpServletRequest request, HttpServletResponse response) {

        // Continue ...
    }

}
