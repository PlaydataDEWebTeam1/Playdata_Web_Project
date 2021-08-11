<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../inc/header.jsp"></jsp:include>
<h3>아이디 찾기</h3>
<form action="/findId" method="post">
	<input type="text" name="phone" autofocus="autofocus" placeholder="휴대폰번호" />
	<input type="text" name="userName" required="required" placeholder="이름" />
	<input type="submit" value="찾기"/>
</form>
<c:choose>
	<c:when test="${empty message}">
		아이디 없다
	</c:when>
	
	<c:when test="${not empty message}">
		아이디 있다
	</c:when>

</c:choose>
</body>
</html>