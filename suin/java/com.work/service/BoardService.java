package com.work.service;



import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.BoardDao;
import com.work.dto.Board;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardService {
	Date date = new Date();
	@Autowired
	private BoardDao boardDao;
	
	/** 게시글 목록 조회 */
	public List<Board> boardList() {
		List<Board> list = boardDao.boardList();
		log.debug("###Board List : "+list);
		return list;
	}
	
	/** 게시글 상세 조회 */
	public Board boardDetail(int bno) {
		Board dto = boardDao.selectBoard(bno);
		return dto;
 	}
	
	/** 게시글추가 */
	public int addBoard(Board dto) {
		dto.setRegDate(date);
		dto.setWriter("test");
		return boardDao.insertBoard(dto);
	}
	
	
}
