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
        <script src="assets\js\demo.js"></script>

        <jsp:include page="./includes/navbar.jsp" />

        <main id="content" role="main" class="main">
            <!-- Content -->
            <div class="content container-fluid">
                <!-- Page Header -->
                <div class="page-header">
                    <div class="row align-items-center mb-3">
                        <div class="col-sm mb-2 mb-sm-0">
                            <h1 class="page-header-title">Products <span class="badge badge-soft-dark ml-2">72,031</span></h1>
                        </div>

                        <div class="col-sm-auto">
                            <a class="btn btn-primary" href="ecommerce-add-product.html">Add product</a>
                        </div>
                    </div>
                    <!-- End Row -->

                    <!-- Nav Scroller -->
                    <div class="js-nav-scroller hs-nav-scroller-horizontal">
                        <span class="hs-nav-scroller-arrow-prev" style="display: none;">
                            <a class="hs-nav-scroller-arrow-link" href="javascript:;">
                                <i class="tio-chevron-left"></i>
                            </a>
                        </span>

                        <span class="hs-nav-scroller-arrow-next" style="display: none;">
                            <a class="hs-nav-scroller-arrow-link" href="javascript:;">
                                <i class="tio-chevron-right"></i>
                            </a>
                        </span>

                        <!-- Nav -->
                        <ul class="nav nav-tabs page-header-tabs" id="pageHeaderTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">All products</a>
                            </li>
                        </ul>
                        <!-- End Nav -->
                    </div>
                    <!-- End Nav Scroller -->
                </div>
                <!-- End Page Header -->

                <div class="row justify-content-end mb-3">
                    <div class="col-lg">
                        <!-- Datatable Info -->
                        <div id="datatableCounterInfo" style="display: none;">
                            <div class="d-sm-flex justify-content-lg-end align-items-sm-center">
                                <span class="d-block d-sm-inline-block font-size-sm mr-3 mb-2 mb-sm-0">
                                    <span id="datatableCounter">0</span>
                                    Selected
                                </span>
                                <a class="btn btn-sm btn-outline-danger mb-2 mb-sm-0 mr-2" href="java1script:;">
                                    <i class="tio-delete-outlined"></i> Delete
                                </a>
                            </div>
                        </div>
                        <!-- End Datatable Info -->
                    </div>
                </div>
                <!-- End Row -->

                <!-- Card -->
                <div class="card">
                    <!-- Header -->

                    <!-- End Header -->

                    <!-- Table -->
                    <div class="table-responsive datatable-custom">
                        <table id="datatable" class="table table-borderless table-thead-bordered table-nowrap table-align-middle card-table" data-hs-datatables-options='{
                               "columnDefs": [{
                               "targets": [0, 4, 9],
                               "width": "5%",
                               "orderable": false
                               }],
                               "order": [],
                               "info": {
                               "totalQty": "#datatableWithPaginationInfoTotalQty"
                               },
                               "search": "#datatableSearch",
                               "entries": "#datatableEntries",
                               "pageLength": 12,
                               "isResponsive": false,
                               "isShowPaging": false,
                               "pagination": "datatablePagination"
                               }'>
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col" class="table-column-pr-0">
                                    </th>
                                    <th class="table-column-pl-0">Product</th>
                                    <th>Type</th>
                                    <th>Vendor</th>
                                    <th>Stocks</th>
                                    <th>SKU</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Variants</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td class="table-column-pr-0">

                                    </td>
                                    <td class="table-column-pl-0">
                                        <a class="media align-items-center" href="ecommerce-product-details.html">
                                            <img class="avatar avatar-lg mr-3" src="assets\img\400x400\img4.jpg" alt="Image Description">
                                            <div class="media-body">
                                                <h5 class="text-hover-primary mb-0">Photive wireless speakers</h5>
                                            </div>
                                        </a>
                                    </td>
                                    <td>Electronics</td>
                                    <td>Google</td>
                                    <td>
                                        <label class="toggle-switch toggle-switch-sm" for="stocksCheckbox1">
                                            <input type="checkbox" class="toggle-switch-input" id="stocksCheckbox1" checked="">
                                            <span class="toggle-switch-label">
                                                <span class="toggle-switch-indicator"></span>
                                            </span>
                                        </label>
                                    </td>
                                    <td>2384741241</td>
                                    <td>$65</td>
                                    <td>60</td>
                                    <td>2</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <a class="btn btn-sm btn-warning " href="ecommerce-product-details.html" style="margin-right: 5px;">
                                                <i class="tio-edit"></i> Edit
                                            </a>

                                            <a class="btn btn-sm btn-danger me-2" href="ecommerce-product-details.html">
                                                <i class="tio-edit"></i> Delete
                                            </a>
                                            <!-- End Unfold -->
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- End Table -->

                    <!-- Footer -->
                    <div class="card-footer">
                        <!-- Pagination -->
                        <div class="row justify-content-center justify-content-sm-between align-items-sm-center">
                            <div class="col-sm mb-2 mb-sm-0">
                                <div class="d-flex justify-content-center justify-content-sm-start align-items-center">
                                    <span class="mr-2">Showing:</span>

                                    <!-- Select -->
                                    <select id="datatableEntries" class="js-select2-custom" data-hs-select2-options='{
                                            "minimumResultsForSearch": "Infinity",
                                            "customClass": "custom-select custom-select-sm custom-select-borderless",
                                            "dropdownAutoWidth": true,
                                            "width": true
                                            }'>
                                        <option value="12" selected="">12</option>
                                        <option value="14">14</option>
                                        <option value="16">16</option>
                                        <option value="18">18</option>
                                    </select>
                                    <!-- End Select -->

                                    <span class="text-secondary mr-2">of</span>

                                    <!-- Pagination Quantity -->
                                    <span id="datatableWithPaginationInfoTotalQty"></span>
                                </div>
                            </div>

                            <div class="col-sm-auto">
                                <div class="d-flex justify-content-center justify-content-sm-end">
                                    <!-- Pagination -->
                                    <nav id="datatablePagination" aria-label="Activity pagination"></nav>
                                </div>
                            </div>
                        </div>
                        <!-- End Pagination -->
                    </div>
                    <!-- End Footer -->
                </div>
                <!-- End Card -->
            </div>
            <!-- End Content -->

            <!-- Footer -->




            <!-- End Footer -->
        </main>

        <jsp:include page="./includes/footer.jsp" />


        <script src="assets\js\demo.js"></script>

        <!-- JS Implementing Plugins -->
        <script src="assets\js\vendor.min.js"></script>
        <script src="assets\vendor\chart.js\dist\Chart.min.js"></script>
        <script src="assets\vendor\chartjs-chart-matrix\dist\chartjs-chart-matrix.min.js"></script>

        <!-- JS Front -->
        <script src="assets\js\theme.min.js"></script>

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
