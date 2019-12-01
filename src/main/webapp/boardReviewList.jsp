<!DOCTYPE html>
<%@page import="com.itwill.board.boardReview.BoardReview"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>

<style>
.sub_news, .sub_news th, .sub_news td {
	border: 0
}

.sub_news a {
	color: #383838;
	text-decoration: none
}

.sub_news {
	width: 100%;
	border-bottom: 1px solid #999;
	color: #666;
	font-size: 12px;
	table-layout: fixed
}

.sub_news caption {
	display: none
}

.sub_news th {
	padding: 5px 0 6px;
	border-top: solid 1px #999;
	border-bottom: solid 1px #b2b2b2;
	background-color: #f1f1f4;
	color: #333;
	font-weight: bold;
	line-height: 20px;
	vertical-align: top
}

.sub_news td {
	padding: 8px 0 9px;
	border-bottom: solid 1px #d2d2d2;
	text-align: center;
	line-height: 18px;
}

.sub_news .date, .sub_news .hit {
	padding: 0;
	font-family: Tahoma;
	font-size: 11px;
	line-height: normal
}

.sub_news .title {
	text-align: left;
	padding-left: 15px;
	font-size: 13px;
}

.sub_news .title .pic, .sub_news .title .new {
	margin: 0 0 2px;
	vertical-align: middle
}

.sub_news .title a.comment {
	padding: 0;
	background: none;
	color: #f00;
	font-size: 12px;
	font-weight: bold
}

.sub_news tr.reply .title a {
	padding-left: 16px;
}

.boardReview .writeButton {
    width: 100%;
}

.writeButton .qnaWrite_btn_new {
    width: 100%;
    height: 45px
}

.writeButton a {
    width: 150px;
    line-height: 45px;
    text-align: center;
    border: 1px solid #6d6d6d;
    float: right;
    margin-legt: 300px;
}

</style>

<body>
<h1>게시판</h1>
	<a href="board_review_insert_form.do">리뷰작성</a>
<table class="sub_news" border="1"
	summary="게시판의 글제목 리스트">
	<caption>게시판 리스트</caption>
	<colgroup>
		<col>
		<col width="110">
		<col width="100">
		<col width="80">
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
				<td>${boardReview.reviewNo}</td>
				<td><a href="board_review_view.do?reviewNo=${boardReview.reviewNo}">${boardReview.reviewTitle}</a></td>
				<td>${boardReview.reviewWriter}</td>
				<td>
					<fmt:formatDate value="${boardReview.reviewDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>${boardReview.reviewViewCount}</td>
			</tr>
		</tbody>
	</c:forEach>

	<!-- tr이 제목 1줄입니다 보일 list 갯수만큼 li반복합니다.-->
	
	<tfoot>
		<tr>
			<td align="center">
				<a href="./board_review_list.do?pageno=1">◀◀</a>&nbsp;
				<a href="./board_review_list.do?pageno=${boardListPage.getPreviousGroupStartPageNo()}">◀</a>&nbsp;&nbsp;
			
				<c:forEach begin="${boardListPage.startPageNo}" end="${boardListPage.endPageNo}" varStatus="i">
				<a href="./board_review_list.do?pageno=${i.index}"><strong>${i.index}</strong></a>
				</c:forEach>
				<c:if test="${boardListPage.isShowNextGroup()}">
				 <a	href="./board_review_list.do?pageno=${boardListPage.getNextGroupStartPageNo()}">▶</a>&nbsp;&nbsp;
				 </c:if>
				 <c:if test="${boardListPage.isShowLast()}">
				<a href="./board_review_list.do?pageno=${boardListPage.getTotalPageCount()}">▶▶</a>&nbsp;&nbsp;
				 </c:if>
			</td>
			
		</tr>
	</tfoot>

</table>

</body>
</html>