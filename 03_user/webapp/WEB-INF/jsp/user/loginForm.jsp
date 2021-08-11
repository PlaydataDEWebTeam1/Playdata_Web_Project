<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
</head>
<body>
<h3>로그인</h3>
<jsp:include page="../inc/header.jsp"/>
<form action="/user/login" method="post">
	<input type="text" name="userId" autofocus="autofocus" placeholder="아이디" />
	<input type="password" name="userPw" required="required" placeholder="비밀번호" />
	<input type="submit" value="로그인"/>
</form>
<a href="/findIdForm">아이디찾기</a>
<a href="/findPwForm">비밀번호찾기</a>


</body>
</html>