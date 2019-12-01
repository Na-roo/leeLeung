<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	 th, td {
		border: 1px solid gray;
		width: 100px;
		padding: 10px;
	}
</style>
</head>
<body>
	<h1>게시판</h1>
	<a href="board_review_insert_form.do">리뷰작성</a>
	<div>
	<table id="boardReviewTable">
	<tr align="center">
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성일</th>
		<th>조회수</th>
		<th>평점</th>
	</tr>
	<c:forEach items="${reviewList}" var="reviewList">
		<tr align="center">
			<td>${reviewList.reviewNo}</td>
			<th>
			<a href="board_review_view.do?reviewNo=${reviewList.reviewNo}">${reviewList.reviewTitle}</a>
			</th>
			<td>${reviewList.reviewWriter}</td>
			<td>${reviewList.reviewContent}</td>
			<td>
				<fmt:formatDate value="${reviewList.reviewDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
			<td>${reviewList.reviewViewCount}</td>
			<td>${reviewList.reviewGrade}</td>
		</tr>
	</c:forEach>
	</table>
	</div>
</body>
</html>