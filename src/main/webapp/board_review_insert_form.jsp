<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="board_review_insert_action.do" method="post">
		작성자: <input type="text" name="reviewWriter"><br/>
		제목: <input type="text" name="reviewTitle"><br/>
		내용: <input type="text" name="reviewContent"><br/>
		평점: <input type="radio" name="reviewGrade" value="★★★★★" class="noline" checked="checked">★★★★★
			  <input type="radio" name="reviewGrade" value="★★★★☆" class="noline">★★★★☆ 
			  <input type="radio" name="reviewGrade" value="★★★☆☆" class="noline">★★★☆☆ 
			  <input type="radio" name="reviewGrade" value="★★☆☆☆" class="noline">★★☆☆☆
			  <input type="radio" name="reviewGrade" value="★☆☆☆☆" class="noline">★☆☆☆☆
		<input type="submit" value="추가">
	</form>
	
</body>
</html>
