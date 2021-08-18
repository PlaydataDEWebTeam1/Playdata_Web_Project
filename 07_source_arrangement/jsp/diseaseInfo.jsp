<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질병 정보</title>
<link type="text/css" rel="stylesheet" href="../css/disease.css">
</head>
<body>
	<div class="wrapper">
		<c:import url="../inc/header.jsp"></c:import>
			<main id="main">
				 <!-- Main content -->
				<section class="content">
					<div class="container">
						<content class="col-md-1 col-lg-1 col-sm-1">
							<div class="overlay">뇌질환</div>
						 		<a href="/disease/diseaseBrain">
							 		<img src="../img/1_Brain.png" class="img-fluid mb-2"/>
						       	</a>
				
						</content>
						
						<div class="itemSpace"></div>
						
							<aside class="col-md-1 col-lg-1 col-sm-1">
								<div class="overlay">심장질환</div>
							    	<a href="/disease/diseaseHeart">
							        	<img src="../img/2_Heart.png" class="img-fluid mb-2"/>
							      	</a>
							</aside>
						
						<div class="itemSpace"></div>
						
							<aside class="col-md-1 col-lg-1 col-sm-1">
								<div class="overlay">간질환</div>
							    	<a href="/disease/diseaseLiver">
							        	<img src="../img/3_Liver.png" class="img-fluid mb-2"/>
							    	</a>
							</aside>
					</div><!-- container -->
					
					<div class="container-space"></div>
					
					<div class="container">
						<content class="col-md-1 col-lg-1 col-sm-1">
							<div class="overlay">신장질환</div>
					    		<a href="/disease/diseaseKidney">
						    		<img src="../img/4_Kidney.png" class="img-fluid mb-2"/>
					        	</a>
					    </content>
					    
						<div class="itemSpace"></div>
						
							<aside class="col-md-1 col-lg-1 col-sm-1">
								<div class="overlay">암</div>
						        	<a href="/disease/diseaseCancerCell">	        	
							        	<img src="../img/5_CancerCell.png" class="img-fluid mb-2"/>
							        </a>
						    </aside>
						    
						<div class="itemSpace"></div>
						
						    <aside class="col-md-1 col-lg-1 col-sm-1">
						    	<div class="overlay">당뇨병</div>
						        	<a href="/disease/diseaseDiabetes">
							        	<img src="../img/6_Diabetes.png" class="img-fluid mb-2"/>
							    	</a>
						    </aside>
					</div><!-- container -->
				</section>
			</main>
		<c:import url="../inc/footer.jsp"></c:import>
	</div><!-- wrapper -->
</body>
</html>