package controller.admin;

import dao.implement.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "DeleteUserServlet", urlPatterns = {"/DeleteUserServlet"})
public class DeleteUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy userID từ form
        String userIdParam = request.getParameter("id");

        if (userIdParam != null) {
            try {
                int userId = Integer.parseInt(userIdParam);

                UserDao userDao = new UserDao();

                boolean success = userDao.delete(userId);

                if (success) {
                    response.sendRedirect("UserServlet?action=list-users-admin");
                    
                } else {
                    response.sendRedirect("UserServlet?action=list-users-admin");
                }
            } catch (NumberFormatException e) {
                response.sendRedirect("views/admin/user/list-user.jsp?message=Invalid user ID");
            }
        } else {
            response.sendRedirect("views/admin/user/list-user.jsp?message=User ID is required");
        }
    }
}
