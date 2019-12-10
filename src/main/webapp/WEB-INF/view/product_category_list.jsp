<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	function productSort(url) {
		var sort = document.getElementById("sort");
		var sortText = sort.options[sort.selectedIndex].text;
		location.href = url;
	}
</script>
</head>
<body class="shop-left-width-siderbar">
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
		<section class="breadcrumb-contact-us breadcrumb-section section-box"
			style="background-image: url(images/shop-bc.jpg)">
			<div class="container">
				<div class="breadcrumb-inner"></div>
			</div>
		</section>
		<!-- End Breadcrumb Section -->

		<!-- Shop Section -->
		<section
			class="featured-hp-1 items-hp-6 shop-full-page shop-right-siderbar">
			<div class="container">
				<div class="featured-content woocommerce">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
							<div class="widget-area">

								<!-- Categories -->
								<div class="widget widget_product_categories">
									<h3 class="widget-title">카테고리</h3>
									<ul class="product-categories">
										<li class="cat-item cat-parent"><a
											href="product_category_list.do?categoryNo=100"><span>침대</span></a>
											<a href="product_category_list.do?categoryNo=100"><span>(16)</span></a>
										</li>
										<li class="cat-item cat-parent"><a
											href="product_category_list.do?categoryNo=200"><span>소파</span></a>
											<a href="product_category_list.do?categoryNo=200"><span>(12)</span></a>
										</li>
										<li class="cat-item cat-parent"><a
											href="product_category_list.do?categoryNo=300"><span>수납장</span></a>
											<a href="product_category_list.do?categoryNo=300"><span>(16)</span></a>
										</li>
										<li class="cat-item cat-parent"><a
											href="product_category_list.do?categoryNo=400"><span>패브릭</span></a>
											<a href="product_category_list.do?categoryNo=400"><span>(16)</span></a>
										</li>
										<li class="cat-item cat-parent"><a
											href="product_category_list.do?categoryNo=500"><span>리빙</span></a>
											<a href="product_category_list.do?categoryNo=500"><span>(16)</span></a>
										</li>
									</ul>
								</div>

								<!-- Products -->
								<div class="widgets widget_products"></div>

								<!-- Banner -->
								<div class="widgets widget_banner">
									<div class="widget_banner-content">
										<span></span>
										<p></p>
									</div>
								</div>
							</div>


						</div>
						<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
							<div class="content-area">

								<div class="storefront-sorting">
									<p class="woocommerce-result-count"></p>
									<form id="sort" name="orderby" class="woocommerce-ordering"
										method="get" style="font-size: medium;"
										onchange="productSort(this.value);">
										<a href="product_order_popular.do?categoryNo=${categoryNo}">인기순</a>&nbsp;
										<a href="product_order_asc.do?categoryNo=${categoryNo}">저가순</a>&nbsp;
										<a href="product_order_desc.do?categoryNo=${categoryNo}">고가순</a>&nbsp;
									</form>
								</div>

								<div class="row">
									<!-- Product 1 -->
									<c:forEach items="${productList}" var="productList">
										<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
											<div class="product type-product">
												<div class="woocommerce-LoopProduct-link">
													<div class="product-image">
														<a
															href="product_view.do?productNo=${productList.productNo}"
															class="wp-post-image"> <img class="image-cover"
															src="${productList.productImgA}" alt="product"
															height="700px" width="300px">
														</a>

													</div>
													<h5 class="woocommerce-loop-product__title">
														<a href="#">${productList.productName}</a>
													</h5>
													<span class="price"> <span
														class="woocommerce-Price-amount amount"> <span
															class="woocommerce-Price-currencySymbol"></span>
															${productList.productPrice}원
													</span>
													</span>
												</div>

											</div>
										</div>
									</c:forEach>
								</div>
							</div>

							<div class="navigation pagination">
								<div class="page-numbers"></div>
							</div>

						</div>
					</div>
				</div>
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
