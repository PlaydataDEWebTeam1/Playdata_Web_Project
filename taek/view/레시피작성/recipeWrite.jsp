<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/recipeWrite.css" />
</head>
<body>
	<div class="wrapper">
		<c:import url="inc/header.jsp"></c:import>
		<main id="main">
			<div class="inner">
				<div class="main-container">
					<div class="recipe-register">
						<h1>레시피 등록</h1>
						
						<form action="" method="">
							<div class="line title">
								<span>레시피 제목</span>
								<input type="text" placeholder="제목을 입력해주세요" size="60"/>
							</div>
	
							<div class="line description">
								<span>요리소개</span>
								<textarea cols="60" rows="7" placeholder="요리소개를 해주세요"></textarea>
							</div>
							
							<div class="line nutrient">
								<span>영양성분</span>
								
								<div class="kcal-na">
									<span>칼로리</span>
									<input type="text" placeholder="Kcal"/>
									
									<span>나트륨</span>
									<input type="text" placeholder="mg"/>
	
									<span>탄수화물</span>
									<input type="text" placeholder="g"/>
									
									<span>단백질</span>
									<input type="text" placeholder="g"/>
									
									<span>지방</span>
									<input type="text" placeholder="g"/>
								</div>
							</div>
							
							
							<div class="line ingredient">
								<span>재료</span>
								<input type="text" placeholder="예)토마토 반쪽, 계란 2개, 두부 반모, 고추장 두스푼" size="60"/>							
							</div>	
							<div class="line step">
								<span>요리순서</span>
								<textarea cols="60" rows="10" placeholder="요리순서를 입력해주세요"></textarea>
							</div>	
							
							<div class="line file">
								<span>이미지</span>
								<input type="file" class="file-button"/>
								<span class="file-trigger-button">이미지 선택</span>
							</div>	
							
							<div class="button-box">
								<button class="join-button">등록하기</button>
							</div>
						</form>
						
						<div class="cancel-box">
							<button class="cancel-button">레시피목록</button>
						</div>
					</div>
				</div>
			</div>
		</main>
		<c:import url="inc/footer.jsp"></c:import>
	</div>
	
	<script>
		var fileSection = document.querySelector(".line.file");
		var fileBtn = fileSection.querySelector(".file-button");
		var fileTriggerBtn = fileSection.querySelector(".file-trigger-button");
		
		var file = fileBtn.files;
		
		fileTriggerBtn.onclick = function(){
			var event = new MouseEvent("click",{
				'view' : window,
				'bubbles' : true,
				'cancelable' : true
			});
			fileBtn.dispatchEvent(event);
		}
		
		fileBtn.onchange = function(){
			var files = fileBtn.files;
			fileSection.append(files[0].name);
		}
	</script>
	
</body>
</html>