<%-- 
    Document   : payment
    Created on : Jul 13, 2024, 5:39:04 PM
    Author     : trong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp" />
<div class="container py-5">
    <h1 class="text-center">Payment</h1>
    <form action="PaymentServlet" method="post" enctype="multipart/form-data">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="paymentMethod" id="cod" value="COD" checked>
            <label class="form-check-label" for="cod">
                Thanh toán khi nhận hàng (+ 15,000 VND phí ship)
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="paymentMethod" id="bankTransfer" value="BankTransfer">
            <label class="form-check-label" for="bankTransfer">
                Chuyển khoản (+ 15,000 VND phí ship)
            </label>
        </div>
        <div id="codDetails">
            <p>Vui lòng thanh toán 15,000 VND phí ship cho người giao hàng.</p>
        </div>
        <div id="bankTransferDetails" style="display:none;">
            <h5>Chuyển khoản đến:</h5>
            <p>Mã QR code:</p>
            <!-- Thêm hình ảnh QR code tại đây -->
            <div class="mb-3">
                <label for="paymentProof" class="form-label">Tải ảnh đã thanh toán:</label>
                <input class="form-control" type="file" id="paymentProof" name="paymentProof">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Thanh toán</button>
        <button type="button" class="btn btn-secondary" onclick="window.location.href='cart.jsp'">Huỷ thanh toán</button>
    </form>
</div>
<jsp:include page="includes/footer.jsp" />

<script>
    document.getElementById('cod').addEventListener('change', function() {
        document.getElementById('codDetails').style.display = 'block';
        document.getElementById('bankTransferDetails').style.display = 'none';
    });
    document.getElementById('bankTransfer').addEventListener('change', function() {
        document.getElementById('bankTransferDetails').style.display = 'block';
        document.getElementById('codDetails').style.display = 'none';
    });
</script>
