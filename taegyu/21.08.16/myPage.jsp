<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="../css/myPage.css"/>
</head>
<body>
	<div class="wrapper">
		<c:import url="../inc/header.jsp"></c:import>
		<main id="main">
			<!-- 화면에 보여질 콘텐츠 박스 --> 
			<div class="inner">
				<!-- flexbox -->
				<article class="main-container">
					<h2>마이 페이지</h2>
					<div class="userList-button">
						<c:if test="${loginType}=='A'" >
							<button class="userList" onclick="location.href='/user/userList'">전체회원목록</button>
						</c:if>
					</div>
					
					<div class="space"></div>
					
					<div class="userInfo-button">
						<button class="userInfo" onclick="location.href='/user/userInfo'">내정보조회</button>
					</div>
					
					<div class="space"></div>
					
					<div class="withdraw-button">
						<button class="withdraw" onclick="location.href='/user/deleteForm'">탈퇴</button>
					</div>
					
					<div class="space"></div>
				</article>
			</div>
		</main>
	</div>
</body>
</html>