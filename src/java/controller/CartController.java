package controller;

import dao.implement.CartDao;
import dao.implement.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import model.Product;
import model.User;

@WebServlet(name = "CartController", urlPatterns = {"/Cart"})
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("account");
        if (user != null) {
            ProductDao pDAO = new ProductDao();
            List<Product> products = pDAO.getProductsByUserID(user.getId());

            request.setAttribute("products", products);

            request.getRequestDispatcher("/views/client/pages/cart.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("account");
        String action = request.getParameter("action");

        if (user != null) {
            switch (action) {

            case "delete" -> {
                int productId = Integer.parseInt(request.getParameter("productId"));
                int userId = user.getId();

                CartDao cartDao = new CartDao();
                boolean result = cartDao.deleteCartItemByUserIdAndProductId(userId, productId);

                if (result) {
                    request.getRequestDispatcher("${pageContext.request.contextPath}/Cart").forward(request, response);// Redirect to refresh the cart page
                } else {
                    // Handle error
                    response.getWriter().write("Failed to delete the item.");
                }
            }
            default -> {
            }
        }
        } else {
            response.sendRedirect("Login"); // Redirect to login page if user is not logged in
        }
    }
}
