<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<ul>
	<li class="menu-item"><a href="product_list.do"
		class="current"> BEST PRODUCT </a></li>

	<li class="menu-item"><a href="product_category_list.do?categoryNo=100"> PRODUCT </a>
		<ul class="sub-menu">
			<li><a href="product_category_list.do?categoryNo=100"> 침대 <i
					class="zmdi zmdi-chevron-right"></i>
			</a>
				<ul class="sub-menu menu-levels">
					<li><a href="product_category_detail_list.do?categoryDetailNo=1000">철제침대</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1010">원목침대</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1020">소파베드</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1030">유아동침대</a></li>
				</ul></li>
			<li><a href="product_category_list.do?categoryNo=200"> 소파 <i
					class="zmdi zmdi-chevron-right"></i>
			</a>
				<ul class="sub-menu menu-levels">
					<li><a href="product_category_detail_list.do?categoryDetailNo=1040">패브릭소파</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1050">가죽소파</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1060">원목소파</a></li>
				</ul></li>
			<li><a href="product_category_list.do?categoryNo=300"> 수납장 <i
					class="zmdi zmdi-chevron-right"></i>
			</a>
				<ul class="sub-menu menu-levels">
					<li><a href="product_category_detail_list.do?categoryDetailNo=1070">철제수납장</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1080">원목수납장</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1090">옷장/수납장</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1100">캐비닛/락커</a></li>
				</ul></li>
			<li><a href="product_category_list.do?categoryNo=400"> 패브릭 <i
					class="zmdi zmdi-chevron-right"></i>
			</a>
				<ul class="sub-menu menu-levels">
					<li><a href="product_category_detail_list.do?categoryDetailNo=1110">담요</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1120">쿠션</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1130">러그</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1140">커튼</a></li>
				</ul></li>
			<li><a href="product_category_list.do?categoryNo=500"> 리빙 <i
					class="zmdi zmdi-chevron-right"></i>
			</a>
				<ul class="sub-menu menu-levels">
					<li><a href="product_category_detail_list.do?categoryDetailNo=1150">옷걸이/행거</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1160">욕실용품</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1170">주방용품</a></li>
					<li><a href="product_category_detail_list.do?categoryDetailNo=1180">세탁용품</a></li>
				</ul></li>
		</ul></li>

	<li class="menu-item"><a href="./cartList.do"> CART </a></li>

	<li class="menu-item"><a href="./jumun_list.do?memberNo="${sMember.memberNo}> MY ORDER </a></li>
</ul>
