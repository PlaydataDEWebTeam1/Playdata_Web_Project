<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 조회</title>
</head>
<body>
<div>${dto.subject}</div>
<div>${dto.regDate}</div>
<div>${dto.writer}</div>
<div>${dto.content}</div>
<input type="button" value="수정" />
<input type="button" value="삭제" />
</body>
</html>