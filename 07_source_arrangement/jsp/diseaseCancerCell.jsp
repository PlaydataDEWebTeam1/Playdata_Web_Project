<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질병 | 암</title>
<link type="text/css" rel="stylesheet" href="../css/disease.css">
</head>
<body>
	<div class="wrapper">
		<c:import url="../inc/header.jsp"></c:import>
			<main id="main">
				<a href="../diseaseInfo">
					<img src="../img/5_CancerCell.png" class="exampleImg" alt="암세포이미지" style="width:200px;height:200px;"/>
				</a>
				
				<h1>암 발생원인과 대표 질환</h1>
				
				<table class="exampleDisease">
					<thead>
				    <tr>
				        <th colspan="2" scope="cols">대표질환</th>
				    </tr>
				    <tr>
				    	<th scope="cols">폐암</th>
				    	<th scope="cols">위암</th>
				    </tr>
				    </thead>
				    <tbody>
				    <tr>
				    	<td class="disease-info">
				    		 흡연은 폐암의 가장 큰 발병 요인입니다. 
							흡연자는 비흡연자에 비해 폐암에 걸릴 위험이 15~80배까지 증가하는 것으로 알려져 있습니다. 
							대기 오염 등의 환경 요인도 폐암 발병과 관련이 있습니다. 
							한편 직업에 따라 석면이나 크롬 등의 물질에 노출되는 것이 폐암의 원인으로 지적되기도 합니다. 
							이러한 물질의 노출에 흡연 습관이 더해지면 폐암이 발생할 가능성이 높아진다고 알려져 있습니다. 
							이외에 유전적 요인, 호흡기 질환의 과거력이 폐암의 유발 요인이 됩니다.
				    	</td>
				    	
				    	<td class="disease-info">
				    		 위암이 생기는 직접적인 원인에 대하여 정확히 밝혀진 것은 아직 없지만 섭취하는 음식이 가장 중요한 
				    		것으로 생각하고 있습니다. 
							위암 발생을 높이는 위험 요인의 식품으로는 염장 또는 훈제 식품, 질산, 아질산염 가공식품이나 
							그 함량이 높은 채소류 또는 식수, 그리고 맵고 짠 음식 등이 있습니다. 
							위 점막에 거주하는 헬리코박터 균 또한 위암 발생에 중요한 역할을 하는 것으로 알려져 있으며 
							위암을 일으킬 수 있는 전구 질환들로는 선종성 용종, 장상피화생, 만성 위축성 위염, 악성 빈혈 등이 있습니다. 
							그 외에도 가족력이나 흡연, 방사선 노출, 위절제술 과거력 등이 위암의 위험성을 증가시킬 수 있습니다.
				    	</td>
				    </tr>
				    </tbody>
				</table>
				
				<br>
				<br>
				
				<h1>암에 도움이 되는 음식과 피해야 할 음식</h1>
				
				<table class="exampleFood">
				    <tr>
				        <th class="help">도움이 되는 음식</th>
				        <th class="escape">피해야 할 음식</th>
				    </tr>
				    <tr>
				    	<td class="food-info">
							<ul>
								<li class="helpFood">통밀, 해조류, 지방 제거한 살코기
							</ul>
				    	</td>
				    	<td class="food-info">
				    		<ul>
								<li class="escapeFood">알코올, 가공육, 매운 음식
							</ul>
				    	</td>
				    </tr>
				</table>
			</main>
		<c:import url="../inc/footer.jsp"></c:import>
	</div>
</body>
</html>