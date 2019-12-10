<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

</head>
<body class="shop-cart">
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
	
	<c:choose>		
		<c:when test="${count==0}">
		<div class="page-content">
		<!-- Breadcrumb Section -->
		<section class="breadcrumb-contact-us breadcrumb-section section-box">
			<div class="container">
			</div>
		</section>
		<!-- End Breadcrumb Section -->

		<!-- Shop Cart Section -->
		<section class="shop-cart-section section-box">
			<div class="woocommerce">
				<div class="container">
					<div class="entry-content" style="margin-bottom: 300px">
						<h3 style="text-align:center;margin-top:100px;">장바구니가 비어있습니다.</h3>
					</div>
				</div>
			</div>
		</section>
		</div>
		</c:when>		
		<c:otherwise>
	<div class="page-content">
		<!-- Breadcrumb Section -->
		<section class="breadcrumb-contact-us breadcrumb-section section-box">
			<div class="container">
				<div class="breadcrumb-inner">
				</div>	
			</div>
		</section>
		<!-- End Breadcrumb Section -->

		<!-- Shop Cart Section -->
		<section class="shop-cart-section section-box">
			<div class="woocommerce">
				<div class="container">
					<div class="entry-content">
						<form class="woocommerce-cart-form" method="POST"
							action="jumun_insert_form.do">
							<table
								class="shop_table shop_table_responsive cart woocommerce-cart-form__contents">
								<thead>
									<tr>
										<th class="product-remove"></th>
										<th class="product-name">Product</th>
										<th class="product-price">Price</th>
										<th class="product-quantity">Quantity</th>
										<th class="product-subtotal">&nbsp;&nbsp;&nbsp;Total</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${cartList}" var="cartList">
										<tr class="woocommerce-cart-form__cart-item cart_item">
											<td class="product-remove"><a
												href="deleteCartOne.do?cartNo=${cartList.cartNo}"
												class="remove"><i class="zmdi zmdi-close"></i></a></td>
											<td class="product-name" data-title="Product"><a
												href="product_view.do?productNo=${cartList.productNo}"><img src="${cartList.productImgA}"
													alt="product"></a> <a href="product_view.do?productNo=${cartList.productNo}">${cartList.productName}</a>
											</td>
											<td class="product-price" data-title="Price"><span
												class="woocommerce-Price-amount amount"> <span
													class="woocommerce-Price-currencySymbol"></span>
													${cartList.productPrice}
											</span></td>
											<td class="product-quantity" data-title="Quantity">
												<div class="quantity">
													<span class="modify-qty minus"
														onclick="Decrease('${cartList.cartNo}')">-</span> <input
														type="number" name="quantity"
														id="quantity${cartList.cartNo}"
														value="${cartList.cartQty}" min="1"
														class="input-text qty text" readonly="readonly"> <input
														type="hidden" name="cartNo" id="${cartList.cartNo}"
														value="${cartList.cartNo}"> <input
														type="hidden" name="productName" id="productName"
														value="${cartList.productName}"> <input
														type="hidden" name="productImg" id="productImg"
														value="${cartList.productImgA}"> <input
														type="hidden" name="productNo" id="productNo"
														value="${cartList.productNo}"><span
														class="modify-qty plus"
														onclick="Increase('${cartList.cartNo}')">+</span>
												</div>
											</td>

											<td class="product-subtotal" data-title="Total"><span
												class="woocommerce-Price-amount amount"> <span
													class="woocommerce-Price-currencySymbol"></span>
													<input type="hidden" name="price"
													id="price${cartList.cartNo}"
													value="${cartList.productPrice}"> <input
													type="number" name="totprice"
													id="totprice${cartList.cartNo}"
													value="${cartList.productPrice*cartList.cartQty}"
													readonly="readonly" style="width: 100px;">

											</span></td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
							<br /> <br /> <input type="submit"
								class="checkout-button button wc-forward au-btn btn-small "
								value="주문하기" style="WIDTH: 150px; HEIGHT: 60px">
						</form>
						<div class="cart-collaterals">
							<div class="cart_totals">
								<h2>Cart totals</h2>
								<table class="shop_table shop_table_responsive">
									<tbody>

										<tr class="order-total">
											<th>Total</th>
											<td data-title="Total"><span
												class="woocommerce-Price-amount amount"> <span
													class="woocommerce-Price-currencySymbol"></span> <span
													class="woocommerce-Price"> <c:set var="sum"
															value="0" /> <c:forEach items="${cartList}"
															var="cartList">
															<c:set var="sum"
																value="${sum+cartList.productPrice*cartList.cartQty}" />
														</c:forEach> 														
														<fmt:formatNumber pattern="###,###,###" value="${sum}"/>
												</span>원
											</span></td>
										</tr>
									</tbody>
								</table>
								</c:otherwise>
								</c:choose>
								<form action="jumun_insert_form.do" method="POST">
									<div class="wc-proceed-to-checkout">
										<input type="hidden" name="totalPrice" value="${sum}">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Shop Cart Section -->

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
	<script type="text/javascript">
		
	</script>
</body>
</html>
