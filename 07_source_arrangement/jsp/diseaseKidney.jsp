<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질병 | 신장질환</title>
<link type="text/css" rel="stylesheet" href="../css/disease.css">
</head>
<body>
	<div class="wrapper">
		<c:import url="../inc/header.jsp"></c:import>
			<main id="main">
				<a href="../diseaseInfo">
					<img src="../img/4_Kidney.png" class="exampleImg" alt="신장질환이미지" style="width:200px;height:200px;"/>
				</a>
				
				<h1>신장질환 발생원인과 대표 질환</h1>
				
				<table class="exampleDisease">
					<thead>
				    <tr>
				        <th scope="cols">대표질환</th>
				    </tr>
				    <tr>
				    	<th scope="cols">급성 신부전</th>
				    </tr>
				    </thead>
				    <tbody>
				    <tr>
				    	<td class="disease-info">
				    		 급성 신부전이란 원인과 관계없이 신장 기능이 수시간에서 수일 내로 갑자기 떨어지는 것을 말합니다. 
							신장 기능이 떨어지면 정상적으로 노폐물이 배설되는 것이 어려워지고, 그 결과 몸 속에 노폐물이 축적되고, 
							수분과 전해질의 균형이 깨지게 됩니다.
							원인은 크게 세 가지로 나누어 볼 수 있습니다.
							첫째, 신장으로 가는 혈액량(수분)이 감소되는 경우로 심한 탈수, 쇼크, 출혈, 심한 구토나 설사, 심부전, 
							저혈압 등으로 인해 혈류량이 감소할 수 있습니다. 
							둘째, 신장 자체에 병이 생긴 경우로 신장에 사구체 질환, 세뇨관 질환, 신혈관질환 등의 질환이 생기는 
							경우를 말합니다. 
							마지막으로 신장에서는 정상적으로 소변이 만들어지나 만들어진 소변의 배출 경로에 문제가 생긴 경우입니다. 
							요로결석이나 종양 등으로 요로가 막히는 경우에 신부전을 일으킬 수 있습니다.
				    	</td>
				    </tr>
				    </tbody>
				</table>
				
				<br>
				<br>
				
				<h1>신장질환에 도움이 되는 음식과 피해야 할 음식</h1>
				
				<table class="exampleFood">
				    <tr>
				        <th class="help">도움이 되는 음식</th>
				        <th class="escape">피해야 할 음식</th>
				    </tr>
				    <tr>
				    	<td class="food-info">
							<ul>
								<li class="helpFood">양파, 양배추, 아스파라거스
							</ul>
				    	</td>
				    	<td class="food-info">
				    		<ul>
								<li class="escapeFood">밀가루, 정제염, 동물성 식품
							</ul>
				    	</td>
				    </tr>
				</table>
			</main>
		<c:import url="../inc/footer.jsp"></c:import>
	</div>
</body>
</html>