<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	form {
		margin: 0 auto;
		width: 250px;
	}
</style>
</head>
<body>
	
	<form action="member_login.do" method="POST">
		<h3>회원 로그인</h3>
		<input type="text" name="memberId" placeholder="아이디"><br/>
		<input type="password" name="memberPw" placeholder="비밀번호">
		<input type="submit" value="로그인">
	</form>
	
	
</body>
</html>
