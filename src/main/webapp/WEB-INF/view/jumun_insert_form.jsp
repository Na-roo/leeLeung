<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<script>
	function openZipSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				$('[name=postCode]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=jumunAddress]').val(data.address);
				$('[name=jumunAddress2]').val(data.buildingName);
			}
		}).open();
	}
</script>
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

<body class="check-out">
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

		<!-- Check Out Section -->
		<section class="checkout-section section-box">
			<div class="woocommerce">
				<div class="container">
					<div class="entry-content">
					
					<div class="woocommerce-info">
							leeLeung 의 회원이신가요?
							<a class="showlogin">회원이라면 이곳을 클릭해주세요</a>
						</div>
						
						<form class="woocommerce-form woocommerce-form-login" method="POST">
							<p class="form-button" style="margin: 0 0;">
								<label>
									
								</label>
									<div class="place-order">
										<a class="button alt au-btn btn-small"
										   href="./jumun_insert_form2.do"
										>주문자정보 가져오기</a>
												
													
									</div>
								
								<!-- <label class="woocommerce-form__label" style="margin: 0 0;">
									<input class="woocommerce-form__input" name="rememberme" type="checkbox" id="rememberme" value="forever"> 
									<a href="./jumun_insert_form2.do">주문자정보 가져오기</a>
								</label> -->
							</p>
						</form>				
								<form action="jumun_check_form.do" class="checkout woocommerce-checkout" method="get">
								<!-- <form class="checkout woocommerce-checkout" method="POST"> -->
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
									<div class="woocommerce-billing-fields">
										<h2 style="padding-bottom: 50px;">수취인 정보입력</h2>
										<div class="woocommerce-billing-fields__field-wrapper">
											<p class="form-row-wide">
												<input type="text" class="input-text "
													name="productRec" id="billing_first_name"
													placeholder="이름 *">
											</p>
											<p class="form-row-first">
												<input type="text" class="input-text "
													id="billing_first_name" name="postCode" placeholder="우편번호"
													readonly>
											</p>
											<p class="form-row-last">
												<button type="button" style="width: 100px; height: 32px;"
													onclick="openZipSearch()">주소검색</button>
											</p>
											<p class="form-row-wide">
												<input type="text" class="input-text " name="jumunAddress"
													id="billing_address_2" placeholder="주소" readonly>
											</p>
											<p class="form-row-wide">
												<input type="text" class="input-text " name="jumunAddress2"
													id="billing_address_2" placeholder="상세주소">
											</p>
											<p class="form-row-first">
												<input type="tel" class="input-text " name="productRecPhone"
													id="billing_phone" placeholder="연락처 *">
											</p>
											<p class="form-row-last">
												<input type="email" class="input-text " name="jumunEmail"
													id="billing_email" placeholder="Email 주소 *">
											</p>
										</div>
									</div>

									<div class="woocommerce-additional-fields">
										<h2>요청사항</h2>
										<div class="woocommerce-additional-fields__field-wrapper">
											<p class="notes" id="order_comments_field">
												<textarea name="jumunReq" class="input-text "
													id="order_comments" placeholder="요청사항을 입력하세요"></textarea>
											</p>
										</div>
									</div>
							</div>

							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="woocommerce-checkout-review-order">
									<h2 id="order_review_heading" style="float: left;">주문 목록</h2>
									<table class="shop_table">
										<tbody>
											<tr>
												<td>
													<p style="margin-left: 30px;">
														<span style="float: right; text-align: right;"> 
														(${sproductList[0].productName } 외 ${sjumunSize - 1}건) 
														</span>
													</p>
												</td>
											</tr>
										</tbody>
									</table>

									<table class="shop_table" style="clear: both;">
										<tbody>
											<c:forEach var ="product" items ="${sproductList}" varStatus="i">
												
												<tr class="cart_item">
													<td class="product-name"><img
														src="${product.productImgA}" alt="product">
														<div class="review-wrap">
															<span class="cart_item_title">${product.productName}</span> <span
																class="product-quantity">${product.productPrice}&emsp; X &emsp;${squantity[i.index]}</span>
														</div></td>
													<td class="product-total"><span
														class="woocommerce-Price-amount amount"> <span
															class="woocommerce-Price-currencySymbol"></span>${product.productPrice * squantity[i.index]}
													</span></td>
												</tr>
												<c:set var="sum" value="${sum + product.productPrice * squantity[i.index]}"/>
												
											</c:forEach>
											
										</tbody>
										<tfoot>
											<tr>
												<td>
													<p style="padding: 3px 0;">
														<!-- <span class="woocommerce-Price-amount amount"
															style="font-weight: bold;"> 금액 정보
															&emsp;&emsp;&emsp; </span> <span> 가격데이터 </span> -->
															<h2>금액정보</h2>
													</p>
													<p style="padding: 3px 0;">
														<span class="woocommerce-Price-amount amount"
															style="font-weight: bold;"> 총 상품금액
															&emsp;&emsp; </span> <span> <fmt:formatNumber pattern = "###,###,###,###" value = "${sum}" /> </span>
													원
													</p>
													<p style="padding: 3px 0;">
														<span class="woocommerce-Price-amount amount"
															style="font-weight: bold;"> 할인금액
															&emsp;&emsp;&emsp; </span> <span>  -  <fmt:formatNumber pattern = "###,###,###,###" value = "${sum * 0.05}"/> </span>
													원
													</p>
												</td>
											</tr>

											<tr>
												<td>
													<p style="padding: 20px 0;">
														<span class="woocommerce-Price-amount amount"
															style="font-weight: bold;"> 총 결제금액 &emsp;&emsp; </span>
														<span> <fmt:formatNumber pattern = "###,###,###,###" value = "${sum - sum * 0.05}"/> </span>
													원
													</p>
												</td>
											</tr>

										</tfoot>
									</table>
										
											<div class="woocommerce-checkout-payment">
												<ul class="payment_methods">
												<li style="margin-bottom: 10px"><h2>결제수단</h2></li>
												<li class="wc_payment_method"><input type="radio"
													id="payment_method_bacs" class="input-radio"
													name="jumunPay" checked="checked" value="카드">
													<label for="payment_method_bacs">카드</label></li>
												<li class="wc_payment_method"><input type="radio"
													name="jumunPay" id="payment_method_cheque"
													class="input-radio" value="무통장입금"> <label
													for="payment_method_cheque">무통장입금</label></li>
										</ul>
										
											<div class="place-order">
												<input type="submit" class="button alt au-btn btn-small"
													name="woocommerce_checkout_place_order" id="place_order"
													value="주문하기"> <span><i
													class="zmdi zmdi-arrow-right"></i></span>
												<input type="hidden" name="jumunPrice" value="${sum}">
												<input type="hidden" name="jumunRankDiscount" value="${sum * 0.05}">
												<input type="hidden" name="productName" value="${sproductList[0].productName } 외 ${sjumunSize - 1}건">
												<input type="hidden" name="memberNo" value="${sMember.memberNo}">
													
											</div>
											
									</div>
								</div>
							</div>
						</div>
								</form>
						
					</div>
				</div>
			</div>
		</section>
		<!-- End Check Out Section -->
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
	<!-- address api library-->
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
</body>
</html>
