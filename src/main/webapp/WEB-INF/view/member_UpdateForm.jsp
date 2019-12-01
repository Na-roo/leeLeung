<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="com.itwill.member.Member"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<script>
	function openZipSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				$('[name=postCode]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=memberAddress]').val(data.address);
				$('[name=memberAddress2]').val(data.buildingName);
			}
		}).open();
	}

	function update() {
		if (confirm("회원정보를 수정 하시겠습니까?") == true) {
			document.member.submit();
			alert("회원정보 수정이 완료되었습니다.");
		} else {
			return false;
		}
	}
	
	function main() {
		document.member.action='main.do';
		document.member.method='GET';
		document.member.submit();
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

<body class="our-team">
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

		<!-- My Account Section -->
		<section class="my-account-section section-box">
			<div class="woocommerce">
				<div class="container">
					<div class="content-area">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="entry-content">
									<h2 class="special-heading">회원정보 수정</h2>
									
									<form id="member" name="member" action="memberUpdateAction.do" method="POST">
										<input type="hidden" name="memberNo" value="${sMember.memberNo}">
										
										<p class="woocommerce-form-row">
											<span>가입날짜</span>
											<input type="text" value="<fmt:formatDate value="${sMember.memberDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"> 
										</p>
										<p class="woocommerce-form-row">
											<span>회원등급</span>
											<input type="text" class="woocommerce-Input input-text" name="memberRank" id="memberRank" value="${sMember.memberRank}" readonly>
										</p>
										<p class="woocommerce-form-row">
											<span>보유한 마일리지</span>
											<input type="text" class="woocommerce-Input input-text" name="memberMileage" value="${sMember.memberMileage}" readonly>
										</p>
										<p class="woocommerce-form-row">
											<span>아이디</span>
											<input type="text" class="woocommerce-Input input-text" name="memberId" id="memberId" value="${sMember.memberId}" readonly>
										</p>
										<p class="woocommerce-form-row">
											<span>새 비밀번호</span>
											<input class="woocommerce-Input input-text" type="password" name="memberPassword" id="memberPassword" placeholder="새 비밀번호를 입력하세요 *">
										</p>
										
										<p class="woocommerce-form-row">
											<span>이름</span>
											<input type="text" class="woocommerce-Input input-text" name="memberName" id="memberName" value="${sMember.memberName}" readonly>
										</p>
										<p class="woocommerce-form-row">
											<button type="button" style="width: 100px; height: 32px; margin-bottom: 25px;" onclick="openZipSearch()">
												주소검색
											</button>
											<input type="text" class="woocommerce-Input input-text" name="postCode" id="postCode" value="${sMember.postCode}" readonly>
										</p>
										<p class="woocommerce-form-row">
											<span>주소</span>
											<input type="text" class="woocommerce-Input input-text" name="memberAddress" id="memberAddress" value="${sMember.memberAddress}" readonly>
										</p>
										<p class="woocommerce-form-row">
											<span>상세주소</span>
											<input type="text" class="woocommerce-Input input-text" name="memberAddress2" id="memberAddress2" value="${sMember.memberAddress2}" >
										</p>
										<p class="woocommerce-form-row">
											<span>연락처</span>
											<input type="text" class="woocommerce-Input input-text" name="memberPhone" id="memberPhone" value="${sMember.memberPhone}" >
										</p>
										<p class="woocommerce-form-row">
											<span>E-Mail</span>
											<input type="text" class="woocommerce-Input input-text" name="memberEmail" id="memberEmail" value="${sMember.memberEmail}" >
										</p>
										
										<p class="woocommerce-form-row" style="margin-top: 50px;">회원정보 수정을 원하시면 비밀번호를 재입력 해주세요.</p>
										
										<p class="woocommerce-form-row" style="margin-top: 50px;">
											<span style="width: 130px; line-height: 50px; cursor:pointer; text-align: center;" onclick="update()">
												정보수정완료
											</span>
											
											<span style="width: 130px; line-height: 50px; cursor:pointer; text-align: center; margin-left: 85px;" onclick="main();">
												취소
											</span>
										</p>	
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- End My Account Section -->
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
