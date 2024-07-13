/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

/**
 *
 * @author trong
 */

@WebServlet("/PaymentServlet")
@MultipartConfig
public class PaymentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentMethod = request.getParameter("paymentMethod");

        if ("COD".equals(paymentMethod)) {
            // Xử lý thanh toán khi nhận hàng
            response.sendRedirect("orderSuccess.jsp");
        } else if ("BankTransfer".equals(paymentMethod)) {
            // Xử lý chuyển khoản
            Part filePart = request.getPart("paymentProof");
            // Lưu file đã tải lên và xử lý
            String fileName = filePart.getSubmittedFileName();
            String filePath = "path/to/save/" + fileName; // Thay đổi đường dẫn lưu file
            filePart.write(filePath);
            // Chuyển đến trang xác nhận đơn hàng
            response.sendRedirect("orderSuccess.jsp");
        }
    }
}
