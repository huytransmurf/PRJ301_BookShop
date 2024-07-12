<%@ page import="java.util.List" %>
<%@ page import="model.Review" %>
<%@ page import="model.Product" %>
<%@ page import="dao.implement.ReviewDao" %>
<%@ page import="dao.implement.ProductDao" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../includes/navbar.jsp" />
<% 
    ReviewDao reviewDao = new ReviewDao();    
    ProductDao productDao = new ProductDao();
    List<Review> reviews = reviewDao.getAll();
    request.setAttribute("reviews", reviews);
%>
<main id="content" role="main" class="main">
    <div class="content container-fluid">
        <div class="container mt-5">
            <h1 class="mb-4">Manage Reviews</h1>

            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Product Name</th>
                        <th>Product Image</th>
                        <th>Review Comment</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="review" items="${reviews}">
                        <c:set var="product" value="${productDao.getById(review.productID)}" />
                        <tr>
                            <td><c:out value="${review.id}" /></td>
                            <td><c:out value="${product.fullName}" /></td>
                            <td>
                                <img src="${product.imageURL}" alt="Product Image" style="width: 100px; height: auto;" />
                            </td>
                            <td><c:out value="${review.description}" /></td>
                            <td>
                                <form action="deleteReview" method="post" onsubmit="return confirm('Are you sure you want to delete this review?');">
                                    <input type="hidden" name="reviewId" value="${review.id}" />
                                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</main>

<jsp:include page="../includes/footer.jsp" />

<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<!-- Your Custom JS -->
<script src="assets/js/demo.js"></script>
<script src="assets/js/vendor.min.js"></script>
<script src="assets/vendor/chart.js/dist/Chart.min.js"></script>
<script src="assets/vendor/chartjs-chart-matrix/dist/chartjs-chart-matrix.min.js"></script>
<script src="assets/js/theme.min.js"></script>

<script>
                                    document.addEventListener("DOMContentLoaded", function () {
                                        // Your custom JavaScript code here
                                    });
</script>

<!-- IE Support -->
<script>
    if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) {
        document.write('<script src="./assets/vendor/babel-polyfill/polyfill.min.js"><\/script>');
    }
</script>
</body>
</html>
