<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴</title>
<link rel="stylesheet" href="../css/delete.css"/>
</head>
<body>
<div class="wrapper">
	<c:import url="../inc/header.jsp"></c:import>
		<main id="main">
			<!-- 화면에 보여질 콘텐츠 박스 --> 
			<div class="inner">
				<!-- flexbox -->
				<article class="main-container">
					<h2>탈퇴</h2>
					<section class="item item1">
						
						<div class="delete-form">
							<form action="/user/delete" method="post">
								<div class="input-key">
									<input type="text" size="40" name="userId" required="required" autofocus="autofocus" placeholder="아이디를 입력해주세요"/>
								</div>
								
								<div class="input-key">
									<input type="password" size="40" name="userPw" required="required" placeholder="비밀번호를 입력해주세요"/>
								</div>
	
								<div class="delete-box">
									<input type="submit" class="delete-button" value="탈퇴" />
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