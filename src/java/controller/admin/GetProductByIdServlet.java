/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.implement.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Product;

/**
 *
 * @author admin
 */
@WebServlet(name = "GetProductByIdServlet", urlPatterns = {"/GetProductByIdServlet"})
public class GetProductByIdServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("id");

        if (productId != null && !productId.isEmpty()) {
            // Call your DAO or service method to get the Product details by ID
            ProductDao ProductDao = new ProductDao();
            Product product = ProductDao.getById(Integer.parseInt(productId));

            if (product != null) {
                request.setAttribute("product", product);
                request.getRequestDispatcher("views/admin/product/detail-product.jsp").forward(request, response);
            } else {
                response.sendRedirect("errorPage.jsp");
            }
        } else {
            // Handle the case where the ID is not valid
            response.sendRedirect("errorPage.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}