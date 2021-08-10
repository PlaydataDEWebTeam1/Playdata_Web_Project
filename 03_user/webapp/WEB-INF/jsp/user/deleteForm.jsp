<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴</title>
</head>
<body>
<h3>탈퇴</h3>
<form action="/user/delete" method="post">
	<input type="text" name="userId" autofocus="autofocus" placeholder="아이디" />
	<input type="password" name="userPw" required="required" placeholder="비밀번호" />
	<input type="submit" value="탈퇴"/>
</form>
</body>
</html>