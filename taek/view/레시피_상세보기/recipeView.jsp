<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/recipeView.css"/>
</head>
<body>
	<div class="wrapper">
		<c:import url="inc/header.jsp"></c:import>
		<main id="main">
			<div class="inner">
				<div class="main-container">
				
					<div class="author-content">
						<h1 class="recipe-title">들깨 곤약냉채</h1>
						 <span class="">작성자 : 이택근</span>
					</div>
					
					<div class="recipe-view">
						<img src="../main_img/1.들깨 곤약냉체.png" alt=""/>
						<div class="recipe-detail">
							<!-- 영양소 -->
							<div class="image-nut-content">
								<span class="nut">영양성분</span><br/>
								<span class="kcal">1인분 기준 : 열량 124Kcal,탄수화물 : 10.2g, 단백질 14.3g, 지방 2.9g, 나트륨 52.2mg</span>
							</div>
							
							<!-- 재료 -->
							<div class="ingredient">
								<span class="nut">재료</span><br/>
								닭가슴살,곤약면,파프리카,양파,오이,당근,들깻가루,겨잣가루,식초,올리고당,소금,간장
							</div>
							
							<div class="recipe-step">
								<span class="nut">순서</span><br/>
								1. 닭가슴살은 끓는 물에 7분간 삶아 건진뒤 결대로 찢는다. 파프리카,양파,오이,당근은 채썬다.<br><br>
								2.곤약면은 끓는 물에 살짝 데쳐 건진 뒤 찬물에 씻어 체에 받쳐 물기를 제거한다.<br><br>
								3.들깻가루,겨잣가루,식초 올리고당, 소금 간장을 섞어 들꺠소스를 만든다. <br><br>
								4.곤약면에 삶은 닭가슴살,채 썬 채소,들깨소스를 넣어 버무려낸다.<br><br>
								4.곤약면에 삶은 닭가슴살,채 썬 채소,들깨소스를 넣어 버무려낸다.<br><br>
								4.곤약면에 삶은 닭가슴살,채 썬 채소,들깨소스를 넣어 버무려낸다.<br><br>
								4.곤약면에 삶은 닭가슴살,채 썬 채소,들깨소스를 넣어 버무려낸다.
							</div>
						</div>
					</div>
					<div class="recipe-control">
						<div class="control-btn">
							<span>등록일 :</span> <span class="date">2021.08.14</span>
						</div>
						<div class="author">
						    <button>수정</button>
							<button>삭제</button>
							<button>목록</button>
						</div>
					</div>
					
					<div class="comment-box">
						<div class="comment-tit">
							<span>댓글</span>
							<span class="comment-count">5</span>
						</div>

						
						<div class="comment-body">
						<!-- 작성자, 작성일 -->
							<div class="comment-head">
								<span>이택근</span>
								<span>2021-08-14</span>
							</div>
						<!-- 댓글 내용  -->	
							<div class="comment-content">
								맛있네요 ^^ 잘 먹었습니다 
							</div>
						</div>
						
						<div class="comment-body">
						<!-- 작성자, 작성일 -->
							<div class="comment-head">
								<span>이희원</span>
								<span>2021-08-14</span>
								
								<span>
									답글
								</span>
								
								<span class="comment-modify">
									|&nbsp;수정
								</span>
								<span class="comment-delete">
									|&nbsp;삭제
								</span>
								
							</div>
						<!-- 댓글 내용  -->	
							<div class="comment-content">
								킹왕짱~
								대박 감동이에요
								너무 맛있어요~~
								감사합니당~^^
							</div>
						</div>
						
						<div class="comment-body">
						<!-- 작성자, 작성일 -->
							<div class="comment-head">
								<span>김기영</span>
								<span>2021-08-14</span>
							</div>
						<!-- 댓글 내용  -->	
							<div class="comment-content">
								맛있을 것 같아요^^
								색깔도 이쁘구요~
								감사합니다~
							</div>
						</div>
						
						<div class="comment-body">
						<!-- 작성자, 작성일 -->
							<div class="comment-head">
								<span>이태규</span>
								<span>2021-08-14</span>
							</div>
						<!-- 댓글 내용  -->	
							<div class="comment-content">
								레시피 감사드립니다
								꼭!! 요리해서 가족들 깜짝 놀래게
								해줘야겠네요
								요리해서 올릴께요
							</div>
						</div>
						
						<div class="comment-body">
						<!-- 작성자, 작성일 -->
							<div class="comment-head">
								<span>문수인</span>
								<span>2021-08-14</span>
							</div>
						<!-- 댓글 내용  -->	
							<div class="comment-content">
								물엿과 캐첩은 맨마지막에 하는거 맞죠? 간장, 청주랑 소주 식초는 조림할때하구요.. 대박 맛있겠네요 ㅎㅎ 일단 레시피만 배우고 나중에 혹시라도 혼자살경우 생기게되면 써먹어야겠네요..^^
							</div>
						</div>
						
						<div class="comment-write">
							<textarea rows="5" cols="80" placeholder="후기를 남겨주세요"></textarea>
							<span class="write-btn">
								<button>
									등록
								</button>
							</span>
						</div>
						
						
						
					</div>
					
				</div>
			</div>
			
			    <!--모달창 : hidden-->
			    <div id="my_modal" class="new-modal">
			    	<span class="modal-title">댓글을 삭제하시겠습니까?</span>
			        <div class="modal_para">
			            <div><button  id="delete-comment" class="modal-fnc-btn">삭제</button></div>
			            <div><button  id="cancel-comment" class="modal-cancel-btn">취소</button></div>  
			        </div>
			        <a class="modal_close_btn">X</a>
			    </div>
			    
			    <div id="update-modal" class="new-modal">
			    	<span class="modal-title">댓글수정</span>
			    	<div class="modal-input-box"><input type="text" class="modal-input" size="40"/> </div>
			        <div class="modal_para">
			            <div><button class="modal-fnc-btn" id="modify-comment">수정</button></div>
			            <div><button class="modal-cancel-btn" id="cancel-comment">취소</button></div>  
			        </div>
			        <a class="modal_close_btn">X</a>
			    </div>
			    
			    
		</main>
		<c:import url="inc/footer.jsp"></c:import>
	</div>
	
	<script>
		
		var cmModifyBtn = document.querySelector(".comment-modify");
		var cmDeleteBtn = document.querySelector(".comment-delete");
		
	
		//삭제 버튼 
	    cmDeleteBtn.addEventListener('click',() => {
	        modal('my_modal');
	    });
		
		//수정 버튼 
		cmModifyBtn.addEventListener('click',() => {
			modal('update-modal');
		});
		
		
		
	    function modal(id) {
	        /*화면 맨위로 */
	        var zIndex = 9999;
	        /* 숨겨진 div 가져옴 */
	        var modal = document.getElementById(id);

	        // 모달 div 뒤에 희끄무레한 레이어
	        var bg = document.createElement('div');
	        bg.setStyle({
	            position: 'fixed',
	            zIndex: zIndex,
	            left: '0px',
	            top: '0px',
	            width: '100%',
	            height: '100%',
	            overflow: 'auto',
	            // 레이어 색갈은 여기서 바꾸면 됨
	            backgroundColor: 'rgba(0,0,0,0.4)'
	        });

	        /* 전체 배경 수정 */
	        document.body.append(bg);

	        document.querySelector(".modal_close_btn").style.cursor = 'pointer';

	        /* 스크롤 무력화 */
	        document.body.style.overflow = 'hidden';

	        // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
	        modal.querySelector('#cancel-comment').addEventListener('click', function() {
	            bg.remove();
	            document.body.style.overflow = ''

	            modal.setStyle({
	                display : 'none',

	            })
	        });
	        
	        // 취소버튼 
	        modal.querySelector('.modal_close_btn').addEventListener('click', function() {
	            bg.remove();
	            document.body.style.overflow = ''

	            modal.setStyle({
	                display : 'none',

	            })
	        });
	        
	        
	        
	        if(id == "update-modal"){
		        //수정 버튼 
		        modal.querySelector('#update-modal #modify-comment').addEventListener('click', function() {
		        	alert("??");
		        });
	        }
	        
	        //삭제버튼
	        if(id == "my_modal"){
		        //수정 버튼 
		        modal.querySelector('#my_modal #delete-comment').addEventListener('click', function() {
		        	alert("??");
		        });
	        }
	        

	        modal.setStyle({
	            position: 'fixed',
	            display: 'block',
	            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

	            // 시꺼먼 레이어 보다 한칸 위에 보이기
	            zIndex: zIndex + 1,

	            // div center 정렬
	            top: '50%',
	            left: '50%',
	            transform: 'translate(-50%, -50%)',
	            msTransform: 'translate(-50%, -50%)',
	            webkitTransform: 'translate(-50%, -50%)'
	        });
	    }
	    

	    /* CSS 셋팅 */
	    Element.prototype.setStyle = function(styles) {
	        for (var k in styles) this.style[k] = styles[k];
	        return this;
	    };
	
	
	</script>
</body>
</html>