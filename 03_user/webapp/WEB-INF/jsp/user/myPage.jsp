<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<h3>my page</h3>
<jsp:include page="../inc/header.jsp"/>
<a href="/user/deleteForm">탈퇴</a>
<a href="/user/userInfo">내정보조회</a>
<c:if test="${loginType}=='A'">
<a  href="/user/userLsit">전체회원목록</a>
</c:if>
</body>
</html>