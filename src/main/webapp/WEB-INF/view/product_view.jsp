<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Favicon
  	================================================== -->
<link rel="shortcut icon" href="favicon.png" />
<!-- Font
  ================================================== -->
<link rel="stylesheet" type="text/css"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/linearicons/style.css">
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
<link rel="stylesheet" type="text/css"
	href="vendor/revolution/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="vendor/revolution/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="vendor/revolution/css/navigation.css">
<!-- fancybox-master Library -->
<link rel="stylesheet" type="text/css"
	href="vendor/fancybox-master/css/jquery.fancybox.min.css">
<!-- Audio Library-->
<link rel="stylesheet" href="vendor/mejs/mediaelementplayer.css">
<!-- noUiSlider Library -->
<link rel="stylesheet" type="text/css"
	href="vendor/nouislider/css/nouislider.css">
<!-- Main Style Css -->
<link rel="stylesheet" href="css/style.css" />
<script type="text/javascript">
	function btn_click() {
		if(${sMember==null}){
			alert('로그인이 필요합니다.');
			location.href="memberLoginForm.do";
		}else{			
			alert('장바구니에 추가되었습니다.');
			//var selectedOption = $("#selectBox option:selected").text(); //옵션박스에서 선택된 옵션을 selectedOption에 저장한다
			document.insertCart.action="insertCart.do";
			document.insertCart.method="POST";
			document.insertCart.submit();
		}

	}
</script>
</head>
<body class="shop-single-v1">
	<!-- Images Loader -->
	<div class="images-preloader">
		<div id="preloader_1" class="rectangle-bounce">
			<span></span> <span></span> <span></span> <span></span> <span></span>
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
		<!-- Breadcrumb Section -->
		<section class="breadcrumb-contact-us breadcrumb-section section-box">
			<div class="container">
				<div class="breadcrumb-inner"></div>
			</div>
		</section>
		<!-- End Breadcrumb Section -->

		<!-- Shop Section -->
		<section
			class="shop-single-v1-section section-box featured-hp-1 featured-hp-4">
			<div class="woocommerce">
				<div class="container">
					<div class="content-area">

						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="woocommerce-product-gallery">

									<div class="owl-carousel">
										<div class="item">
											<img src="${product.productImgA}" alt="product">
										</div>
										<div class="item">
											<img src="${product.productImgB}" alt="product">
										</div>
										<div class="item">
											<img src="${product.productImgC}" alt="product">
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="summary entry-summary">
									<h1 class="product_title entry-title">${product.productName}</h1>

									<p class="price">
										<span class="woocommerce-Price-amount amount"> <span
											class="woocommerce-Price-currencySymbol"></span>
											&nbsp;${product.productPrice}원
										</span>

									</p>
									
									<div class="woocommerce-product-details__short-description">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco.</p>
									</div>
									
									<form id="insertCart" class="cart" name="insertCart">
										<div class="quantity">
											<input type="number" name="quantity" id="quantity" value="1"
												min="1" class="nput-text qty text"> <input
												type="hidden" name="productNo" id="productNo"
												value="${product.productNo}"> <span
												class="modify-qty plus" onclick="Increase2()">+</span> <span
												class="modify-qty minus" onclick="Decrease2()">-</span>
										</div>
										<button type="button" name="add-to-cart"
											class="single_add_to_cart_button button alt au-btn btn-small"
											onclick="btn_click();">
											장바구니 담기<i class="zmdi zmdi-arrow-right"></i>
										</button>
									</form>
									<div class="product_meta">
										<span class="sku_wrapper"> Sku: <span class="sku">MQ000137417_33</span>
										</span> <span class="posted_in"> Category: <a href="#">Furniture</a>
										</span> <span class="tagged_as"> Tag: <a href="#">Home
												Decor, Lightting</a>
										</span>
									</div>
								</div>
						<div class="woocommerce-tabs">
									<ul class="nav nav-tabs wc-tabs" id="myTab" role="tablist">
										<li class="nav-item description_tab"
											id="tab-title-description" role="tab"
											aria-controls="tab-description" aria-selected="true"><a
											class="nav-link active" href="#tab-description"
											data-toggle="tab">Description</a></li>
										<li class="nav-item additional_information_tab"
											id="tab-title-additional_information" role="tab"
											aria-controls="tab-additional_information"
											aria-selected="false"><a class="nav-link"
											href="#tab-additional_information" data-toggle="tab">Additional
												information</a></li>
										
									</ul>
									<div class="tab-content" id="myTabContent">
										<div class="woocommerce-Tabs-panel tab-pane fade show active"
											id="tab-description" role="tabpanel"
											aria-labelledby="tab-title-description">
											<p>On the other hand, we denounce with righteous
												indignation and dislike men who are so beguiled and
												demoralized by the charms of pleasure of the moment, so
												blinded by desire.</p>

										</div>
										<div class="woocommerce-Tabs-panel tab-pane"
											id="tab-additional_information" role="tabpanel"
											aria-labelledby="tab-title-additional_information">
											<table class="shop_attributes">
												<tbody>
													<tr>
														<th>Weight</th>
														<td class="product_weight">5.8 kg</td>
													</tr>
													<tr>
														<th>Dimensions</th>
														<td class="product_dimensions">H: 76 cm W: 56 cm D:
															52 cm</td>
													</tr>
												</tbody>
											</table>
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br /> <br />
			<div>
				<p style="text-align: center;">
					<img src="${product.productImgE}" style="width: 100%;">
					<img src="${product.productImgF}">
					<img style="width: 100%;" src="${product.productImgG}">
				</p>
			</div>
		</section>
		<!-- End Shop Section -->
	</div>

	<footer class="footer-section section-box">
		<!-- include_footer.jsp start-->
		<%@ include file="/includes/include_footer.jsp"%>
		<!-- include_footer.jsp end-->
	</footer>

	<a href="#" id="back-to-top"></a>
	<!--  JS  -->
	<!-- Jquery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	<script type="text/javascript"
		src="vendor/fancybox-master/js/jquery.fancybox.min.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEmXgQ65zpsjsEAfNPP9mBAz-5zjnIZBw"></script>
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
