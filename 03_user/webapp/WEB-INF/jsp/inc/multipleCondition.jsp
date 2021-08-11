<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="multipleCondition" method="get">
<select name="searchCondition">
<option value="userId">아이디</option>
<option value="subscribeYn">구독여부</option>
<option value="phone">휴대폰(뒷번호4자리)</option>
<option value="email">이메일</option>
<option value=userName">이름</option>
</select>
<input type="text" name="searchKeyword" />
<input type="submit" value="검색" />
</form>
</body>
</html>