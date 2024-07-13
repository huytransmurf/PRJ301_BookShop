/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.implement.CategoryDao;
import dao.implement.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Category;
import model.Product;

/**
 *
 * @author LAPTOP
 */
@WebServlet(name = "ShopController", urlPatterns = {"/Shop"})
public class ShopController extends HttpServlet {

    private static List<Product> pList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "getAll";
        }
        switch (action) {
            case "getAll":
                pList = new ProductDao().getAll();
                loadToPage(request, response);
                break;
            case "searchName":
                String keyword = request.getParameter("keyword");
                if (keyword == "") {
                    pList = new ProductDao().getAll();
                } else {
                    pList = new ProductDao().searchByName(request.getParameter("keyword"));
                }
                loadToPage(request, response);
                break;
            case "searchCategory":
                pList = new ProductDao().searchByCategory(Integer.parseInt(request.getParameter("cateID")));
                loadToPage(request, response);
                break;
            case "loadPage":
                loadToPage(request, response);
                break;
        }
    }

    private void loadToPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> cList = new CategoryDao().getAll();
        Map<Integer, Integer> cMap = new CategoryDao().getQuantityOfCategory(cList);
        List<Product> result = new ArrayList<>();
        int page;
        try {
            page = Integer.parseInt(request.getParameter("page"));
        } catch (Exception e) {
            page = 1;
        }
        int maxPage = (int) Math.ceil((double) pList.size() / 9);
        List<Integer> pages = new ArrayList<>();
        for (int i = 1; i <= maxPage; i++) {
            pages.add(i);
        }
        int length = ((page * 9 - 1) >= pList.size()) ? pList.size() - 1 : ((page * 9 - 1));
        for (int i = (page * 9 - 9); i <= length; i++) {
            result.add(pList.get(i));
        }
        request.setAttribute("pages", pages);
        request.setAttribute("result", result);
        request.setAttribute("page", page);
        request.setAttribute("cMap", cMap);
        request.setAttribute("cList", cList);
        request.getRequestDispatcher("/views/client/pages/product/list.jsp").forward(request, response);
    }

}
