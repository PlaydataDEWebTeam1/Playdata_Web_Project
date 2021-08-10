<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
</head>
<body>
<jsp:include page="../inc/header.jsp"/>

<h3>회원가입</h3>
<form action="/user/join" method="post">
	<div>필수입력정보</div>
	<input type="text" name="userId" autofocus="autofocus" placeholder="아이디 6~30자리"/>
	<input type="password" name="userPw" required="required" placeholder="비밀번호 6~20자리"/>
	<input type="text" name="userName" required="required" placeholder="이름" />
	<input type="text" name="phone" required="required" placeholder="휴대폰 010-1234-1234" />
	<input type="text" name="email" required="required" placeholder="이메일"/>
	
	<div>선택입력정보</div>
	<select name="diseaseNo">
		<option value="00">질병선택</option>
		<option value="01">당뇨</option>
		<option value="02">간질환</option>
		<option value="03">심장질환</option>
		<option value="04">신장질환</option>
		<option value="05">뇌질환</option>
		<option value="06">암</option>
	</select>
	<input type="date" name="birth" />
	<input type="text" name="height" placeholder="키(cm)"/>
	<input type="text" name="weight" placeholder="체중(kg)"/>
	
	<input type="submit" value="가입" />
	<input type="reset" value="취소" />
</form>

</body>
</html>