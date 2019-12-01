<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공ㅋㅋ${member.memberId} ${member.memberPassword} ${member.memberName} </h1>
    <a href="member_insert_form.do">회원가입</a>
     
    <table id="memberTable">
	<tr align="center">
		<td>회원번호</td>
		<td>회원아이디</td>
		<td>회원비밀번호</td>
		<td>회원이름</td>
		<td>회원성별</td>
		<td>회원핸드폰번호</td>
		<td>회원이메일</td>
		<td>회원주소</td>
	</tr>
	
	<c:forEach items="${memberList}" var="memberList">
		<tr align="center">
			<td><a href="member_view.do?memberNo=${memberList.memberNo}">${memberList.memberNo}</a></td>
			<td>${memberList.memberId}</td>
			<td>${memberList.memberPassword}</td>
			<td>${memberList.memberName}</td>
			<td>${memberList.memberSex}</td>
			<td>${memberList.memberPhone}</td>
			<td>${memberList.memberEmail}</td>
			<td>${memberList.memberAddress}</td>
		</tr>
	</c:forEach>
	</table>
	
	<form action="member_logout.do" method="get">
		<h3>회원 로그아웃</h3>
		<input type="submit" value="로그아웃">
	</form>
</body>
</html>