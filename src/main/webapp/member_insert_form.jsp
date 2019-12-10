<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 가입 페이지</h1><hr>
<form action="member_insert_action.do" method="post">
	아이디<input type="text" name="memberId"><br/>
	비번<input type="password" name="memberPassword"><br/>
	이름<input type="text" name="memberName"><br/>
	성별<input type="text" name="memberSex"><br/>
	휴대폰<input type="text" name="memberPhone"><br/>
	이메일<input type="text" name="memberEmail"><br/>
	주소<input type="text" name="memberAddress"><br/>
	<input type="submit" value="추가">
	<input type="reset" value="취소">
</form>
</body>
</html>
