<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
<c:if test="${not empty message}">
	<c:forEach items="${message}" var="item">
		<script type="text/javascript">alert("${item}");</script>
	</c:forEach>
</c:if>
<c:choose>
	<c:when test="${empty dto}">
		<a href="/user/joinForm">회원가입</a>
		<a href="/user/loginForm">로그인</a>
	</c:when>
	
	<c:when test="${not empty dto}">
		<a href="/user/logout">로그아웃</a>
		<a href="/user/myPage">마이페이지</a>
		<c:if test="${dto.loginType == 'A'}">
			<a href="/admin/userList">전체회원목록</a>
		</c:if>
	</c:when>

</c:choose>
</body>
</html>