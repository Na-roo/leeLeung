<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.itwill.member.Member"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>수정 페이지</h1><hr>
	<form action="member_update_action.do" method="POST">
	회원번호<input type="text" name="memberNo" value="${member.memberNo}"><br/>
	회원아이디<input type="text" name="memberId" value="${member.memberId}"><br/>
	회원비밀번호<input type="text" name="memberPassword" value="${member.memberPassword}"><br/>
	회원이름<input type="text" name="memberName" value="${member.memberName}"><br/>
	회원성별<input type="text" name="memberSex" value="${member.memberSex}"><br/>
	회원핸드폰<input type="text" name="memberPhone" value="${member.memberPhone}"><br/>
	회원이메일<input type="text" name="memberEmail" value="${member.memberEmail}"><br/>
	회원주소<input type="text" name="memberAddress" value="${member.memberAddress}"><br/>
	<input type="submit" value="수정">
	<input type="reset" value="취소">
	</form>
</body>
</html>
