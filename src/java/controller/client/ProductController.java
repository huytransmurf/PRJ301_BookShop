package controller.client;

import dao.implement.ProductDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Product;

@WebServlet(name = "ProductController", urlPatterns = {"/ProductController"})
public class ProductController extends HttpServlet {

    private static final int PAGE_SIZE_ADMIN = 10;

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
            case "loadListProductAdmin":
                loadPaginatedProducts(request, response);
            default:
                loadHome(request, response);
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

    private void loadPaginatedProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDao productDao = new ProductDao();

        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(request.getParameter("page"));
        } catch (NumberFormatException e) {
            currentPage = 1;
        }

        int offset = (currentPage - 1) * PAGE_SIZE_ADMIN;
        List<Product> products = productDao.getPaginatedProducts(offset, PAGE_SIZE_ADMIN);
        int totalProducts = productDao.getTotalProductCount();
        int totalPages = (int) Math.ceil((double) totalProducts / PAGE_SIZE_ADMIN);

        request.setAttribute("products", products);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);

        RequestDispatcher dispatcher = request.getRequestDispatcher("views/admin/list-product.jsp");
        dispatcher.forward(request, response);
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
    
    }

    private void getProductById(HttpServletRequest request, HttpServletResponse response) {

        // Continue ...
    }

}
