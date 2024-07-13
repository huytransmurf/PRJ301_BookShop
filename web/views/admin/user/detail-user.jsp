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

        <style>
            body {
                background: linear-gradient(to right, #c5fdf2, #bdaef5);
                font-family: Arial, sans-serif;
            }
            .profile-card {
                max-width: 600px;
                margin: 50px auto;
                background-color: #ffffff;
                border: 1px solid #ddd;
                border-radius: 8px;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
                padding: 30px;
            }
            .profile-img {
                width: 150px;
                height: 150px;
                border-radius: 50%;
                object-fit: cover;
                margin-bottom: 20px;
                border: 5px solid #fff;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            .profile-name {
                font-size: 28px;
                font-weight: bold;
                color: #333;
                margin-bottom: 10px;
            }
            .profile-email {
                color: #6c757d;
                margin-bottom: 20px;
            }
            .profile-details {
                border-top: 1px solid #ddd;
                padding-top: 20px;
            }
            .profile-details h4 {
                margin-bottom: 15px;
                font-size: 22px;
                color: #333;
            }
            .profile-details ul {
                list-style-type: none;
                padding-left: 0;
            }
            .profile-details ul li {
                padding: 5px 0;
                color: #555;
            }
            .btn-edit-profile {
                background-color: #007bff;
                color: #ffffff;
                border: none;
                padding: 8px 20px;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            .btn-edit-profile:hover {
                background-color: #0056b3;
            }
            .edit-profile-form {
                display: none;
                margin-top: 20px;
            }
        </style>
    </head>

    <body class="footer-offset">
        <script src="assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>

        <jsp:include page="../includes/navbar.jsp" />

        <main id="content" role="main" class="main">
            <div class="content container-fluid">

                <div class="profile-card">
                    <div class="text-center">
                        <img src="${user.avatarURL}" alt="Profile Picture" class="profile-img">
                        <div class="profile-name">${user.firstName} ${user.lastName}</div>
                        <button class="btn btn-edit-profile" id="btnEditProfile">Edit Profile</button>
                    </div>
                    <div class="edit-profile-form" id="editProfileForm">
                        <form method="post" action="EditUserServlet">
                            <input hidden="true" id="userId" name="id" value="${user.id}" />

                            <div class="form-group">
                                <label for="firstName">First Name:</label>
                                <input type="text" class="form-control" id="firstName" name="firstName" value="${user.firstName}">
                            </div>
                            <div class="form-group">
                                <label for="lastName">Last Name:</label>
                                <input type="text" class="form-control" id="lastName" name="lastName" value="${user.lastName}">
                            </div>
                            <div class="form-group">
                                <label for="address">Address:</label>
                                <input type="text" class="form-control" id="address" name="address" value="${user.address}">
                            </div>
                            <div class="form-group">
                                <label for="role">Role:</label>
                                <input type="text" class="form-control" id="role" name="role" value="${user.role}">
                            </div>
                            <div class="form-group">
                                <label for="avatarURL">Avatar URL:</label>
                                <input type="text" class="form-control" id="avatarURL" name="avatarURL" value="${user.avatarURL}">
                            </div>
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </form>
                    </div>
                    <div class="profile-details">
                        <h4>Profile Details</h4>
                        <ul>
                            <li><strong>First Name:</strong> ${user.firstName}</li>
                            <li><strong>Last Name:</strong> ${user.lastName}</li>
                            <li><strong>Address:</strong> ${user.address}</li>
                            <li><strong>Role:</strong> ${user.role}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </main>

        <jsp:include page="../includes/footer.jsp" />


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

        <script>
            document.getElementById('btnEditProfile').addEventListener('click', function () {
                // Toggle display of edit profile form
                var editForm = document.getElementById('editProfileForm');
                editForm.style.display = (editForm.style.display === 'block') ? 'none' : 'block';

                // Update form fields with current profile details (if needed)
                var fullName = document.getElementById('fullName');
                var age = document.getElementById('age');
                var location = document.getElementById('location');
                var interests = document.getElementById('interests');

                // Replace default values with actual profile data here
                fullName.value = "User Full Name";
                age.value = "30";
                location.value = "City, Country";
                interests.value = "Reading, Traveling";
            });
        </script>
    </body>
</html>
