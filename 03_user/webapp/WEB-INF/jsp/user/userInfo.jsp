<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>먹어도돼</title>
<link rel="stylesheet" href="../css/userInfo.css"/>

</head>
<body>
	<div class="wrapper">
		<c:import url="../inc/header.jsp"></c:import>
		<main id="main">
			<!-- 화면에 보여질 콘텐츠 박스 --> 
			<div class="inner">
				<!-- flexbox -->
				<article class="main-container">
					<h2>내정보조회</h2>
					<section class="item item1">
						<h3  style="display:none">내정보조회및수정</h3>
						<div class="join-form">
							<form action="/user/join" method="post" name="join" modelAttribute="dto">
								
								<table class="input-table">
									<tr>
										<th>
											아이디
										</th>
										<td>
                        					<input type="text" id="userId" value="${dto.userId}" readOnly=readOnly autofocus="autofocus" size="40">
										</td>
									</tr>
									
									<tr>
										<th>
											비밀번호
										</th>
										<td>
                        					<input type="password" id="user-password" value="${dto.userId}" size="40" name="userPw">
										</td>
									</tr>									
									<tr>
										<th>
											이름
										</th>
										<td>
                        					<input type="text" id="user-name" value="${dto.userName}" name="userName" size="40">
										</td>
									</tr>
									<tr>
										<th>
											이메일
										</th>
										<td>
                        					<input type="text" id="email" name="email" value="${dto.email}" size="40">
										</td>
									</tr>
									<tr>
										<th>
											휴대폰
										</th>
										<td>
                        					<input type="text" id="phone" name="phone" value="${dto.phone}" size="40">
										</td>
										<td>
											<button class="overlap-button">인증번호 받기</button>
										</td>
									</tr>
									<tr>
										<th>
											생년월일
										</th>
										<td>
                        					<div class="birth-box">
                        						<input type="text" id="birth" name="birth-year" size="40">
                        					</div>
										</td>
									</tr>
									<tr>
										<th>
											키
										</th>
										<td>
                        					<input type="text" id="height" name="height" size="40" value="${dto.height}">
										</td>
									</tr>
									<tr>
										<th>
											몸무게
										</th>
										<td>
                        					<input type="text" id="weight" name="weight" size="40" value="${dto.weight}">
										</td>
									</tr>
									<tr class="disease">
										<th>
											질병
										</th>
										<td>
                        					<c:choose>
												<c:when test="${dto.diseaseNo == '00'}">
													<select name="diseaseNo">
														<option value="00">해당없음</option>
														<option value="01">당뇨</option>
														<option value="02">간질환</option>
														<option value="03">심장질환</option>
														<option value="04">신장질환</option>
														<option value="05">뇌질환</option>
														<option value="06">암</option>
													</select>
												</c:when>
												<c:when test="${dto.diseaseNo == '01'}">
													<select name="diseaseNo">
														<option value="01">당뇨</option>
														<option value="02">간질환</option>
														<option value="03">심장질환</option>
														<option value="04">신장질환</option>
														<option value="05">뇌질환</option>
														<option value="06">암</option>
														<option value="00">해당없음</option>
													</select>
												</c:when>
												<c:when test="${dto.diseaseNo == '02'}">
													<select name="diseaseNo">
														<option value="02">간질환</option>
														<option value="01">당뇨</option>
														<option value="03">심장질환</option>
														<option value="04">신장질환</option>
														<option value="05">뇌질환</option>
														<option value="06">암</option>
														<option value="00">해당없음</option>
													</select>
												</c:when>
												<c:when test="${dto.diseaseNo == '03'}">
													<select name="diseaseNo">
														<option value="03">심장질환</option>
														<option value="01">당뇨</option>
														<option value="02">간질환</option>
														<option value="04">신장질환</option>
														<option value="05">뇌질환</option>
														<option value="06">암</option>
														<option value="00">해당없음</option>
													</select>
												</c:when>
												<c:when test="${dto.diseaseNo == '04'}">
													<select name="diseaseNo">
														<option value="04">신장질환</option>
														<option value="01">당뇨</option>
														<option value="02">간질환</option>
														<option value="03">심장질환</option>
														<option value="05">뇌질환</option>
														<option value="06">암</option>
														<option value="00">해당없음</option>
													</select>
												</c:when>
												<c:when test="${dto.diseaseNo == '05'}">
													<select name="diseaseNo">
														<option value="05">뇌질환</option>
														<option value="01">당뇨</option>
														<option value="02">간질환</option>
														<option value="03">심장질환</option>
														<option value="04">신장질환</option>
														<option value="06">암</option>
														<option value="00">해당없음</option>
													</select>
												</c:when>
												<c:when test="${dto.diseaseNo == '06'}">
													<select name="diseaseNo">
														<option value="06">암</option>
														<option value="01">당뇨</option>
														<option value="02">간질환</option>
														<option value="03">심장질환</option>
														<option value="04">신장질환</option>
														<option value="05">뇌질환</option>
														<option value="00">해당없음</option>
													</select>
												</c:when>
											</c:choose>
										</td>
									</tr>					
								</table>
								<div class="submit-box">
									<div class="join-box">
										<button class="join-button" onClick="location.href='/user/updateUserInfo'">수정</button>
									</div>
								</div>
							</form>
							<div class="cancel-box">
								<button class="cancel-button" onClick="location.href='/user/deleteForm'">탈퇴</button>
							</div>										
						</div>
					</section>
				</article>
			</div>
		</main>
		<c:import url="../inc/footer.jsp"></c:import>	
	</div>
</body>
</html>