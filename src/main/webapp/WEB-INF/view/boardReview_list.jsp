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
<link rel="stylesheet" href="css/style2.css" />
</head>
<body class="standard-grid">
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
		<!-- Portfolio Section -->
		<section class="two-columns-section standard-grid-section section-box">
			<div class="container">
				<div class="two-columns-content">
					<h1></h1>
					<p></p>
					<div class="row">
						<h3 style="width: 100%;text-align: center; padding: 20px 0 40px 0;">상품 후기</h3>
						<table class="board" border="1">
							<caption>게시판 리스트</caption>
							<colgroup>
								<col width="10%">
								<col width="60%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">작성자</th>
									<th scope="col">날짜</th>
									<th scope="col">조회수</th>
								</tr>
							</thead>
							
							<c:forEach var="boardReview" items="${boardListPage.list}">
								<tbody>
									<tr>
										<td class="reviewNo">
											<span>${boardReview.reviewNo}</span>
										</td>
										<td class="reviewTitle">
											<a href="./boardReviewView.do?reviewNo=${boardReview.reviewNo}">
												${boardReview.reviewTitle}
											</a>
											<span class="boardComment">&nbsp;&nbsp;
											[댓글수]
											</span>
										</td>
										<td class="reviewWriter">
											${boardReview.reviewWriter}
										</td>
										<td class="reviewDate">
											${boardReview.reviewDate}
										</td>
										<td class="reviewViewCount">
											${boardReview.reviewViewCount}
										</td>
									</tr>
								</tbody>
							</c:forEach>

							<tfoot>
								<tr>
									<td align="center" colspan="5">
										<a href="./board_review_list.do?pageno=1">
											◀◀
										</a>&nbsp;
										<a href="./board_review_list.do?pageno=${boardListPage.getPreviousGroupStartPageNo()}">
											◀
										</a>&nbsp;&nbsp;

										<c:forEach begin="${boardListPage.startPageNo}" end="${boardListPage.endPageNo}" varStatus="i">
											<a href="./board_review_list.do?pageno=${i.index}">
												<strong>
													${i.index}
												</strong>
											</a>
										</c:forEach>
										
										<c:if test="${boardListPage.isShowNextGroup()}">
											<a href="./board_review_list.do?pageno=${boardListPage.getNextGroupStartPageNo()}">
												▶
											</a>&nbsp;&nbsp;
				 						</c:if>
				 						<c:if test="${boardListPage.isShowLast()}">
				 							<a href="./board_review_list.do?pageno=${boardListPage.getTotalPageCount()}">
				 								▶▶
				 							</a>&nbsp;&nbsp;
				 						</c:if>
				 					</td>
								</tr>
								<tr>
									<td align=right colspan="5" style="text-align: right;">
				 						<a href="board_review_insert_form.do">
				 							글쓰기
				 						</a>&nbsp;
									</td>
								</tr>
							</tfoot>
						</table>

					</div>
					<div class="load-more"></div>
				</div>
			</div>
		</section>
		<!-- End Portfolio Section -->
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
