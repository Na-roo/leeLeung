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

<body class="homepages-1">
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
		<!-- Slider Revolution Section -->
		<section class="home-slider style-home-slider-hp-1">
			<!-- the ID here will be used in the inline JavaScript below to initialize the slider -->
			<div id="rev_slider_1" class="rev_slider fullscreenbanner"
				data-version="5.4.5">
				<ul>
					<!-- BEGIN SLIDE 1 -->
					<li data-transition="boxslide">
						<!-- SLIDE'S MAIN BACKGROUND IMAGE --> <img
						src="images/hp-1-slide-bg-1.jpg" alt="slide-1" class="rev-slidebg">

						<!-- BEGIN LAYER -->
						<div class="tp-caption tp-resizeme slide-caption-title-1"
							data-frames='[{"delay":500,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"y:-20px;opacity:0;","ease":"Power3.easeInOut"}]'
							data-fontsize="['20', '25', '30', '35']"
							data-lineheight="['32', '35', '40', '45']" data-color="#d59f9f"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['center','center','center','center']"
							data-y="['middle','middle','middle','middle']"
							data-hoffset="['0', '0', '0', '0']"
							data-voffset="['-227', '-200', '-175', '-130']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">BEST SELLERS</div>
						<div class="tp-caption tp-resizeme slide-caption-title-2"
							data-frames='[{"delay":1000,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"y:-20px;opacity:0;","ease":"Power3.easeInOut"}]'
							data-fontsize="['90', '90', '80', '80']"
							data-lineheight="['70', '70', '60', '60']" data-color="#fff"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['center','center','center','center']"
							data-y="['middle','middle','middle','middle']"
							data-hoffset="['0', '0', '0', '0']"
							data-voffset="['-140', '-117', '-110', '-90']"
							data-width="['1200', '850', '850', '800']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">
							<span>CHAIR</span> COLLECTION
						</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['80', '80', '80', '90']"
							data-lineheight="['60', '60', '50', '50']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['27', '18', '18', '60']"
							data-voffset="['28', '30', '30', '30']"
							data-width="['250', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">01</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['13', '15', '20', '35']"
							data-lineheight="['32', '35', '40', '45']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['14', '-23', '-20', '35']"
							data-voffset="['63', '56', '50', '37']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">/</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['20', '25', '30', '40']"
							data-lineheight="['32', '35', '40', '45']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['-6', '-43', '-40', '15']"
							data-voffset="['63', '56', '50', '37']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">03</div> <!-- END LAYER -->
					</li>
					<!-- END SLIDE 1 -->

					<!-- BEGIN SLIDE 2 -->
					<li data-transition="boxslide">
						<!-- SLIDE'S MAIN BACKGROUND IMAGE --> <img
						src="images/hp-1-slide-bg-2.jpg" alt="slide-2" class="rev-slidebg">

						<!-- BEGIN LAYER -->
						<div class="tp-caption tp-resizeme slide-caption-title-1"
							data-frames='[{"delay":500,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"y:-20px;opacity:0;","ease":"Power3.easeInOut"}]'
							data-fontsize="['20', '25', '30', '35']"
							data-lineheight="['32', '35', '40', '45']" data-color="#3d4552"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['center','center','center','center']"
							data-y="['middle','middle','middle','middle']"
							data-hoffset="['0', '0', '0', '0']"
							data-voffset="['-227', '-200', '-175', '-130']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">BEST SELLERS</div>
						<div class="tp-caption tp-resizeme slide-caption-title-2"
							data-frames='[{"delay":1000,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"y:-20px;opacity:0;","ease":"Power3.easeInOut"}]'
							data-fontsize="['90', '90', '80', '80']"
							data-lineheight="['70', '70', '60', '60']" data-color="#fff"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['center','center','center','center']"
							data-y="['middle','middle','middle','middle']"
							data-hoffset="['0', '0', '0', '0']"
							data-voffset="['-140', '-117', '-110', '-90']"
							data-width="['1200', '850', '850', '800']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">
							<span>BED</span> COLLECTION
						</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['80', '80', '80', '90']"
							data-lineheight="['60', '60', '50', '50']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['27', '27', '27', '60']"
							data-voffset="['28', '30', '30', '30']"
							data-width="['250', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">02</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['13', '15', '20', '35']"
							data-lineheight="['32', '35', '40', '45']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['3', '-23', '-20', '32']"
							data-voffset="['63', '56', '50', '37']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">/</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['20', '25', '30', '40']"
							data-lineheight="['32', '35', '40', '45']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['-17', '-43', '-40', '15']"
							data-voffset="['63', '56', '50', '37']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">03</div> <!-- END LAYER -->
					</li>
					<!-- END SLIDE 2 -->

					<!-- BEGIN SLIDE 3 -->
					<li data-transition="boxslide">
						<!-- SLIDE'S MAIN BACKGROUND IMAGE --> <img
						src="images/hp-1-slide-bg-3.jpg" alt="slide-3" class="rev-slidebg">

						<!-- BEGIN LAYER -->
						<div class="tp-caption tp-resizeme slide-caption-title-1"
							data-frames='[{"delay":500,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"y:-20px;opacity:0;","ease":"Power3.easeInOut"}]'
							data-fontsize="['20', '25', '30', '35']"
							data-lineheight="['32', '35', '40', '45']" data-color="#3d4552"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['center','center','center','center']"
							data-y="['middle','middle','middle','middle']"
							data-hoffset="['0', '0', '0', '0']"
							data-voffset="['-227', '-200', '-175', '-130']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">BEST SELLERS</div>
						<div class="tp-caption tp-resizeme slide-caption-title-2"
							data-frames='[{"delay":1000,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"y:-20px;opacity:0;","ease":"Power3.easeInOut"}]'
							data-fontsize="['90', '90', '80', '80']"
							data-lineheight="['70', '70', '60', '60']" data-color="#fff"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['center','center','center','center']"
							data-y="['middle','middle','middle','middle']"
							data-hoffset="['0', '0', '0', '0']"
							data-voffset="['-140', '-117', '-110', '-90']"
							data-width="['1200', '850', '850', '800']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">
							<span>INTERIOR</span>
						</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['80', '80', '80', '90']"
							data-lineheight="['60', '60', '50', '50']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['27', '27', '27', '60']"
							data-voffset="['28', '30', '30', '30']"
							data-width="['250', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">03</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['13', '15', '20', '35']"
							data-lineheight="['32', '35', '40', '45']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['3', '-23', '-20', '32']"
							data-voffset="['63', '56', '50', '37']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">/</div>
						<div class="tp-caption tp-resizeme slide-caption-title-3"
							data-frames='[{"delay":0,"speed":300,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
							data-fontsize="['20', '25', '30', '40']"
							data-lineheight="['32', '35', '40', '45']"
							data-color="['#666','#fff','#fff','#fff']"
							data-textAlign="['center', 'center', 'center', 'center']"
							data-x="['right','right','right','right']"
							data-y="['bottom','bottom','bottom','bottom']"
							data-hoffset="['-17', '-43', '-40', '15']"
							data-voffset="['63', '56', '50', '37']"
							data-width="['187', '250', '300', '350']"
							data-whitespace="normal" data-basealign="slide"
							data-responsive_offset="off">03</div> <!-- END LAYER -->
					</li>
					<!-- END SLIDE 3 -->
				</ul>
			</div>
		</section>
		<!-- End Slider Revolution Section -->


		<!--  product section start-->

		<section class="featured-hp-1 featured-hp-4 shop-full-page">
			<div class="container">
				<div class="featured-content woocommerce">
					<h2 data-brackets-id="620" class="special-heading">PRODUCT</h2>
					<div class="content-area">
						<div class="row">
							<!-- Product 1 -->
							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1000"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1000a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1010"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1010a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1020"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1020a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1030"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1030a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1040"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1040a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>

								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1050"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1050a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>

								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">


								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1060"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1060a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1070"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1070a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1080"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1080a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1090"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1090a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1100"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1100a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
								<div class="product type-product">
									<div class="woocommerce-LoopProduct-link">
										<div class="product-image">
											<a href="product_view.do?productNo=1110"
												class="wp-post-image"> <img class="image-cover"
												src="productImg/1110a.jpg" alt="product" height="700px"
												width="300px">
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--  product section end-->

		<!-- Banner Section -->
		<section class="banner-hp-1 section-box">
			<div class="container">
				<div class="banner-content">
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-4 cl-sm-12 col-12">
							<div class="banner-left">
								<a href="#" class="bg-image"> <img
									src="images/hp-1-banner-1.jpg" alt="banner">
								</a>
								<div class="info">
									<a href="#" class="sale">회원등급별 할인혜택</a> <span>최대 10% 할인</span>
									<a href="shop-full-width.html" class="shop">상품 보러가기<i
										class="zmdi zmdi-arrow-right"></i></a>
								</div>
							</div>
						</div>
						<div class="col-xl-8 col-lg-8 col-md-8 cl-sm-12 col-12">
							<div class="banner-right">
								<a href="#" class="bg-image"> <img
									src="images/hp-1-banner-2.jpg" alt="banner">
								</a>
								<div class="info">
									<p class="text-1">
										최대 <span>5%</span> 까지
									</p>
									<p class="text-2">회원등급별 마일리지 적립</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Banner Section -->

		<!-- Testimonials Section -->
		<section class="testimonials-hp-1">
			<div class="container-fluid">
				<div class="testimonials-content">
					<div id="testimonials-hp-1" class="owl-carousel owl-theme">
						<!-- Item 1 -->
						<div class="item">
							<div class="row">
								<div
									class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-12 left-block">
									<div class="images">
										<img src="images/hp-1-testimonials-1.jpg" alt="testimonials">
									</div>
								</div>
								<div
									class="col-xl-7 col-lg-7 col-md-7 col-sm-12 col-12 right-block">
									<div class="testimonials-detail">
										<i class="zmdi zmdi-quote"></i>
										<p>융접법은 접합부에 금속재료를 가열.용융시켜 서로 다른 두 재료의 원자 결합을 재배열하여 결합시키는
											방법으로 아크용접, 가스용접, 테르밋용접 등이 있다.</p>
										<h5>장 용 석</h5>
										<span>- 용접사 -</span>
									</div>
								</div>
							</div>
						</div>
						<!-- Item 2 -->
						<div class="item">
							<div class="row">
								<div
									class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-12 left-block left-block-2">
									<div class="images">
										<img src="images/hp-1-testimonials-2.jpg" alt="testimonials">
									</div>
								</div>
								<div
									class="col-xl-7 col-lg-7 col-md-7 col-sm-12 col-12 right-block">
									<div class="testimonials-detail">
										<i class="zmdi zmdi-quote"></i>
										<p>건축은 수많은 사람들이 쏟아붓는 노력의 결정체다. 특히 옛건축물은 모두 엄격한 수업을 통해 기능을
											수련한 장인정신의 소산이었다고 말할 수 있다.</p>
										<h5>이 준 호</h5>
										<span>- 목수 -</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Testimonials Section -->
	</div>
	
	<div style="widht: 100%; height: 145px;"></div>

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
	<!-- Bootstrap -->
	<script src="vendor/bootrap/js/bootstrap.min.js"></script>
	<!-- Waypoints Library -->
	<script src="js/jquery.waypoints.min.js"></script>
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