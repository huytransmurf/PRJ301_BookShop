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
import java.util.Collections;
import java.util.List;
import java.util.Map;
import model.Category;
import model.Product;

@WebServlet(name = "ShopController", urlPatterns = {"/Shop"})
public class ShopController extends HttpServlet {

    private static List<Product> pList = new ArrayList<>();
    private static final int PAGE_SIZE_ADMIN = 9;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action;
        action = request.getParameter("action");
        if (action == null) {
            action = "loadHome";
        }
        switch (action) {
            case "loadHome":
                loadPaginatedProducts(request, response);

                break;
            default:
                loadToPage(request, response);
                break;
        }
    }

    protected void doGet1(HttpServletRequest request, HttpServletResponse response)
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
                if (keyword == null || keyword.isEmpty()) {
                    pList = new ProductDao().getAll();
                } else {
                    pList = new ProductDao().searchByName(keyword);
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
        loadPaginatedProducts(request, response);
    }

    private void loadHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/views/client/pages/product/list.jsp").forward(request, response);
    }

    private void loadToPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> features = new ProductDao().getFeatureProduct();
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

        request.setAttribute("features", features);
        request.setAttribute("totalPages", pages);
        request.setAttribute("result", result);
        request.setAttribute("currentPage", page);
        request.setAttribute("cMap", cMap);
        request.setAttribute("cList", cList);
        request.getRequestDispatcher("/views/client/pages/product/list.jsp").forward(request, response);
    }

    private void loadPaginatedProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String order = "ASC";
        
        int currentPage = 1;
        try {
            String sortOrder = request.getParameter("order");
            if (sortOrder != null && !sortOrder.isEmpty()) {
                order = sortOrder.toUpperCase();
            }
            currentPage = Integer.parseInt(request.getParameter("page"));
        } catch (NumberFormatException e) {
            currentPage = 1;
        }

        ProductDao productDao = new ProductDao();
        int offset = (currentPage - 1) * PAGE_SIZE_ADMIN;
        List<Product> products = productDao.getPaginatedProductsDynamic(order, "Price", offset, PAGE_SIZE_ADMIN);

        int totalProducts = productDao.getTotalProductCount();
        int totalPages = (int) Math.ceil((double) totalProducts / PAGE_SIZE_ADMIN);
        List<Category> cList = new CategoryDao().getAll();
        Map<Integer, Integer> cMap = new CategoryDao().getQuantityOfCategory(cList);

        request.setAttribute("features", productDao.getFeatureProduct());
        request.setAttribute("result", products);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("numberOfPages", totalPages);
        request.setAttribute("cMap", cMap);
        request.setAttribute("cList", cList);
        request.getRequestDispatcher("/views/client/pages/product/list.jsp").forward(request, response);
    }
}
