<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글목록</title>
</head>
<body>

<table>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	
	<c:forEach var="Board" items="${list}">
	<tr>
		<th>${Board.bno}</th>
		<th><a href="boardDetail?bno=${Board.bno}">${Board.subject}</a></th>
		<th>${Board.writer}</th>
		<th>${Board.regDate}</th>
	</tr>
	</c:forEach>
</table>
<a href="boardWritingForm">글쓰기</a>
</body>
</html>