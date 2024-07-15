/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.implement.CartDao;
import dao.implement.CartItemDao;
import dao.implement.OrderDao;
import dao.implement.OrderDetailDao;
import dao.implement.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import model.CartItem;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name = "ConfirmOrderServlet", urlPatterns = {"/ConfirmOrderServlet"})
public class ConfirmOrderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        User account = (User) session.getAttribute("account");

        if (account == null) {
            // Handle case where user is not logged in
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }

        // Get cart items from session
        List<OrderDetail> orderDetails = (List<OrderDetail>) session.getAttribute("orderDetails");
//        if (cartItems == null || cartItems.isEmpty()) {
//            // Handle case where cart is empty
//            response.sendRedirect(request.getContextPath() + "/cart.jsp");
//            return;
//        }

        // Process cart items to create OrderDetail objects
//        List<OrderDetail> orderDetails = new ArrayList<>();
//        for (CartItem cartItem : cartItems) {
//            int quantity = Integer.parseInt(request.getParameter("quantity_" + cartItem.getProduct().getProductID()));
//            if (quantity > 0) {
//                OrderDetail orderDetail = new OrderDetail();
//                orderDetail.setProduct(cartItem.getProduct());
//                orderDetail.setQuantity(quantity);
//                orderDetail.setCost(cartItem.getProduct().getPrice() * quantity);
//                orderDetails.add(orderDetail);
//            }
//        }
        Order order = new Order();
        int orderId = new OrderDao().getTotalOrderCount();
        order.setId(orderId + 1);
        order.setUserID(account.getId());
        order.setOrderStatusID(1);
        order.setOrderDate(new Date());
        order.setExpectedDate(new Date());
        order.setTotalCost(orderDetails.stream()
                .mapToDouble(OrderDetail::getCost)
                .sum());
        OrderDao orderDao = new OrderDao();
        orderDao.insert(order);
        OrderDetailDao orderDetailDao = new OrderDetailDao();

        for (OrderDetail orderDetail : orderDetails) {
            orderDetail.setOrderID(orderId);
            orderDetailDao.insert(orderDetail);
        }

        new CartItemDao().deleteCartItemByCartId(new CartDao().getCartByUserId(account.getId()).getId());

        request.setAttribute("orderDetails", orderDetails);

        // Redirect to order details page
        request.getRequestDispatcher("/orderDetails.jsp").forward(request, response);
    }
}
