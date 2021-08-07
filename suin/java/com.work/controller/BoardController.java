package com.work.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.dao.BoardDao;
import com.work.dto.Board;
import com.work.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {
	
	@Autowired
	public BoardService boardService;
	
	
	@RequestMapping("/main")
	private String main() {
		return "main";
	}
	
	@RequestMapping("/boardList")
	private String boardList(Model model) {
		List<Board> list = boardService.boardList();
		model.addAttribute("list", list);
		return "boardList";
	}
	
	@RequestMapping("/boardDetail")
	private String boardDetail(int bno, Model model) {
		Board dto = boardService.boardDetail(bno);
		model.addAttribute("dto", dto);
		return "boardDetail";
	}
	
	@RequestMapping("/boardWritingForm")
	private int addBoard(Board dto) {
		return boardService.addBoard(dto);
	}

}
