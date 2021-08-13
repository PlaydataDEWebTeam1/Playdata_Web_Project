<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>먹어도돼</title>
</head>
<body>
	
	<div class="wrapper">
		<c:import url="inc/header.jsp"></c:import>
		
		<!--이미지 섹션-->
		<section class="image-sec">
			<div class="image-container"></div>
		</section>
		<script>
		 $(function(){
			        $('.image-sec').click(function() {
			          self.location ="/readView?bno=65";
			        });
			      });
		 </script>
		<!---------------------------------------------------메인-->
		<main id="main">
			<div class="inner">
				<div class="main-container">
				
					<div class="nav-food">
						<ul class="food-list">
							<figure>
							<li class="food-card"><a href="/readView?bno=65"> 
							<img src="../main_img/1.들깨 곤약냉체.png" alt="들깨 곤약냉채"
									class="food-image">
									<div class="overlay">
						         		<div class="description">
						         			들깨 곤약냉채
						         		</div>
						       		</div>
							</a></li>
							</figure>
							
							<figure>
							<li class="food-card"><a href="/readView?bno=64"> 
								<img src="../main_img/2.홍합배춧국.png" alt="홍합배춧국"
									class="food-image">
									<div class="overlay">
						         		<div class="description">
						         			홍합 배춧국
						         		</div>
						       		</div>
							</a></li>
							</figure>
							
							<figure>
							<li class="food-card"><a href="/readView?bno=63">
								 <img src="../main_img/3.가지탕수육.png" alt="가지탕수육"
									class="food-image">
									<div class="overlay">
						         		<div class="description">
						         			가지 탕수육
						         		</div>
						       		</div>
							</a></li>
							</figure>
							
							<figure>
							<li class="food-card"><a href="/readView?bno=62" > 
								<img src="../main_img/4.돈불고기 파인애플볶음.png" alt="돈불고기 파인애플볶음" 
								class="food-image">
								<div class="overlay">
						        	<div class="description">
						         		돈불고기      파인애플      볶음
						         	</div>
						       	</div>
							</a></li>
							</figure>
						</ul>
					</div>

					<div class="nav-food">
						<ul class="food-list">
							<figure>
							<li class="food-card"><a href="/readView?bno=61">
								<img src="../main_img/5.얼큰콩나물수제비.png" alt="얼큰콩나물수제비"
									class="food-image">
									<div class="overlay">
										<div class="description">
						         		얼큰 콩나물 수제비
						         		</div>
						         	</div>
							</a></li>
							</figure>
							
							<figure>
							<li class="food-card"><a href="/readView?bno=60">
								 <img src="../main_img/6. 토마토 비빔국수.png" alt="토마토 비빔국수"
									class="food-image">
									<div class="overlay">
										<div class="description">
							         		토마토 비빔국수
							         	</div>
							         </div>
							</a></li>
							</figure>
								
							<figure>
							<li class="food-card"><a href="/readView?bno=59">
								 <img src="../main_img/7.연근튀김.png" alt="연근튀김"
									class="food-image">
									<div class="overlay">
										<div class="description">
							         		연근 튀김
							         	</div>
							         </div>
							</a></li>
							</figure>
		
							<figure>
							<li class="food-card"><a href="/readView?bno=58"> 
								<img src="../main_img/8.바지락매생이전.png" alt="바지락매생이전" 
								class="food-image">
									<div class="overlay">
										<div class="description">
								         	바지락 매생이전
								        </div>
								    </div>
							</a></li>
							</figure>
						</ul>
					</div>
	
	
					<div class="nav-food">
						<ul class="food-list">
							<figure>
							<li class="food-card"><a href="/readView?bno=57">
								<img src="../main_img/9.과일깍두기.png" alt="과일깍두기"
									class="food-image">
									<div class="overlay">
										<div class="description">
								         	과일 깍두기
								        </div>
								    </div>
							</a></li>
							</figure>
							
							<figure>
							<li class="food-card"><a href="/readView?bno=56">
							   <img src="../main_img/10.통도라지 양념구이.png" alt="통도라지 양념구이"
									class="food-image">
									<div class="overlay">
										<div class="description">
								         	통도라지 양념구이
								        </div>
								    </div>
							</a></li>
							</figure>
							
							<figure>
							<li class="food-card"><a href="/readView?bno=55">
								<img src="../main_img/11.청경채 김치.png" alt="청경채 김치"
									class="food-image">
									<div class="overlay">
										<div class="description">
								         	청경채 김치
								        </div>
								    </div>
							</a></li>
							</figure>
							
							<figure>
							<li class="food-card"><a href="/readView?bno=53" > 
								<img src="../main_img/12.낙지 묵은지 콩나물국.png" alt="낙지 묵은지 콩나물국" 
								class="food-image">
									<div class="overlay">
										<div class="description">
								         	낙지 묵은지 콩나물국
								        </div>
								    </div>
							</a></li>
							</figure>
						</ul>
					</div>
				</div>
			</div>
		</main>
		<c:import url="inc/footer.jsp"></c:import>
	</div>

</body>
</html>