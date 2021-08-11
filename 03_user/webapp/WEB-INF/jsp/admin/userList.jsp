<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체회원목록</title>
</head>
<body>
<jsp:include page="../inc/header.jsp"></jsp:include>
<h3>전체회원목록</h3>
<!-- 다중조건검색 조각페이지 삽입 -->
<jsp:include page="../inc/multipleCondition.jsp"></jsp:include>
<h3>전체회원조회</h3>
<c:if test="${empty list}">
	등록된 회원이 없습니다.
</c:if>

<c:if test="${not empty list}">

<table>
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>휴대폰</th>
		<th>이메일</th>
		<th>가입일</th>
		<th>구독여부</th>
		<th>질환</th>
		<th>생년월일</th>
		<th>키</th>
		<th>몸무게</th>
		<th>마지막정보수정일</th>
	</tr>
	<c:if test="${not empty message}">
	<tr>
		<th colspan=11>${message}</th>
	</tr>
	</c:if>
	
	<c:forEach items="${list}" var="User">
		<tr>
			<th>${User.userId}</th>
			<th>${User.userName}</th>
			<th>${User.phone}</th>
			<th>${User.email}</th>
			<th>${User.entryDate}</th>
			<th>${User.subscribeYn}</th>
			<th>${User.diseaseNo}</th>
			<th>${User.birth}</th>
			<th>${User.height}</th>
			<th>${User.weight}</th>
			<th>${User.lastUpdate}</th>
		</tr>
	</c:forEach>
</table>
</c:if>


</body>
</html>