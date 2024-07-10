<%-- 
    Document   : navbar
    Created on : Jul 10, 2024, 1:34:32?AM
    Author     : admin
--%>

<div id="styleSwitcherDropdown" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow" style="width: 35rem;">
    <div class="card card-lg border-0 h-100">
        <div class="card-header align-items-start">
            <div class="mr-2">
                <h3 class="card-header-title">Front Builder</h3>
                <p>Customize your overview page layout. Choose the one that best fits your needs.</p>
            </div>

            <!-- Toggle Button -->
            <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark" href="javascript:;" data-hs-unfold-options='{
               "target": "#styleSwitcherDropdown",
               "type": "css-animation",
               "animationIn": "fadeInRight",
               "animationOut": "fadeOutRight",
               "hasOverlay": true,
               "smartPositionOff": true
               }'>
                <i class="tio-clear tio-lg"></i>
            </a>
            <!-- End Toggle Button -->
        </div>

        <!-- Body -->
        <div class="card-body sidebar-scrollbar">
            <h4 class="mb-1">Layout skins <span id="js-builder-disabled" class="badge badge-soft-danger" style="opacity: 0">Disabled</span></h4>
            <p>3 kinds of layout skins to choose from.</p>

            <div class="row gx-2 mb-5">
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio" id="layoutSkinsRadio1" checked="" value="default">
                            <label class="custom-checkbox-card-label" for="layoutSkinsRadio1">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\layouts-sidebar-default.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Default</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->

                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio" id="layoutSkinsRadio2" value="navbar-dark">
                            <label class="custom-checkbox-card-label" for="layoutSkinsRadio2">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\layouts-sidebar-dark.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Dark</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->

                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio" id="layoutSkinsRadio3" value="navbar-light">
                            <label class="custom-checkbox-card-label" for="layoutSkinsRadio3">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\layouts-sidebar-light.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Light</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
            </div>
            <!-- End Row -->

            <h4 class="mb-1">Sidebar layout options</h4>
            <p>Choose between standard navigation sizing, mini or even compact with icons.</p>

            <div class="row gx-2 mb-5">
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions" id="sidebarLayoutOptions1" checked="" value="default">
                            <label class="custom-checkbox-card-label" for="sidebarLayoutOptions1">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\sidebar-default-classic.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Default</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->

                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions" id="sidebarLayoutOptions2" value="navbar-vertical-aside-compact-mode">
                            <label class="custom-checkbox-card-label" for="sidebarLayoutOptions2">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\sidebar-compact.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Compact</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->

                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions" id="sidebarLayoutOptions3" value="navbar-vertical-aside-mini-mode">
                            <label class="custom-checkbox-card-label" for="sidebarLayoutOptions3">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\sidebar-mini.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Mini</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
            </div>
            <!-- End Row -->

            <h4 class="mb-1">Header layout options</h4>
            <p>Choose the primary navigation of your header layout.</p>

            <div class="row gx-2">
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions" id="headerLayoutOptions1" value="single">
                            <label class="custom-checkbox-card-label" for="headerLayoutOptions1">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\header-default-fluid.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Default (Fluid)</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->

                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions" id="headerLayoutOptions2" value="single-container">
                            <label class="custom-checkbox-card-label" for="headerLayoutOptions2">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\header-default-container.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Default (Container)</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->

                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions" id="headerLayoutOptions3" value="double">
                            <label class="custom-checkbox-card-label" for="headerLayoutOptions3">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\header-double-line-fluid.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Double line (Fluid)</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->

                <!-- Custom Radio -->
                <div class="col-4 text-center mt-2">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions" id="headerLayoutOptions4" value="double-container">
                            <label class="custom-checkbox-card-label" for="headerLayoutOptions4">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\header-double-line-container.svg" alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Double line (Container)</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
            </div>
            <!-- End Row -->
        </div>
        <!-- End Body -->

        <!-- Footer -->
        <div class="card-footer">
            <div class="row gx-2">
                <div class="col">
                    <button type="button" id="js-builder-reset" class="btn btn-block btn-lg btn-white">
                        <i class="tio-restore"></i> Reset
                    </button>
                </div>
                <div class="col">
                    <button type="button" id="js-builder-preview" class="btn btn-block btn-lg btn-primary">
                        <i class="tio-visible"></i> Preview
                    </button>
                </div>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Footer -->
    </div>
</div>
<!-- End Builder -->

<!-- Builder Toggle -->
<div class="d-none d-md-block position-fixed bottom-0 right-0 mr-5 mb-10" style="z-index: 3;">
    <div style="position: fixed; top: 50%; right: 0; margin-right: -.25rem; transform: translateY(-50%); writing-mode: vertical-rl; text-orientation: sideways;">
        <div class="hs-unfold">
            <a id="builderPopover" class="js-hs-unfold-invoker btn btn-sm btn-soft-dark py-3" href="javascript:;" data-template='<div class="d-none d-md-block popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>' data-toggle="popover" data-placement="left" title="<div class='d-flex align-items-center'>Front Builder <a href='#!' class='close close-light ml-auto'><i id='closeBuilderPopover' class='tio-clear'></i></a></div>" data-content="Customize your overview page layout. Choose the one that best fits your needs." data-html="true" data-hs-unfold-options='{
               "target": "#styleSwitcherDropdown",
               "type": "css-animation",
               "animationIn": "fadeInRight",
               "animationOut": "fadeOutRight",
               "hasOverlay": true,
               "smartPositionOff": true
               }'>
                <i class="tio-tune mr-2"></i>
                <span class="font-weight-bold text-uppercase">Builder</span>
            </a>
        </div>
    </div>
</div>

<div id="headerMain" class="d-none">
    <header
        id="header"
        class="navbar navbar-expand-lg navbar-fixed navbar-height navbar-flush navbar-container navbar-bordered"
        >
        <div class="navbar-nav-wrap">
            <div class="navbar-brand-wrapper">
                <!-- Logo -->
                <a class="navbar-brand" href="index.html" aria-label="Front">
                    <img
                        class="navbar-brand-logo"
                        src="assets\svg\logos\logo.svg"
                        alt="Logo"
                        />
                    <img
                        class="navbar-brand-logo-mini"
                        src="assets\svg\logos\logo-short.svg"
                        alt="Logo"
                        />
                </a>
                <!-- End Logo -->
            </div>

            <div class="navbar-nav-wrap-content-left">
                <!-- Navbar Vertical Toggle -->
                <button
                    type="button"
                    class="js-navbar-vertical-aside-toggle-invoker close mr-3"
                    >
                    <i
                        class="tio-first-page navbar-vertical-aside-toggle-short-align"
                        data-toggle="tooltip"
                        data-placement="right"
                        title="Collapse"
                        ></i>
                    <i
                        class="tio-last-page navbar-vertical-aside-toggle-full-align"
                        data-template='<div class="tooltip d-none d-sm-block" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>'
                        data-toggle="tooltip"
                        data-placement="right"
                        title="Expand"
                        ></i>
                </button>
                <!-- End Navbar Vertical Toggle -->

                <!-- Search Form -->
                <div class="d-none d-md-block">
                    <form class="position-relative">
                        <!-- Input Group -->
                        <div
                            class="input-group input-group-merge input-group-borderless input-group-hover-light navbar-input-group"
                            >
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="tio-search"></i>
                                </div>
                            </div>
                            <input
                                type="search"
                                class="js-form-search form-control"
                                placeholder="Search in front"
                                aria-label="Search in front"
                                data-hs-form-search-options='{
                                "clearIcon": "#clearSearchResultsIcon",
                                "dropMenuElement": "#searchDropdownMenu",
                                "dropMenuOffset": 20,
                                "toggleIconOnFocus": true,
                                "activeClass": "focus"
                                }'
                                />
                            <a class="input-group-append" href="javascript:;">
                                <span class="input-group-text">
                                    <i
                                        id="clearSearchResultsIcon"
                                        class="tio-clear"
                                        style="display: none"
                                        ></i>
                                </span>
                            </a>
                        </div>
                        <!-- End Input Group -->

                        <!-- Card Search Content -->

                        <!-- End Card Search Content -->
                    </form>
                </div>
                <!-- End Search Form -->
            </div>

            <!-- Secondary Content -->

            <div class="navbar-nav-wrap-content-right">
                <!-- Navbar -->
                <ul class="navbar-nav align-items-center flex-row">


                    <li class="nav-item">
                        <!-- Account -->
                        <div class="hs-unfold">
                            <a class="js-hs-unfold-invoker navbar-dropdown-account-wrapper" href="javascript:;" data-hs-unfold-options='{
                               "target": "#accountNavbarDropdown",
                               "type": "css-animation"
                               }'>
                                <div class="avatar avatar-sm avatar-circle">
                                    <img class="avatar-img" src="assets\img\160x160\img6.jpg" alt="Image Description">
                                    <span class="avatar-status avatar-sm-status avatar-status-success"></span>
                                </div>
                            </a>

                            <div id="accountNavbarDropdown" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right navbar-dropdown-menu navbar-dropdown-account" style="width: 16rem;">
                                <div class="dropdown-item-text">
                                    <div class="media align-items-center">
                                        <div class="avatar avatar-sm avatar-circle mr-2">
                                            <img class="avatar-img" src="assets\img\160x160\img6.jpg" alt="Image Description">
                                        </div>
                                        <div class="media-body">
                                            <span class="card-title h5">Mark Williams</span>
                                            <span class="card-text">mark@example.com</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="dropdown-divider"></div>

                                <!-- Unfold -->
                                <div class="hs-unfold w-100">
                                    <a class="js-hs-unfold-invoker navbar-dropdown-submenu-item dropdown-item d-flex align-items-center" href="javascript:;" data-hs-unfold-options='{
                                       "target": "#navSubmenuPagesAccountDropdown1",
                                       "event": "hover"
                                       }'>
                                        <span class="text-truncate pr-2" title="Set status">Set status</span>
                                        <i class="tio-chevron-right navbar-dropdown-submenu-item-invoker ml-auto"></i>
                                    </a>

                                    <div id="navSubmenuPagesAccountDropdown1" class="hs-unfold-content hs-unfold-has-submenu dropdown-unfold dropdown-menu navbar-dropdown-sub-menu">
                                        <a class="dropdown-item" href="#">
                                            <span class="legend-indicator bg-success mr-1"></span>
                                            <span class="text-truncate pr-2" title="Available">Available</span>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <span class="legend-indicator bg-danger mr-1"></span>
                                            <span class="text-truncate pr-2" title="Busy">Busy</span>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <span class="legend-indicator bg-warning mr-1"></span>
                                            <span class="text-truncate pr-2" title="Away">Away</span>
                                        </a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">
                                            <span class="text-truncate pr-2" title="Reset status">Reset status</span>
                                        </a>
                                    </div>
                                </div>
                                <!-- End Unfold -->

                                <a class="dropdown-item" href="#">
                                    <span class="text-truncate pr-2" title="Profile &amp; account">Profile &amp; account</span>
                                </a>

                                <a class="dropdown-item" href="#">
                                    <span class="text-truncate pr-2" title="Settings">Settings</span>
                                </a>

                                <div class="dropdown-divider"></div>

                                <a class="dropdown-item" href="#">
                                    <div class="media align-items-center">
                                        <div class="avatar avatar-sm avatar-dark avatar-circle mr-2">
                                            <span class="avatar-initials">HS</span>
                                        </div>
                                        <div class="media-body">
                                            <span class="card-title h5">Htmlstream <span class="badge badge-primary badge-pill text-uppercase ml-1">PRO</span></span>
                                            <span class="card-text">hs.example.com</span>
                                        </div>
                                    </div>
                                </a>

                                <div class="dropdown-divider"></div>

                                <!-- Unfold -->
                                <div class="hs-unfold w-100">
                                    <a class="js-hs-unfold-invoker navbar-dropdown-submenu-item dropdown-item d-flex align-items-center" href="javascript:;" data-hs-unfold-options='{
                                       "target": "#navSubmenuPagesAccountDropdown2",
                                       "event": "hover"
                                       }'>
                                        <span class="text-truncate pr-2" title="Customization">Customization</span>
                                        <i class="tio-chevron-right navbar-dropdown-submenu-item-invoker  ml-auto"></i>
                                    </a>

                                    <div id="navSubmenuPagesAccountDropdown2" class="hs-unfold-content hs-unfold-has-submenu dropdown-unfold dropdown-menu navbar-dropdown-sub-menu">
                                        <a class="dropdown-item" href="#">
                                            <span class="text-truncate pr-2" title="Invite people">Invite people</span>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <span class="text-truncate pr-2" title="Analytics">Analytics</span>
                                            <i class="tio-open-in-new"></i>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <span class="text-truncate pr-2" title="Customize Front">Customize Front</span>
                                            <i class="tio-open-in-new"></i>
                                        </a>
                                    </div>
                                </div>
                                <!-- End Unfold -->

                                <a class="dropdown-item" href="#">
                                    <span class="text-truncate pr-2" title="Manage team">Manage team</span>
                                </a>

                                <div class="dropdown-divider"></div>

                                <a class="dropdown-item" href="#">
                                    <span class="text-truncate pr-2" title="Sign out">Sign out</span>
                                </a>
                            </div>
                        </div>
                        <!-- End Account -->
                    </li>
                </ul>
                <!-- End Navbar -->
            </div>
            <!-- End Secondary Content -->
        </div>
    </header>
</div>
<div id="headerFluid" class="d-none">
    <header
        id="header"
        class="navbar navbar-expand-xl navbar-fixed navbar-height navbar-flush navbar-container navbar-bordered"
        >
        <div class="js-mega-menu navbar-nav-wrap">
            <div class="navbar-brand-wrapper">
                <!-- Logo -->

                <a class="navbar-brand" href="index.html" aria-label="Front">
                    <img
                        class="navbar-brand-logo"
                        src="assets\svg\logos\logo.svg"
                        alt="Logo"
                        />
                </a>

                <!-- End Logo -->
            </div>
        </div>
    </header>
</div>
<div id="headerDouble" class="d-none">
    <header
        id="header"
        class="navbar navbar-expand-lg navbar-bordered flex-lg-column px-0"
        ></header>
</div>
<div id="sidebarMain" class="d-none">
    <aside
        class="js-navbar-vertical-aside navbar navbar-vertical-aside navbar-vertical navbar-vertical-fixed navbar-expand-xl navbar-bordered"
        >
        <div class="navbar-vertical-container">
            <div class="navbar-vertical-footer-offset">
                <div class="navbar-brand-wrapper justify-content-between">
                    <!-- Logo -->

                    <a class="navbar-brand" href="index.html" aria-label="Front">
                        <img
                            class="navbar-brand-logo"
                            src="assets\svg\logos\logo.svg"
                            alt="Logo"
                            />
                        <img
                            class="navbar-brand-logo-mini"
                            src="assets\svg\logos\logo-short.svg"
                            alt="Logo"
                            />
                    </a>

                    <!-- End Logo -->

                    <!-- Navbar Vertical Toggle -->
                    <button
                        type="button"
                        class="js-navbar-vertical-aside-toggle-invoker navbar-vertical-aside-toggle btn btn-icon btn-xs btn-ghost-dark"
                        >
                        <i class="tio-clear tio-lg"></i>
                    </button>
                    <!-- End Navbar Vertical Toggle -->
                </div>

                <!-- Content -->
                <div class="navbar-vertical-content">
                    <ul class="navbar-nav navbar-nav-lg nav-tabs">
                        <!-- Dashboards -->
                        <li class="navbar-vertical-aside-has-menu">
                            <a
                                class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
                                href="javascript:;"
                                title="Dashboards"
                                >
                                <i class="tio-home-vs-1-outlined nav-icon"></i>
                                <span
                                    class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate"
                                    >Dashboards</span
                                >
                            </a>

                            <ul class="js-navbar-vertical-aside-submenu nav nav-sub">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html" title="Default">
                                        <span class="tio-circle nav-indicator-icon"></span>
                                        <span class="text-truncate">Default</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a
                                        class="nav-link"
                                        href="dashboard-alternative.html"
                                        title="Alternative"
                                        >
                                        <span class="tio-circle nav-indicator-icon"></span>
                                        <span class="text-truncate">Alternative</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- End Dashboards -->

                        <li class="nav-item">
                            <small class="nav-subtitle" title="Pages">Pages</small>
                            <small
                                class="tio-more-horizontal nav-subtitle-replacer"
                                ></small>
                        </li>

                        <!-- Pages -->
                        <li class="navbar-vertical-aside-has-menu show">
                            <a
                                class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle active"
                                href="javascript:;"
                                title="Pages"
                                >
                                <i class="tio-pages-outlined nav-icon"></i>
                                <span
                                    class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate"
                                    >Pages</span
                                >
                            </a>

                            <ul class="js-navbar-vertical-aside-submenu nav nav-sub">
                                <li class="navbar-vertical-aside-has-menu show">
                                    <a
                                        class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
                                        href="javascript:;"
                                        title="E-commerce"
                                        >
                                        <span class="tio-circle nav-indicator-icon"></span>
                                        <span class="text-truncate">E-commerce</span>
                                    </a>

                                    <ul class="js-navbar-vertical-aside-submenu nav nav-sub">
                                        <li class="nav-item">
                                            <a
                                                class="nav-link active"
                                                href="ecommerce.html"
                                                title="Overview"
                                                >
                                                <span
                                                    class="tio-circle-outlined nav-indicator-icon"
                                                    ></span>
                                                <span class="text-truncate">Overview</span>
                                            </a>
                                        </li>

                                        <li class="navbar-vertical-aside-has-menu">
                                            <a
                                                class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
                                                href="javascript:;"
                                                title="Products"
                                                >
                                                <span
                                                    class="tio-circle-outlined nav-indicator-icon"
                                                    ></span>
                                                <span class="text-truncate">Products</span>
                                            </a>

                                            <ul
                                                class="js-navbar-vertical-aside-submenu nav nav-sub"
                                                >
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        href="ecommerce-products.html"
                                                        title="Products"
                                                        >
                                                        <span
                                                            class="tio-circle nav-indicator-icon"
                                                            ></span>
                                                        <span class="text-truncate">Products</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        href="ecommerce-product-details.html"
                                                        title="Product Details"
                                                        >
                                                        <span
                                                            class="tio-circle nav-indicator-icon"
                                                            ></span>
                                                        <span class="text-truncate"
                                                              >Product Details</span
                                                        >
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        href="ecommerce-add-product.html"
                                                        title="Add Product"
                                                        >
                                                        <span
                                                            class="tio-circle nav-indicator-icon"
                                                            ></span>
                                                        <span class="text-truncate">Add Product</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li class="navbar-vertical-aside-has-menu">
                                            <a
                                                class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
                                                href="javascript:;"
                                                title="Orders"
                                                >
                                                <span
                                                    class="tio-circle-outlined nav-indicator-icon"
                                                    ></span>
                                                <span class="text-truncate">Orders</span>
                                            </a>

                                            <ul
                                                class="js-navbar-vertical-aside-submenu nav nav-sub"
                                                >
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        href="ecommerce-orders.html"
                                                        title="Orders"
                                                        >
                                                        <span
                                                            class="tio-circle nav-indicator-icon"
                                                            ></span>
                                                        <span class="text-truncate">Orders</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        href="ecommerce-order-details.html"
                                                        title="Order Details"
                                                        >
                                                        <span
                                                            class="tio-circle nav-indicator-icon"
                                                            ></span>
                                                        <span class="text-truncate">Order Details</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li class="navbar-vertical-aside-has-menu">
                                            <a
                                                class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
                                                href="javascript:;"
                                                title="Customers"
                                                >
                                                <span
                                                    class="tio-circle-outlined nav-indicator-icon"
                                                    ></span>
                                                <span class="text-truncate">Customers</span>
                                            </a>

                                            <ul
                                                class="js-navbar-vertical-aside-submenu nav nav-sub"
                                                >
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        href="ecommerce-customers.html"
                                                        title="Customers"
                                                        >
                                                        <span
                                                            class="tio-circle nav-indicator-icon"
                                                            ></span>
                                                        <span class="text-truncate">Customers</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        href="ecommerce-customer-details.html"
                                                        title="Customer Details"
                                                        >
                                                        <span
                                                            class="tio-circle nav-indicator-icon"
                                                            ></span>
                                                        <span class="text-truncate"
                                                              >Customer Details</span
                                                        >
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        href="ecommerce-add-customers.html"
                                                        title="Add Customers"
                                                        >
                                                        <span
                                                            class="tio-circle nav-indicator-icon"
                                                            ></span>
                                                        <span class="text-truncate">Add Customers</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                href="ecommerce-manage-reviews.html"
                                                title="Manage Reviews"
                                                >
                                                <span
                                                    class="tio-circle-outlined nav-indicator-icon"
                                                    ></span>
                                                <span class="text-truncate">Manage Reviews</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                href="ecommerce-checkout.html"
                                                title="Checkout"
                                                >
                                                <span
                                                    class="tio-circle-outlined nav-indicator-icon"
                                                    ></span>
                                                <span class="text-truncate">Checkout</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <!-- End Pages -->

                                <!-- Apps -->

                                <!-- End Apps -->

                                <!-- Authentication -->

                                <!-- End Authentication -->

                                <li class="nav-item">
                                    <a
                                        class="js-nav-tooltip-link nav-link"
                                        href="welcome-page.html"
                                        title="Welcome page"
                                        data-placement="left"
                                        >
                                        <i class="tio-visible-outlined nav-icon"></i>
                                        <span
                                            class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate"
                                            >Welcome Page</span
                                        >
                                    </a>
                                </li>

                                <!-- Front Builder -->

                                <!-- End Front Builder -->

                                <!-- Help -->

                                <!-- End Help -->

                                <!-- Language -->
                                <li class="navbar-vertical-aside-has-menu nav-footer-item">
                                    <a
                                        class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
                                        href="javascript:;"
                                        title="Language"
                                        >
                                        <img
                                            class="avatar avatar-xss avatar-circle"
                                            src="assets\vendor\flag-icon-css\flags\1x1\us.svg"
                                            alt="United States Flag"
                                            />
                                        <span
                                            class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate"
                                            >Language</span
                                        >
                                    </a>

                                    <ul class="js-navbar-vertical-aside-submenu nav nav-sub">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" title="English (US)">
                                                <img
                                                    class="avatar avatar-xss avatar-circle mr-2"
                                                    src="assets\vendor\flag-icon-css\flags\1x1\us.svg"
                                                    alt="Flag"
                                                    />
                                                English (US)
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" title="English (UK)">
                                                <img
                                                    class="avatar avatar-xss avatar-circle mr-2"
                                                    src="assets\vendor\flag-icon-css\flags\1x1\gb.svg"
                                                    alt="Flag"
                                                    />
                                                English (UK)
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" title="Deutsch">
                                                <img
                                                    class="avatar avatar-xss avatar-circle mr-2"
                                                    src="assets\vendor\flag-icon-css\flags\1x1\de.svg"
                                                    alt="Flag"
                                                    />
                                                Deutsch
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" title="Dansk">
                                                <img
                                                    class="avatar avatar-xss avatar-circle mr-2"
                                                    src="assets\vendor\flag-icon-css\flags\1x1\dk.svg"
                                                    alt="Flag"
                                                    />
                                                Dansk
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" title="Italiano">
                                                <img
                                                    class="avatar avatar-xss avatar-circle mr-2"
                                                    src="assets\vendor\flag-icon-css\flags\1x1\it.svg"
                                                    alt="Flag"
                                                    />
                                                Italiano
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" title="?? (??)">
                                                <img
                                                    class="avatar avatar-xss avatar-circle mr-2"
                                                    src="assets\vendor\flag-icon-css\flags\1x1\cn.svg"
                                                    alt="Flag"
                                                    />
                                                ?? (??)
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- End Language -->
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- End Content -->

                <!-- Footer -->
                <div class="navbar-vertical-footer">
                    <ul class="navbar-vertical-footer-list">
                        <li class="navbar-vertical-footer-list-item">
                            <!-- Unfold -->
                            <div class="hs-unfold">
                                <a
                                    class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"
                                    href="javascript:;"
                                    data-hs-unfold-options='{
                                    "target": "#styleSwitcherDropdown",
                                    "type": "css-animation",
                                    "animationIn": "fadeInRight",
                                    "animationOut": "fadeOutRight",
                                    "hasOverlay": true,
                                    "smartPositionOff": true
                                    }'
                                    >
                                    <i class="tio-tune"></i>
                                </a>
                            </div>
                            <!-- End Unfold -->
                        </li>

                        <li class="navbar-vertical-footer-list-item">
                            <!-- Other Links -->
                            <div class="hs-unfold">
                                <a
                                    class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"
                                    href="javascript:;"
                                    data-hs-unfold-options='{
                                    "target": "#otherLinksDropdown",
                                    "type": "css-animation",
                                    "animationIn": "slideInDown",
                                    "hideOnScroll": true
                                    }'
                                    >
                                    <i class="tio-help-outlined"></i>
                                </a>

                                <div
                                    id="otherLinksDropdown"
                                    class="hs-unfold-content dropdown-unfold dropdown-menu navbar-vertical-footer-dropdown"
                                    >
                                    <span class="dropdown-header">Help</span>
                                    <a class="dropdown-item" href="#">
                                        <i class="tio-book-outlined dropdown-item-icon"></i>
                                        <span
                                            class="text-truncate pr-2"
                                            title="Resources &amp; tutorials"
                                            >Resources &amp; tutorials</span
                                        >
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="tio-command-key dropdown-item-icon"></i>
                                        <span
                                            class="text-truncate pr-2"
                                            title="Keyboard shortcuts"
                                            >Keyboard shortcuts</span
                                        >
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="tio-alt dropdown-item-icon"></i>
                                        <span
                                            class="text-truncate pr-2"
                                            title="Connect other apps"
                                            >Connect other apps</span
                                        >
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="tio-gift dropdown-item-icon"></i>
                                        <span class="text-truncate pr-2" title="What's new?"
                                              >What's new?</span
                                        >
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <span class="dropdown-header">Contacts</span>
                                    <a class="dropdown-item" href="#">
                                        <i class="tio-chat-outlined dropdown-item-icon"></i>
                                        <span class="text-truncate pr-2" title="Contact support"
                                              >Contact support</span
                                        >
                                    </a>
                                </div>
                            </div>
                            <!-- End Other Links -->
                        </li>

                        <li class="navbar-vertical-footer-list-item">
                            <!-- Language -->
                            <div class="hs-unfold">
                                <a
                                    class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"
                                    href="javascript:;"
                                    data-hs-unfold-options='{
                                    "target": "#languageDropdown",
                                    "type": "css-animation",
                                    "animationIn": "slideInDown",
                                    "hideOnScroll": true
                                    }'
                                    >
                                    <img
                                        class="avatar avatar-xss avatar-circle"
                                        src="assets\vendor\flag-icon-css\flags\1x1\us.svg"
                                        alt="United States Flag"
                                        />
                                </a>

                                <div
                                    id="languageDropdown"
                                    class="hs-unfold-content dropdown-unfold dropdown-menu navbar-vertical-footer-dropdown"
                                    >
                                    <span class="dropdown-header">Select language</span>
                                    <a class="dropdown-item" href="#">
                                        <img
                                            class="avatar avatar-xss avatar-circle mr-2"
                                            src="assets\vendor\flag-icon-css\flags\1x1\us.svg"
                                            alt="Flag"
                                            />
                                        <span class="text-truncate pr-2" title="English"
                                              >English (US)</span
                                        >
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <img
                                            class="avatar avatar-xss avatar-circle mr-2"
                                            src="assets\vendor\flag-icon-css\flags\1x1\gb.svg"
                                            alt="Flag"
                                            />
                                        <span class="text-truncate pr-2" title="English"
                                              >English (UK)</span
                                        >
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <img
                                            class="avatar avatar-xss avatar-circle mr-2"
                                            src="assets\vendor\flag-icon-css\flags\1x1\de.svg"
                                            alt="Flag"
                                            />
                                        <span class="text-truncate pr-2" title="Deutsch"
                                              >Deutsch</span
                                        >
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <img
                                            class="avatar avatar-xss avatar-circle mr-2"
                                            src="assets\vendor\flag-icon-css\flags\1x1\dk.svg"
                                            alt="Flag"
                                            />
                                        <span class="text-truncate pr-2" title="Dansk"
                                              >Dansk</span
                                        >
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <img
                                            class="avatar avatar-xss avatar-circle mr-2"
                                            src="assets\vendor\flag-icon-css\flags\1x1\it.svg"
                                            alt="Flag"
                                            />
                                        <span class="text-truncate pr-2" title="Italiano"
                                              >Italiano</span
                                        >
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <img
                                            class="avatar avatar-xss avatar-circle mr-2"
                                            src="assets\vendor\flag-icon-css\flags\1x1\cn.svg"
                                            alt="Flag"
                                            />
                                        <span class="text-truncate pr-2" title="?? (??)"
                                              >?? (??)</span
                                        >
                                    </a>
                                </div>
                            </div>
                            <!-- End Language -->
                        </li>
                    </ul>
                </div>
                <!-- End Footer -->
            </div>
        </div>
    </aside>
</div>

<div id="sidebarCompact" class="d-none">
    <aside
        class="js-navbar-vertical-aside navbar navbar-vertical-aside navbar-vertical navbar-vertical-fixed navbar-expand-xl navbar-bordered"
        ></aside>
</div>