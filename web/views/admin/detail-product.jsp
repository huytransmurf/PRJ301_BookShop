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

        <jsp:include page="./includes/navbar.jsp" />

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
                            <form action="UpdateProductServlet" method="post" enctype="multipart/form-data">
                                <!-- Hidden input để lưu ID sản phẩm -->
                                <input type="hidden" name="productId" value="${product.id}">

                                <div class="form-group">
                                    <label for="fullName">Full Name:</label>
                                    <input type="text" class="form-control" id="fullName" name="fullName" value="${product.fullName}" required>
                                </div>
                                <div class="form-group">
                                    <label for="descript">Description:</label>
                                    <textarea class="form-control" id="descript" name="descript" rows="3" required>${product.descript}</textarea>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="quantity">Quantity:</label>
                                        <input type="number" class="form-control" id="quantity" name="quantity" value="${product.quantity}" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="quantitySold">Quantity Sold:</label>
                                        <input type="number" class="form-control" id="quantitySold" name="quantitySold" value="${product.quantitySold}" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="price">Price:</label>
                                        <input type="number" step="0.01" class="form-control" id="price" name="price" value="${product.price}" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="numberOfPage">Number of Pages:</label>
                                        <input type="number" class="form-control" id="numberOfPage" name="numberOfPage" value="${product.numberOfPage}" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="imgUrl">Current Image:</label><br>
                                    <img src="${product.imgUrl}" alt="Current Image" class="img-preview">
                                </div>
                                <div class="form-group">
                                    <label for="newImgFile">New Image File:</label>
                                    <input type="file" class="form-control-file" id="newImgFile" name="newImgFile" accept="image/*">
                                </div>
                                <div class="form-group">
                                    <label for="categoryID">Category ID:</label>
                                    <input type="number" class="form-control" id="categoryID" name="categoryID" value="${product.categoryID}" required>
                                </div>
                                <div class="form-group">
                                    <label for="author">Author:</label>
                                    <input type="text" class="form-control" id="author" name="author" value="${product.author}" required>
                                </div>
                                <div class="form-group">
                                    <label for="publisher">Publisher:</label>
                                    <input type="text" class="form-control" id="publisher" name="publisher" value="${product.publisher}" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Update Product</button>
                            </form>
                        </div>
                    </div>
                </div>

        </main>

        <jsp:include page="./includes/footer.jsp" />


        <script src="assets\js\demo.js"></script>

        <!-- JS Implementing Plugins -->
        <script src="assets\js\vendor.min.js"></script>
        <script src="assets\vendor\chart.js\dist\Chart.min.js"></script>
        <script src="assets\vendor\chartjs-chart-matrix\dist\chartjs-chart-matrix.min.js"></script>

        <!-- JS Front -->
        <script src="assets\js\theme.min.js"></script>

        <!-- JS Plugins Init. -->
        <script>
            $(document).on("ready", function () {
                // ONLY DEV
                // =======================================================

                if (window.localStorage.getItem("hs-builder-popover") === null) {
                    $("#builderPopover")
                            .popover("show")
                            .on("shown.bs.popover", function () {
                                $(".popover").last().addClass("popover-dark");
                            });

                    $(document).on("click", "#closeBuilderPopover", function () {
                        window.localStorage.setItem("hs-builder-popover", true);
                        $("#builderPopover").popover("dispose");
                    });
                } else {
                    $("#builderPopover").on("show.bs.popover", function () {
                        return false;
                    });
                }

                // END ONLY DEV
                // =======================================================

                // BUILDER TOGGLE INVOKER
                // =======================================================
                $(".js-navbar-vertical-aside-toggle-invoker").click(function () {
                    $(".js-navbar-vertical-aside-toggle-invoker i").tooltip("hide");
                });

                // INITIALIZATION OF MEGA MENU
                // =======================================================
                var megaMenu = new HSMegaMenu($(".js-mega-menu"), {
                    desktop: {
                        position: "left",
                    },
                }).init();

                // INITIALIZATION OF NAVBAR VERTICAL NAVIGATION
                // =======================================================
                var sidebar = $(".js-navbar-vertical-aside").hsSideNav();

                // INITIALIZATION OF TOOLTIP IN NAVBAR VERTICAL MENU
                // =======================================================
                $(".js-nav-tooltip-link").tooltip({boundary: "window"});

                $(".js-nav-tooltip-link").on("show.bs.tooltip", function (e) {
                    if (!$("body").hasClass("navbar-vertical-aside-mini-mode")) {
                        return false;
                    }
                });

                // INITIALIZATION OF UNFOLD
                // =======================================================
                $(".js-hs-unfold-invoker").each(function () {
                    var unfold = new HSUnfold($(this)).init();
                });

                // INITIALIZATION OF FORM SEARCH
                // =======================================================
                $(".js-form-search").each(function () {
                    new HSFormSearch($(this)).init();
                });

                // INITIALIZATION OF SELECT2
                // =======================================================
                $(".js-select2-custom").each(function () {
                    var select2 = $.HSCore.components.HSSelect2.init($(this));
                });

                // INITIALIZATION OF DATERANGEPICKER
                // =======================================================
                $(".js-daterangepicker").daterangepicker();

                $(".js-daterangepicker-times").daterangepicker({
                    timePicker: true,
                    startDate: moment().startOf("hour"),
                    endDate: moment().startOf("hour").add(32, "hour"),
                    locale: {
                        format: "M/DD hh:mm A",
                    },
                });

                var start = moment();
                var end = moment();

                function cb(start, end) {
                    $(
                            "#js-daterangepicker-predefined .js-daterangepicker-predefined-preview"
                            ).html(start.format("MMM D") + " - " + end.format("MMM D, YYYY"));
                }

                $("#js-daterangepicker-predefined").daterangepicker(
                        {
                            startDate: start,
                            endDate: end,
                            ranges: {
                                Today: [moment(), moment()],
                                Yesterday: [
                                    moment().subtract(1, "days"),
                                    moment().subtract(1, "days"),
                                ],
                                "Last 7 Days": [moment().subtract(6, "days"), moment()],
                                "Last 30 Days": [moment().subtract(29, "days"), moment()],
                                "This Month": [
                                    moment().startOf("month"),
                                    moment().endOf("month"),
                                ],
                                "Last Month": [
                                    moment().subtract(1, "month").startOf("month"),
                                    moment().subtract(1, "month").endOf("month"),
                                ],
                            },
                        },
                        cb
                        );

                cb(start, end);

                // INITIALIZATION OF CHARTJS
                // =======================================================
                $(".js-chart").each(function () {
                    $.HSCore.components.HSChartJS.init($(this));
                });

                // INITIALIZATION OF JVECTORMAP
                // =======================================================
                $(".js-jvectormap").each(function () {
                    var jVectorMap = $.HSCore.components.HSJVectorMap.init($(this));
                });
            });
        </script>

        <!-- IE Support -->
        <script>
            if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent))
                document.write(
                        '<script src="./assets/vendor/babel-polyfill/polyfill.min.js"><\/script>'
                        );
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
    </body>
</html>
