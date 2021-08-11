/**
 * 페이지가 열리자마자 실행되는 js
 */
$(document).ready(function() {
	
	GetList(1);
	/* 카드가 나타나는 애니메이션 */
	$(document).ready(function() {
		$(window).scroll(function() {
			$('.thumb').each(function(i) {
				var bottom_of_element = $(this).offset().top + $(this).outerHeight();
				var bottom_of_window = $(window).scrollTop() + $(window).height();
				
				if(bottom_of_window > bottom_of_element) {
					$(this).animate({'opacity':'1','margin-bottom':'0px'},1000);
				}
			});
		});
	});

	// 게시물 이미지를 클릭했을 때 실행됨.
	// 해당 게시물을 hit+1 하는 함수를 호출
	$(document).on('click','.card-img', function() {
		// 게시물 번호(recipe_no)를 idx로 전달받아 저장함
		let recipe_no =$(this).attr('idx');
		
		console.log(recipe_no + "에 hit + 1을 함");
		
		// hit + 1 하고 그 값을 불러옴
		$.ajax({
			url : 'recipe_view.do',
			type : get,
			data : {
				no : recipe_no
			},
			success : function(to) {
				let hit = to.hit;
				
				$('#m_hit' + recipe_no).text(hit);
				$('#hit' + recipe_no).text(hit);
			},
			error : function() {
				alert('게시물 hit 추가 서버 에러');
			}
			
		});
	});
});

// 창 크기가 변할 때마다 가로, 세로 길이 맞춤
$(window).resize(function() {
	$('.box').each(function() {
		$(this).height($(this).width());
	});
}).resize();

		
