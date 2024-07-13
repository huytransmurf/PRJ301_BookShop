/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

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

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "ProductDetailController", urlPatterns = {"/ProductDetail"})
public class ProductDetailController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> products = new ProductDao().getAll();
        String id = request.getParameter("id");
        if (id != null && !id.isEmpty()) {
            for (Product product : products) {
                if (product.getProductID() == Integer.parseInt(id)) {
                    // Nếu tìm thấy sản phẩm, đặt vào attribute của request
                    request.setAttribute("product", product);
                    request.setAttribute("products", products);
                    break;
                }
            }
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/client/pages/product/product-detail.jsp");
        dispatcher.forward(request, response);
    }
}
