package com.work.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.dto.PictureLikeTO;
import com.work.dto.PictureTO;

@Repository
public class PictureLikeDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public PictureTO pictureSaveLike(PictureLikeTO to) {
		// recipe_like 테이블에 해당 게시물의 like 수를 +1 하기 위한 to 세팅
		PictureTO pto = new PictureTO();
		pto.setRecipe_no(to.getRecipe_no());
		
		// 해당 게시물의 like를 +1 한다.
		sqlSession.update("picture_like_up", pto);
		
		// recipe_like 테이블에 추가
		int result = sqlSession.insert("picture_like_save", to);
		
		if (result == 1) {
			// recipe_like 테이블에 새로운 좋아요 추가가 성공한다면 갱신된 좋아요 갯수를 가져옴
			pto = sqlSession.selectOne("picture_like_count", pto);
		}
		return pto;
	}
	
	public PictureTO pictureRemoveLike(PictureLikeTO to) {
		// recipe_like 테이블에 해당 게시물의 like 수를 -1 하기 위한 to 세팅
		PictureTO pto = new PictureTO();
		pto.setRecipe_no(to.getRecipe_no());
		
		// 해당 게시물의 like를 -1 한다.
		sqlSession.update("picture_like_down", pto);
		
		// recipe_like 테이블에 추가
		int result = sqlSession.insert("picture_like_remove", to);
		
		if (result == 1) {
			// recipe_like 테이블에 새로운 좋아요 삭제가 성공한다면 갱신된 좋아요 갯수를 가져옴
			pto = sqlSession.selectOne("picture_like_count", pto);
		}
		return pto;
	}
}
