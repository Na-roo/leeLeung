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
	<h1>게시판 상세보기</h1>
	<form method='post' action='board_review_update_form.do'>
		<input type='hidden' name='reviewNo' value='${boardReview.reviewNo}'>
		<input type='submit' value='${boardReview.reviewWriter}님 수정' >
	</form>
	<form action='board_review_delete_action.do'>
		<input type='hidden' name='reviewNo' value="${boardReview.reviewNo}">
		<input type='submit' value="${boardReview.reviewWriter}님 삭제"> 
	</form>
	<form action='board_review_list.do'>
		<input type="submit" value='게시물 목록'>
	</form>
	<table id="boardReviewView">
		<tr align="center">
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성일</th>	
			<th>조회수</th>
			<th>평점</th>
		</tr>
		<tr align="center">		
			<td>${boardReview.reviewNo}</td>
			<td>${boardReview.reviewWriter}</td>
			<td>${boardReview.reviewTitle}</td>
			<td>${boardReview.reviewContent}</td>
			<td>
				<fmt:formatDate value="${boardReview.reviewDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
			<td>${boardReview.reviewViewCount}</td>
			<td>${boardReview.reviewGrade}</td>
		</tr>
	</table>
</body>
</html>