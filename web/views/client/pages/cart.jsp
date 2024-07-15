<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/views/client/includes/header.jsp"/>

<div class="container-fluid page-header py-5">
    <h1 class="text-center text-white display-6">Cart</h1>
    <ol class="breadcrumb justify-content-center mb-0">
        <li class="breadcrumb-item"><a href="Home">Home</a></li>
        <li class="breadcrumb-item"><a href="#">Pages</a></li>
        <li class="breadcrumb-item active text-white">Cart</li>
    </ol>
</div>
<!-- Single Page Header End -->

<!-- Cart Page Start -->
<div class="container-fluid py-5">
    <div class="container py-5">
        <div class="table-responsive">
            <form action="${pageContext.request.contextPath}/CreateOrder" method="post">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Products</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total</th>
                            <th scope="col">Handle</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cartItem" items="${cartItems}">
                            <tr>
                                <th scope="row">
                                    <div class="d-flex align-items-center">
                                        <img src="${pageContext.request.contextPath}/${cartItem.product.imageURL}" class="img-fluid me-5 rounded-circle" style="width: 80px; height: 80px;" alt="">
                                    </div>
                                </th>
                                <td>
                                    <p class="mb-0 mt-4">${cartItem.product.fullName}</p>
                                </td>
                                <td>
                                    <p class="mb-0 mt-4"><fmt:formatNumber value="${cartItem.product.price}" type="currency" currencySymbol="$" minFractionDigits="2" maxFractionDigits="2"/></p>
                                </td>
                                <td style="padding-top: 28px;">
                                    <input type="number" name="quantity_${cartItem.product.productID}" value="${cartItem.quantity}" min="1" max="999" required>
                                </td>
                                <td>
                                    <p class="mb-0 mt-4"><fmt:formatNumber value="${cartItem.product.price * cartItem.quantity}" type="currency" currencySymbol="$" minFractionDigits="2" maxFractionDigits="2"/></p>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-md rounded-circle bg-light border mt-4 delete-btn">
                                        <i class="fa fa-times text-danger"></i>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="mt-5">
                    <button type="submit" class="btn btn-primary rounded-pill px-4 py-3 text-white ms-3">Proceed to Checkout</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Cart Page End -->
<jsp:include page="/views/client/includes/footer.jsp" />
