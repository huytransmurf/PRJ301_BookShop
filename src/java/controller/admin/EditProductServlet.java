package controller.admin;

import dao.implement.ProductDao;
import model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditProductServlet", urlPatterns = {"/EditProductServlet"})
public class EditProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward the request to the JSP for editing
        int productID = Integer.parseInt(request.getParameter("productID"));
        ProductDao productDao = new ProductDao();
        Product product = productDao.getById(productID);

        request.setAttribute("product", product);
        request.getRequestDispatcher("/editProduct.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        boolean bestSeller = Boolean.parseBoolean(request.getParameter("bestSeller"));
        String fullName = request.getParameter("fullName");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int quantitySold = Integer.parseInt(request.getParameter("quantitySold"));
        String imageURL = request.getParameter("imageURL");
        int categoryID = Integer.parseInt(request.getParameter("categoryID"));
        double price = Double.parseDouble(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));

        Product updatedProduct = new Product(bestSeller, fullName, description, quantity, quantitySold,
                imageURL, categoryID, price, discount);
        updatedProduct.setProductID(productID);

        ProductDao productDao = new ProductDao();
        boolean success = productDao.update(updatedProduct);

        if (success) {
            response.sendRedirect(request.getContextPath() + "/productList.jsp");
        } else {
            response.getWriter().println("Failed to update product.");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
