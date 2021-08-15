<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>먹어도돼</title>
<link rel="stylesheet" href="../css/login.css"/>

</head>
<body>
	<div class="wrapper">
		<c:import url="../inc/header.jsp"></c:import>
		<main id="main">
			<!-- 화면에 보여질 콘텐츠 박스 --> 
			<div class="inner">
				<!-- flexbox -->
				<article class="main-container">
					<h2>비밀번호 찾기</h2>
					
					<section class="item item1">
						<h3  style="display:none">로그인 폼</h3>
						
						<div class="login-form">
							<form action="/findPw" method="post">
								<div class="input-key">
									<input type="text" size="40" name="userId" placeholder="계정에 등록된 아이디를 입력해주세요"/>
								</div>
								
								<div class="input-key">
									<input type="text" size="40" name="userName" placeholder="계정에 등록된 이름을 입력해주세요"/>
								</div>
								
								<div class="input-key">
									<input type="text" size="40" name="phone" placeholder="계정에 등록된 전화번호를 입력해주세요"/>
								</div>
								
								<div class="login-box">
									<button class="login-button">비밀번호 찾기</button>
								</div>
								<div class="join-box">
								<button type="button" class="join-button" onclick="location.href='/user/loginForm'">로그인</button>
							</div>								
							</form>									
						</div>
						
					</section>
				</article>
			</div>
		</main>
		<c:import url="../inc/footer.jsp"></c:import>	
	</div>
</body>
</html>