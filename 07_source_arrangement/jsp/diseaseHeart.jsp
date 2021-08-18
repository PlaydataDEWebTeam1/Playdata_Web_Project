<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질병 | 심장질환</title>
<link type="text/css" rel="stylesheet" href="../css/disease.css">
</head>
<body>
	<div class="wrapper">
		<c:import url="../inc/header.jsp"></c:import>
			<main id="main">
				<a href="../diseaseInfo">
					<img src="../img/2_Heart.png" class="exampleImg" alt="심장질환이미지" style="width:200px;height:200px;"/>
				</a>
				
				<h1>심장질환 발생원인과 대표 질환</h1>
				
				<table class="exampleDisease">
					<thead>
				    <tr>
				        <th colspan="2" scope="cols">대표질환</th>
				    </tr>
				    <tr>
				    	<th scope="cols">고혈압</th>
				    	<th scope="cols">심근경색</th>
				    </tr>
				    </thead>
				    <tbody>
				    <tr>
				    	<td class="disease-info">
				    		 고혈압은 18세 이상의 성인에서 수축기 혈압이 140mmHg 이상이거나 이완기 혈압이 90mmHg 
				    		이상인 경우를 일컫습니다.
				    		고혈압은 크게 두 가지로 분류할 수 있는데 본태성(일차성) 고혈압과 이차성 고혈압입니다.
				    		본태성 고혈압은 원인 질환이 발견되지 않은 경우에 발생하며, 전체 고혈압 환자의 95%를 차지하며
				    		생활 습관 개선이 예방에 있어 중요한 역할을 합니다. 
							반면, 이차성 고혈압은 기저 질환으로 인해 발생하는 고혈압으로, 원인 질환 제거 시 완치 가능성도 
							있습니다.
				    	</td>
				    	
				    	<td class="disease-info">
				    		 심장은 크게 3개의 심장혈관(관상동맥)에 의해 산소와 영양분을 받고 활동을 합니다.
				    		그런데 이 3개의 심장혈관(관상동맥)중 하나라도 혈전증이나 혈관의 빠른 수축등에 의하여 급성으로 
				    		막히게 되면, 심장의 전체 또는 일부분에 산소와 영양공급이 줄어 심장 근육의 조직이나 세포가 
				    		괴사되게 됩니다. 
							이러한 증상을 심근경색이라고 합니다. 	
				    	</td>
				    </tr>
				    </tbody>
				</table>
				
				<br>
				<br>
				
				<h1>심장질환에 도움이 되는 음식과 피해야 할 음식</h1>
				
				<table class="exampleFood">
				    <tr>
				        <th class="help">도움이 되는 음식</th>
				        <th class="escape">피해야 할 음식</th>
				    </tr>
				    <tr>
				    	<td class="food-info">
							<ul>
								<li class="helpFood">콩, 감자, 오메가-3 지방산 풍부한 생선
							</ul>
				    	</td>
				    	<td class="food-info">
				    		<ul>
								<li class="escapeFood">가공육, 가당 음료, 나트륨 많은 음식
							</ul>
				    	</td>
				    </tr>
				</table>
			</main>
		<c:import url="../inc/footer.jsp"></c:import>
	</div>
</body>
</html>