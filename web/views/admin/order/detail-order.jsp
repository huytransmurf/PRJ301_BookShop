<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.*" %>

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
        <style>
            body {
                background-color: #f8f9fa;
                padding-top: 20px;
            }
            .container {
                max-width: 800px;
                margin: 0 auto;
            }
            .order-card {
                margin-bottom: 20px;
                padding: 15px;
                background-color: #ffffff;
                border: 1px solid #ddd;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            .order-details {
                margin-top: 10px;
                padding-top: 10px;
                border-top: 1px solid #ddd;
            }
            .order-details ul {
                list-style-type: none;
                padding-left: 0;
            }
            .order-details ul li {
                padding: 5px 0;
                font-size: 14px;
            }
            .order-header {
                background-color: #00CC99;
                color: #ffffff;
                padding: 10px;
                border-top-left-radius: 8px;
                border-top-right-radius: 8px;
                margin-bottom: 10px;
            }
            .order-header h4 {
                margin: 0;
            }
        </style>
    </head>

    <body class="footer-offset">
        <script src="assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>

        <jsp:include page="./includes/navbar.jsp" />

        // Body here
        <main id="content" role="main" class="main">
            <div class="content container-fluid">
                <div class="order-header text-center">
                    <h4>Order Details</h4>
                </div>
                <% if (request.getAttribute("orders") != null) {
                    ArrayList<Order> orders = (ArrayList<Order>) request.getAttribute("orders");
                    for (Order order : orders) {
                %>
                <div class="order-card">
                    <div class="row">
                        <div class="col-md-8">
                            <h5>Order ID: <%= order.getId() %></h5>
                            <p>Order Date: <%= order.getOrderDate() %></p>
                            <p>Total Cost: $<%= order.getTotalCost() %></p>
                        </div>
                        <div class="col-md-4 text-right">
                            <button type="button" class="btn btn-info btn-sm">Edit Order</button>
                        </div>
                    </div>
                    <div class="order-details">
                        <h6>Order Details</h6>
                        <ul>
                            <% ArrayList<OrderDetail> orderDetails = (ArrayList<OrderDetail>) request.getAttribute("orderDetails");
                            for (OrderDetail detail : orderDetails) {
                                if (detail.getOderID() == order.getId()) { %>
                            <li>Product ID: <%= detail.getProductID() %></li>
                            <li>Quantity: <%= detail.getQuantity() %></li>
                            <li>Cost: $<%= detail.getCost() %> USD</li>
                                <% } } %>
                        </ul>
                    </div>
                </div>
                <% } } %>            </div>
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
    </body>
</html>
