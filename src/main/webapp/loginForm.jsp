<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<!-- jQuery 라이브러리 참조--> 
	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>                                          
	<!-- plugin 참조-->
	<script type="text/javascript" src=".js/jquery.validate.js"></script>
	<script type="text/javascript">
	</script>
    <!-- Basic Page Needs
   ================================================== -->
    <meta charset="utf-8">
    <title>로그인</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Mobile Specific Metas
     ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Favicon
     ================================================== -->
    <link rel="shortcut icon" href="favicon.png" />
    <!-- Font
  ================================================== -->
    <link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css" href="css/poppins-font.css">
    <!-- CSS   
  ================================================== -->
    <!-- Bootrap -->
    <link rel="stylesheet" href="vendor/bootrap/css/bootstrap.min.css" />
    <!-- Owl Carousel 2 -->
    <link rel="stylesheet" href="vendor/owl/css/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/owl/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendor/owl/css/animate.css">
    <!-- Slider Revolution CSS Files -->
    <link rel="stylesheet" type="text/css" href="vendor/revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="vendor/revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="vendor/revolution/css/navigation.css">
    <!-- fancybox-master Library -->
    <link rel="stylesheet" type="text/css" href="vendor/fancybox-master/css/jquery.fancybox.min.css">
    <!-- Audio Library-->
    <link rel="stylesheet" href="vendor/mejs/mediaelementplayer.css">
    <!-- noUiSlider Library -->
    <link rel="stylesheet" type="text/css" href="vendor/nouislider/css/nouislider.css">
    <!-- Main Style Css -->
    <link rel="stylesheet" href="css/style.css" />
</head>

<body class="our-team">
    <!-- Images Loader -->
    <div class="images-preloader">
        <div id="preloader_1" class="rectangle-bounce">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
    <header class="header">
        <!-- Show Desktop Header -->
        <div class="show-desktop-header header-hp-1">
            <div id="js-navbar-fixed" class="menu-desktop">
                <div class="container-fluid">
                    <div class="menu-desktop-inner">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="images/icons/logo-black.png" alt="logo"></a>
                        </div>
                        <!-- Main Menu -->
                        <!-- Main Menu -->
                        <nav class="main-menu">
                            <ul>
                                <li class="menu-item">
                                    <a href="shop-full-width.html" class="current">
                                        베스트상품
                                    </a>
                                </li>

                                <li class="menu-item">
                                    <a href="#">
                                        상품카테고리
                                    </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="shop-left-width-siderbar.html">
                                                침대
                                                <i class="zmdi zmdi-chevron-right"></i>
                                            </a>
                                            <ul class="sub-menu menu-levels">
                                                <li><a href="shop-single-v1.html">철제침대</a></li>
                                                <li><a href="shop-single-v1.html">원목침대</a></li>
                                                <li><a href="shop-single-v1.html">소파베드</a></li>
                                                <li><a href="shop-single-v1.html">유아동침대</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="shop-left-width-siderbar.html">
                                                소파
                                                <i class="zmdi zmdi-chevron-right"></i>
                                            </a>
                                            <ul class="sub-menu menu-levels">
                                                <li><a href="shop-single-v1.html">패브릭소파</a></li>
                                                <li><a href="shop-single-v1.html">가죽소파</a></li>
                                                <li><a href="shop-single-v1.html">원목소파</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="shop-left-width-siderbar.html">
                                                수납장
                                                <i class="zmdi zmdi-chevron-right"></i>
                                            </a>
                                            <ul class="sub-menu menu-levels">
                                                <li><a href="shop-single-v1.html">철제수납장</a></li>
                                                <li><a href="shop-single-v1.html">원목수납장</a></li>
                                                <li><a href="shop-single-v1.html">옷장/수납장</a></li>
                                                <li><a href="shop-single-v1.html">캐비닛/락커</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="shop-left-width-siderbar.html">
                                                패브릭
                                                <i class="zmdi zmdi-chevron-right"></i>
                                            </a>
                                            <ul class="sub-menu menu-levels">
                                                <li><a href="shop-single-v1.html">담요</a></li>
                                                <li><a href="shop-single-v1.html">쿠션</a></li>
                                                <li><a href="shop-single-v1.html">러그</a></li>
                                                <li><a href="shop-single-v1.html">커튼</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="shop-left-width-siderbar.html">
                                                리빙
                                                <i class="zmdi zmdi-chevron-right"></i>
                                            </a>
                                            <ul class="sub-menu menu-levels">
                                                <li><a href="shop-single-v1.html">옷걸이/행거</a></li>
                                                <li><a href="shop-single-v1.html">욕실용품</a></li>
                                                <li><a href="shop-single-v1.html">주방용품</a></li>
                                                <li><a href="shop-single-v1.html">세탁용품</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                                <li class="menu-item">
                                    <a href="#">
                                        공지 및 문의
                                    </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="#">
                                                공지사항
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                문의게시판
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="menu-item">
                                    <a href="#">
                                        1:1 채팅상담
                                    </a>
                                </li>
                            </ul>
                        </nav>

                        <!-- Header Right -->
                        <div class="header-right">

                            <!-- Search -->
                            <div class="search-btn-wrap">
                                <button class="search-btn" data-toggle="modal" data-target="#searchModal">
                                    <img src="images/icons/header-icon-1.png" alt="search">
                                </button>
                            </div>

                            <!-- Cart -->
                            <div class="site-header-cart">
                                <div class="cart-contents">
                                    <img src="images/icons/header-icon-2.png" alt="cart">
                                </div>
                                <div class="widget_shopping_cart">
                                    <div class="widget_shopping_cart_content">
                                        <ul class="woocommerce-mini-cart cart_list product_list_widget ">
                                            <li class="woocommerce-mini-cart-item mini_cart_item clearfix">
                                                <a class="product-image" href="#">
                                                    <img src="images/hp-1-drop-cart-2.png" alt="cart-2">
                                                </a>
                                                <a class="product-title" href="#">상품명</a>
                                                <span class="quantity">
                                                    수량 ×
                                                    <span class="woocommerce-Price-amount amount">
                                                        <span class="woocommerce-Price-currencySymbol">KRW</span>
                                                        124
                                                    </span>
                                                </span>
                                                <a href="#" class="remove">
                                                    <span class="lnr lnr-cross"></span>
                                                </a>
                                            </li>
                                            <li class="woocommerce-mini-cart-item mini_cart_item clearfix">
                                                <a class="product-image" href="#">
                                                    <img src="images/hp-1-drop-cart-2.png" alt="cart-2">
                                                </a>
                                                <a class="product-title" href="#">상품명</a>
                                                <span class="quantity">
                                                    수량 ×
                                                    <span class="woocommerce-Price-amount amount">
                                                        <span class="woocommerce-Price-currencySymbol">KRW</span>
                                                        124
                                                    </span>
                                                </span>
                                                <a href="#" class="remove">
                                                    <span class="lnr lnr-cross"></span>
                                                </a>
                                            </li>
                                        </ul>
                                        <p class="woocommerce-mini-cart__total total">
                                            <span>총 금액:</span>
                                            <span class="woocommerce-Price-amount amount">
                                                <span class="woocommerce-Price-currencySymbol">KRW</span>
                                                123
                                            </span>
                                        </p>
                                        <p class="woocommerce-mini-cart__buttons buttons">
                                            <a href="#" class="button wc-forward au-btn btn-small">장바구니</a>
                                            <a href="#" class="button checkout wc-forward au-btn au-btn-black btn-small">결제하기</a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <!-- Canvas -->
                            <div class="canvas canvas-btn-wrap">
                                <button class="canvas-images canvas-btn" data-toggle="modal" data-target="#canvasModal">
                                    <img src="images/icons/header-icon-3.png" alt="canvas">
                                </button>

                            </div>
                        </div>
                    </div>

                    <!-- SEARCH MODAL-->
                    <div class="modal fade" id="searchModal" role="dialog">
                        <button class="close" type="button" data-dismiss="modal">
                            <i class="zmdi zmdi-close"></i>
                        </button>
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <form id="searchModal__form" method="POST">
                                        <button id="searchModal__submit" type="submit">
                                            <i class="zmdi zmdi-search"></i>
                                        </button>
                                        <input id="searchModal__input" type="text" name="search" placeholder="찾으시는 상품을 검색하세요." />
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END SEARCH MODAL-->

                    <!-- CANVAS MODAL-->
                    <div class="modal fade" id="canvasModal" role="dialog">
                        <button class="close" type="button" data-dismiss="modal">
                            <i class="zmdi zmdi-close"></i>
                        </button>
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <div class="canvas-content">
                                        <div class="logo">
                                            <a href="index.html"><img src="images/icons/logo-black.png" alt="logo"></a>
                                        </div>
                                        <div class="insta">
                                            <div class="insta-inner">
                                                <div class="images">
                                                    <a href="#" class="images-inner">
                                                        <div class="overlay"></div>
                                                        <img src="images/hp-1-canvas-1.jpg" alt="insta">
                                                    </a>
                                                </div>
                                                <div class="images">
                                                    <a href="#" class="images-inner">
                                                        <div class="overlay"></div>
                                                        <img src="images/hp-1-canvas-2.jpg" alt="insta">
                                                    </a>
                                                </div>
                                                <div class="images">
                                                    <a href="#" class="images-inner">
                                                        <div class="overlay"></div>
                                                        <img src="images/hp-1-canvas-3.jpg" alt="insta">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="insta-inner">
                                                <div class="images">
                                                    <a href="#" class="images-inner">
                                                        <div class="overlay"></div>
                                                        <img src="images/hp-1-canvas-4.jpg" alt="insta">
                                                    </a>
                                                </div>
                                                <div class="images">
                                                    <a href="#" class="images-inner">
                                                        <div class="overlay"></div>
                                                        <img src="images/hp-1-canvas-5.jpg" alt="insta">
                                                    </a>
                                                </div>
                                                <div class="images">
                                                    <a href="#" class="images-inner">
                                                        <div class="overlay"></div>
                                                        <img src="images/hp-1-canvas-6.jpg" alt="insta">
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="contact">
                                            <h4>Contact</h4>
                                            <div class="contact-inner">
                                                <i class="zmdi zmdi-map"></i>
                                                <div class="contact-info">
                                                    <span>서울특별시 강남구 테헤란로 123</span>
                                                </div>
                                            </div>
                                            <div class="contact-inner">
                                                <i class="zmdi zmdi-phone"></i>
                                                <div class="contact-info">
                                                    <span><a href="tel:01072447201">010-7244-7201</a></span>
                                                </div>
                                            </div>
                                            <div class="contact-inner">
                                                <i class="zmdi zmdi-email"></i>
                                                <div class="contact-info">
                                                    <span>leeunghee57@gmail.com</span>
                                                </div>
                                            </div>
                                            <div class="contact-inner">
                                                <i class="zmdi zmdi-globe"></i>
                                                <div class="contact-info">
                                                    <span>www.leeLeung.com</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="email">
                                            <div class="send">
                                                <i class="zmdi zmdi-mail-send"></i>
                                            </div>
                                            <input type="email" required="" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" name="email" placeholder="이메일을 입력하세요.">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END CANVAS MODAL-->
                </div>
            </div>
        </div>

        <!-- Show Mobile Header -->
        <div id="js-navbar-mb-fixed" class="show-mobile-header">
            <!-- Logo And Hamburger Button -->
            <div class="mobile-top-header">
                <div class="logo-mobile">
                    <a href="index.html"><img src="images/icons/logo-black.png" alt="logo"></a>
                </div>
                <button class="hamburger hamburger--spin hidden-tablet-landscape-up" id="toggle-icon">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>
            </div>
            <!-- Au Navbar Menu -->
            <div class="au-navbar-mobile navbar-mobile-1">
                <div class="au-navbar-menu">
                    <ul>
                        <li class="drop">
                            <a class="drop-link" href="#">
                                베스트상품
                                <span class="arrow">
                                </span>
                            </a>
                        </li>
                        <li class="drop">
                            <a class="drop-link" href="#">
                                상품카테고리
                                <span class="arrow">
                                    <i class="zmdi zmdi-chevron-down"></i>
                                </span>
                            </a>
                            <ul class="drop-menu bottom-right">
                                <li class="drop">
                                    <a class="drop-link" href="#">
                                        침대
                                        <span class="arrow">
                                            <i class="zmdi zmdi-chevron-down"></i>
                                        </span>
                                    </a>
                                    <ul class="drop-menu bottom-right">
                                        <li><a class="drop-menu-inner" href="#">철제침대</a></li>
                                        <li><a class="drop-menu-inner" href="#">원목침대</a></li>
                                        <li><a class="drop-menu-inner" href="#">소파베드</a></li>
                                        <li><a class="drop-menu-inner" href="#">유아동침대</a></li>
                                    </ul>
                                </li>
                                <li class="drop">
                                    <a class="drop-link" href="#">
                                        소파
                                        <span class="arrow">
                                            <i class="zmdi zmdi-chevron-down"></i>
                                        </span>
                                    </a>
                                    <ul class="drop-menu bottom-right">
                                        <li><a class="drop-menu-inner" href="#">패브릭소파</a></li>
                                        <li><a class="drop-menu-inner" href="#">가죽소파</a></li>
                                        <li><a class="drop-menu-inner" href="#">원목소파</a></li>
                                    </ul>
                                </li>
                                <li class="drop">
                                    <a class="drop-link" href="#">
                                        수납장
                                        <span class="arrow">
                                            <i class="zmdi zmdi-chevron-down"></i>
                                        </span>
                                    </a>
                                    <ul class="drop-menu bottom-right">
                                        <li><a class="drop-menu-inner" href="#">철제수납장</a></li>
                                        <li><a class="drop-menu-inner" href="#">원목수납장</a></li>
                                        <li><a class="drop-menu-inner" href="#">옷장/수납장</a></li>
                                        <li><a class="drop-menu-inner" href="#">캐비닛/락커</a></li>
                                    </ul>
                                </li>
                                <li class="drop">
                                    <a class="drop-link" href="#">
                                        패브릭
                                        <span class="arrow">
                                            <i class="zmdi zmdi-chevron-down"></i>
                                        </span>
                                    </a>
                                    <ul class="drop-menu bottom-right">
                                        <li><a class="drop-menu-inner" href="#">담요</a></li>
                                        <li><a class="drop-menu-inner" href="#">쿠션</a></li>
                                        <li><a class="drop-menu-inner" href="#">러그</a></li>
                                        <li><a class="drop-menu-inner" href="#">커튼</a></li>
                                    </ul>
                                </li>
                                <li class="drop">
                                    <a class="drop-link" href="#">
                                        리빙
                                        <span class="arrow">
                                            <i class="zmdi zmdi-chevron-down"></i>
                                        </span>
                                    </a>
                                    <ul class="drop-menu bottom-right">
                                        <li><a class="drop-menu-inner" href="#">옷걸이/행거</a></li>
                                        <li><a class="drop-menu-inner" href="#">욕실용품</a></li>
                                        <li><a class="drop-menu-inner" href="#">주방용품</a></li>
                                        <li><a class="drop-menu-inner" href="#">세탁용품</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </li>
                        <li class="drop">
                            <a class="drop-link" href="#">
                                공지 및 문의
                                <span class="arrow">
                                    <i class="zmdi zmdi-chevron-down"></i>
                                </span>
                            </a>
                            <ul class="drop-menu bottom-right">
                                <li class="drop">
                                    <a class="drop-link" href="#">
                                        공지사항
                                        <span class="arrow">
                                        </span>
                                    </a>
                                </li>
                                <li class="drop">
                                    <a class="drop-link" href="#">
                                        문의게시판
                                        <span class="arrow">
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="drop">
                            <a class="drop-link" href="#">
                                1:1 채팅상담
                                <span class="arrow">
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <div class="page-content">
        <!-- Breadcrumb Section -->
        <section class="breadcrumb-elements breadcrumb-section section-box" style="background-image: url(images/elements-bc.jpg)">
            <div class="container">
                <div class="breadcrumb-inner">
                    <h1>로그인</h1>
                    <ul class="breadcrumbs">
                        <li>
                            <p class="breadcrumbs-2">상세정보입력</p>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- End Breadcrumb Section -->

        <!-- Our Team Section -->
        <section class="our-team-page section-box">
            <div class="container">

                <div class="our-team-content">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            
                                <form action="memberLogin.do" name="login" method="POST">
                                    <div>
                                        <h2>로그인</h2>
                                        
                                        <div>
                                            <p>
                                                <input type="text" class="input-text" placeholder="아이디" name="memberNo">
                                            </p>
                                            <p>
                                                <input type="password" class="input-text" placeholder="비밀번호" name="memberPassword">
                                            </p>
                                        </div>
                                    </div>
								<input type="button" value="로그인" onclick="login()">
                                </form>
                            </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Our Team Section -->
    </div>

    <footer class="footer-section section-box">
        <div class="footer-content">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="footer-items">
                            <div class="logo">
                                <a href="index.html"><img src="images/icons/logo-white.png" alt="logo"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="footer-items footer-items-1">
                            <h4>Contact</h4>
                            <div class="contact">
                                <i class="zmdi zmdi-map"></i>
                                <span>서울특별시 강남구</span>
                            </div>
                            <div class="contact">
                                <i class="zmdi zmdi-phone"></i>
                                <span><a href="tel:01072447201">010-7244-7201</a></span>
                            </div>
                            <div class="contact">
                                <i class="zmdi zmdi-email"></i>
                                <span>leeunghee57@gmail.com</span>
                            </div>
                            <div class="contact">
                                <i class="zmdi zmdi-globe"></i>
                                <span>www.leeLeung.com</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="footer-items footer-items-2">
                            <h4>Profile</h4>
                            <div class="profile">
                                <i class="zmdi zmdi-account"></i>
                                <span><a href="my-account.html">My Page</a></span>
                            </div>
                            <div class="profile">
                                <i class="zmdi zmdi-shopping-cart"></i>
                                <span><a href="check-out.html">Cart</a></span>
                            </div>
                            <div class="profile">
                                <i class="zmdi zmdi-eye"></i>
                                <span><a href="order-tracking.html">Review</a></span>
                            </div>
                            <div class="profile">
                                <i class="zmdi zmdi-pin-help"></i>
                                <span><a href="#">Q n A</a></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="footer-items">
                            <h4>News Letter</h4>
                            <p>새소식을 이메일로 받아보세요</p>
                            <div class="email">
                                <div class="send">
                                    <i class="zmdi zmdi-mail-send"></i>
                                </div>
                                <input type="email" required="" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" name="email" placeholder="이메일을 입력하세요.">
                            </div>
                            <span>@ 2019 leeLeung.</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <a href="#" id="back-to-top"></a>
    <!--  JS  -->
    <!-- Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Bootrap -->
    <script src="vendor/bootrap/js/bootstrap.min.js"></script>
    <!-- Owl Carousel 2 -->
    <script src="vendor/owl/js/owl.carousel.min.js"></script>
    <script src="vendor/owl/js/OwlCarousel2Thumbs.min.js"></script>
    <!-- Slider Revolution core JavaScript files -->
    <script src="vendor/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script src="vendor/revolution/js/jquery.themepunch.revolution.min.js"></script>
    <!-- Isotope Library-->
    <script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <!-- Masonry Library -->
    <script type="text/javascript" src="js/jquery.masonry.min.js"></script>
    <script type="text/javascript" src="js/masonry.pkgd.min.js"></script>
    <!-- fancybox-master Library -->
    <script type="text/javascript" src="vendor/fancybox-master/js/jquery.fancybox.min.js"></script>
    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEmXgQ65zpsjsEAfNPP9mBAz-5zjnIZBw"></script>
    <script src="js/theme-map.js"></script>
    <!-- Countdown Library -->
    <script src="vendor/countdown/jquery.countdown.min.js"></script>
    <!-- Audio Library-->
    <script src="vendor/mejs/mediaelement-and-player.min.js"></script>
    <!-- noUiSlider Library -->
    <script type="text/javascript" src="vendor/nouislider/js/nouislider.js"></script>
    <!-- Form -->
    <script src="vendor/sweetalert/sweetalert.min.js"></script>
    <script src="js/config-contact.js"></script>
    <!-- Main Js -->
    <script src="js/custom.js"></script>
    <!-- address api library-->
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
</body></html>
