<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>수정 페이지</h1><hr>
	<form action="board_review_update_action.do" method="POST">
	리뷰번호<input type="text" name="reviewNo" value="${boardReview.reviewNo}" readonly="readonly"><br/>
	리뷰작성자<input type="text" name="reviewWriter" value="${boardReview.reviewWriter}" readonly="readonly"><br/>
	리뷰제목<input type="text" name="reviewTitle" value="${boardReview.reviewTitle}"><br/>
	리뷰내용<input type="text" name="reviewContent" value="${boardReview.reviewContent}"><br/>
	리뷰날짜<input type="text" name="reviewDate" value="${boardReview.reviewDate}" readonly="readonly"><br/>
	리뷰조회수<input type="text" name="reviewViewCount" value="${boardReview.reviewViewCount}" readonly="readonly"><br/>
	리뷰평점<input type="text" name="reviewGrade" value="${boardReview.reviewGrade}"><br/>
	<input type="submit" value="수정">
	</form>
</body>
</html>