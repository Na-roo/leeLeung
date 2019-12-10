<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Needs
	================================================== -->
	<meta charset="utf-8">
	<title>leeLeung</title>
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
	<link rel="stylesheet" href="vendor/bootrap/css/bootstrap.min.css"/>
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
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body class="404-page">
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
		<div class="show-desktop-header header-hp-1 style-header-hp-1">
			<div id="js-navbar-fixed" class="menu-desktop">
				<div class="container-fluid">
					<div class="menu-desktop-inner">
						<!-- Logo -->
						<div class="logo">
							<a href="main.do"><img src="images/icons/logo-black.png"
								alt="logo"></a>
						</div>
						<!-- Main Menu -->
						<nav class="main-menu">
							<!-- nclude_desktop_nav.jsp start-->
							<%@ include file="/includes/include_desktop_nav.jsp"%>
							<!-- include_desktop_nav.jsp end-->
						</nav>

						<!-- Header Right -->
						<div class="header-right">
							<!-- include_header_right.jsp start-->
							<%@ include file="/includes/include_header_right.jsp"%>
							<!-- include_header_right.jsp end-->
						</div>
					</div>

					<!-- SEARCH MODAL-->
					<div class="modal fade" id="searchModal" role="dialog">
						<!-- include_search_modal.jsp start-->
						<%@ include file="/includes/include_search_modal.jsp"%>
						<!-- include_search_modal.jsp end-->
					</div>
					<!-- END SEARCH MODAL-->

					<!-- CANVAS MODAL-->
					<div class="modal fade" id="canvasModal" role="dialog">
						<!-- include_search_modal.jsp start-->
						<%@ include file="/includes/include_canvas_modal.jsp"%>
						<!-- include_search_modal.jsp end-->
					</div>
					<!-- END CANVAS MODAL-->
				</div>
			</div>
		</div>


		<!-- Show Mobile Header -->
		<div id="js-navbar-mb-fixed" class="show-mobile-header">
			<!-- include_search_modal.jsp start-->
			<%@ include file="/includes/include_canvas_modal.jsp"%>
			<!-- include_search_modal.jsp end-->

			<!-- Logo And Hamburger Button -->
			<div class="mobile-top-header">
				<!-- include_mobile_logo.jsp start-->
				<%@ include file="/includes/include_mobile_logo.jsp"%>
				<!-- include_mobile_logo.jsp end-->
			</div>

			<!-- Au Navbar Menu -->
			<!-- include_mobile_nav.jsp start-->
			<%@ include file="/includes/include_mobile_nav.jsp"%>
			<!-- include_mobile_nav.jsp end-->
		</div>
	</header>
	
	<div class="page-content">
		<!-- Page Not Found Section -->
		<section class="page-not-found" style="background-image: url(images/page-not-found-bg.jpg)">
			<div class="page-detail">
				<div class="page-inner">
					<h2 style="padding-bottom: 10px;">해당페이지는</h2>
					<h2 style="padding-bottom: 30px;">로그인이 필요합니다.</h2>
					<a href="memberLoginForm.do" class="au-btn-white btn-small">로그인 페이지<i class="zmdi zmdi-arrow-right"></i></a>
				</div>
			</div>
		</section>
		<!-- End Page Not Found Section -->
	</div>
	
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
</body>
</html>
