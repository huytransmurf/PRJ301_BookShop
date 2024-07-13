<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required Meta Tags Always Come First -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />

        <!-- Title -->
        <title>FRUIT SHOP | Dashboard Admin</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico" />

        <!-- Font -->
        <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap"
            rel="stylesheet"
            />

        <!-- CSS Implementing Plugins -->
        <link rel="stylesheet" href="assets\css\vendor.min.css" />
        <link rel="stylesheet" href="assets\vendor\icon-set\style.css" />

        <!-- CSS Front Template -->
        <link rel="stylesheet" href="assets\css\theme.min.css?v=1.0" />
    </head>

    <body class="footer-offset">
        <script src="assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>

        <jsp:include page="../includes/navbar.jsp" />

        <main id="content" role="main" class="main">

            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col-sm mb-2 mb-sm-0">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb breadcrumb-no-gutter">
                                    <li class="breadcrumb-item"><a class="breadcrumb-link" href="ecommerce-products.html">Products</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Product Detail</li>
                                </ol>
                            </nav>

                            <h1 class="page-header-title text-center blinking">Product Detail</h1>
                        </div>
                    </div>
                </div>




                <!-- Form để chỉnh sửa hoặc thêm mới sản phẩm -->
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="product-details">
                            <div class="container mt-4">
                                <h1>Edit Product</h1>
                                <form method="POST" action="${pageContext.request.contextPath}/EditProductServlet" class="needs-validation" novalidate>
                                    <input type="hidden" name="productID" value="${product.productID}">
                                    <div class="form-group">
                                        <label>Best Seller:</label>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="bestSeller" name="bestSeller" ${product.bestSeller ? 'checked' : ''}>
                                            <label class="custom-control-label" for="bestSeller">Is Best Seller</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Full Name:</label>
                                        <input type="text" class="form-control" name="fullName" value="${product.fullName}" required>
                                        <div class="invalid-feedback">
                                            Please provide a valid full name.
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Description:</label>
                                        <textarea class="form-control" name="description" rows="3">${product.description}</textarea>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Quantity:</label>
                                            <input type="number" class="form-control" name="quantity" value="${product.quantity}" required>
                                            <div class="invalid-feedback">
                                                Please provide a valid quantity.
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Quantity Sold:</label>
                                            <input type="number" class="form-control" name="quantitySold" value="${product.quantitySold}" required>
                                            <div class="invalid-feedback">
                                                Please provide a valid quantity sold.
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Category ID:</label>
                                            <input type="number" class="form-control" name="categoryID" value="${product.categoryID}" required>
                                            <div class="invalid-feedback">
                                                Please provide a valid category ID.
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Price:</label>
                                            <input type="number" step="0.01" class="form-control" name="price" value="${product.price}" required>
                                            <div class="invalid-feedback">
                                                Please provide a valid price.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Discount:</label>
                                        <input type="number" class="form-control" name="discount" value="${product.discount}" required>
                                        <div class="invalid-feedback">
                                            Please provide a valid discount.
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="imgUrl">Current Image:</label><br>
                                        <img src="${product.imageURL}" alt="Current Image" class="img-preview">
                                    </div>
                                   
                                    <div class="form-group">
                                        <label for="imgFile">Image File:</label>
                                        <input type="file" class="form-control-file" id="imgFile" name="imgFile" accept="image/*" required onchange="previewImage(event)">
                                    </div>
                                    <div class="form-group text-center">
                                        <img id="imgPreview" src="" alt="Image Preview" class=" mx-auto" style="max-width: 50%; height: auto; display: none" >
                                    </div>
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    </main>


                    <jsp:include page="../includes/footer.jsp" />

                    <script>
                        function previewImage(event) {
                            var reader = new FileReader();
                            reader.onload = function () {
                                var imgPreview = document.getElementById('imgPreview');
                                imgPreview.src = reader.result;
                                imgPreview.style.display = 'block';
                            };
                            var fileInput = event.target;
                            if (fileInput.files && fileInput.files[0]) {
                                reader.readAsDataURL(fileInput.files[0]);
                            }
                        }
                    </script>
                    <style>
                        @keyframes blink {
                            0% {
                                opacity: 1;
                            }
                            50% {
                                opacity: 0.8;
                            }
                            100% {
                                opacity: 1;
                            }
                        }
                        .blinking {
                            animation: blink 1s infinite;
                            color: #009aa8; /* Màu nổi bật */
                        }
                    </style>
