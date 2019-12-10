<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>뷰 성공ㅎㅎ</h1>
	<form method='post' action='member_update_form.do'>
		<input type='hidden' name='memberNo' value='${member.memberNo}'>
		<input type='submit' value='${member.memberName}님 수정' >
	</form>
	<form method="post" action='member_delete_action.do'>
		<input type='hidden' name='memberNo' value="${member.memberNo}">
		<input type='submit' value="${member.memberName}님 삭제"> 
	</form>
	<p>
	${member.memberNo}<br/>
	${member.memberId}<br/>
	${member.memberPassword}<br/>
	${member.memberName}<br/>
	${member.memberSex}<br/>
	${member.memberPhone}<br/>
	${member.memberEmail}<br/>
	${member.memberAddress}<br/>
</body>
</html>
