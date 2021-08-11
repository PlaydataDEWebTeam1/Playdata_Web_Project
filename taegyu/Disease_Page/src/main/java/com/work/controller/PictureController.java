package com.work.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.work.dao.PictureLikeDao;
import com.work.dto.PictureLikeTO;
import com.work.dto.PictureTO;

public class PictureController {
	
	PictureLikeDao LikeDao = new PictureLikeDao();
	
	// 빈 좋아요 클릭시 좋아요 저장
	@ResponseBody
	@RequestMapping(value="/saveLike.do")
	public PictureTO save_like(@RequestParam String recipe_no, HttpSession session) {
		PictureLikeTO to = new PictureLikeTO();
		
		// 게시물 번호 세팅
		to.setLike_no(recipe_no);
		
		// 좋아요 누른 사람 user_no를 user_no로 세팅
		to.setUser_no((String)session.getAttribute("user_no"));
		
		// +1된 좋아요 갯수를 담아오기
		PictureTO pto = LikeDao.pictureSaveLike(to);
		
		return pto;	
	}
	
	// 색깔 좋아요 클릭시 좋아요 해제
	@ResponseBody
	@RequestMapping(value="/removeLike.do")
	public PictureTO remove_like(@RequestParam String recipe_no, HttpSession session) {
		PictureLikeTO to = new PictureLikeTO();
		
		// 게시물 번호 세팅
		to.setLike_no(recipe_no);
		
		// 좋아요 누른 사람 user_no를 user_no로 세팅
		to.setUser_no((String) session.getAttribute("user_no"));
		
		// -1된 좋아요 갯수를 담오오기
		PictureTO pto = LikeDao.pictureRemoveLike(to);
		
		return pto;	
	}
}	
