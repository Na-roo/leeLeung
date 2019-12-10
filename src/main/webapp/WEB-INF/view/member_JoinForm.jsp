<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	function main() {
		document.joinForm.action='main.do';
		document.joinForm.method='GET';
		document.joinForm.submit();
	}
	
	function joinCheck(){
		var memberId = $("#memberId").val();
		var memberPw = $("#memberPassword").val();
		var memberPw2 = $("#memberPassword2").val();
		var memberName = $("#memberName").val();
		var postCode = $("#postCode").val();
		var memberAddress = $("#memberAddress").val();
		var memberAddress2 = $("#memberAddress2").val();
		var memberPhone = $("#memberPhone").val();
		var memberEmail = $("#memberEmail").val();
		
		if(memberId.length == 0){
			alert("아이디를 입력해주세요.");
			$("#memberId").focus();
			return false;
		}
		
		if(memberId.length < 4 || memberId.length > 16){
			alert("아이디를 4~16자까지 입력해주세요.");
			$("#memberId").focus();
			return false;
		}
		
		if(memberPw.length == 0){
			alert("비밀번호를 입력해주세요.");
			$("#memberPassword").focus();
			return false;
		}
		
		if(memberPw.length < 4 || memberPw.length > 12){
			alert("비밀번호를 4~12자까지 입력해주세요.");
			$("#memberPassword").focus();
			return false;
		}
		
		if(memberPw != memberPw2){
			alert("비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요");
			$("#memberPassword2").focus();
			return false;
		}
		
		if(memberName.length == 0){
			alert("이름을 입력해주세요");
			$("#memberName").focus();
			return false;
		}
		
		if(postCode.length == 0 || memberAddress.length == 0 || memberAddress2.length == 0){
			alert("주소를 입력해주세요.");
			$("#memberAddress2").focus();
			return false;
		}
		
		if(memberPhone.length == 0){
			alert("연락처를 입력해주세요");
			$("#memberPhone").focus();
			return false;
		}
		
		if(memberEmail.length == 0){
			alert("이메일을 입력해주세요");
			$("#memberEmail").focus();
			return false;
		}
		
		if(confirm("회원가입을 하시겠습니까?")){
			alert(memberName+"님 회원가입을 축하드립니다.");
			document.joinForm.submit();
			return true;
		}
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
									<h2 class="special-heading">회원가입</h2>
									
									<form id="joinForm" name="joinForm" action="joinFormAction.do" method="POST">
										<p class="woocommerce-form-row">
											<input type="text" class="woocommerce-Input input-text" name="memberId" id="memberId" placeholder="아이디를 입력하세요 *"> 아이디는 4~16자로 입력해주세요.
										</p>
										<p class="woocommerce-form-row">
											<input class="woocommerce-Input input-text" type="password" name="memberPassword" id="memberPassword" placeholder="비밀번호를 입력하세요 *"> 비밀번호는 4~12자로 입력해주세요.
										</p>
										<p class="woocommerce-form-row">
											<input class="woocommerce-Input input-text" type="password" name="memberPassword2" id="memberPassword2" placeholder="비밀번호를 다시 한번 입력하세요 *">
										</p>
										<p class="woocommerce-form-row">
											<input input type="text" class="woocommerce-Input input-text" name="memberName" id="memberName" placeholder="이름을 입력하세요 *">
										</p>
										<p class="woocommerce-form-row">
											<button type="button" style="width: 100px; height: 32px; margin-bottom: 25px;" onclick="openZipSearch()">
												주소검색
											</button>
											<input input type="text" class="woocommerce-Input input-text" name="postCode" id="postCode" placeholder="우편번호*" readonly>
										</p>
										<p class="woocommerce-form-row">
											<input input type="text" class="woocommerce-Input input-text" name="memberAddress" id="memberAddress" placeholder="주소 *" readonly>
										</p>
										<p class="woocommerce-form-row">
											<input input type="text" class="woocommerce-Input input-text" name="memberAddress2" id="memberAddress2" placeholder="상세주소 *" >
										</p>
										<p class="woocommerce-form-row">
											<input input type="text" class="woocommerce-Input input-text" name="memberPhone" id="memberPhone" placeholder="연락처 *" >
										</p>
										<p class="woocommerce-form-row">
											<input input type="text" class="woocommerce-Input input-text" name="memberEmail" id="memberEmail" placeholder="Email *" >
										</p>
										
										<p class="woocommerce-form-row" style="margin-top: 50px;">
											<span style="width: 130px; line-height: 50px; cursor:pointer; text-align: center;" onclick="joinCheck();">
												회원가입
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
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</body>
</html>
