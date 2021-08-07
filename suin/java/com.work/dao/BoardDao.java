
package com.work.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.work.dto.Board;

@Mapper
public interface BoardDao {
	
	/** 게시글 개수 */
	public String boardCount();
	
	/** 게시글 목록 */ 
    public List<Board> boardList();
    
    /** 게시글 상세조회 */
    public Board selectBoard(int bno);
    
    /** 게시글 작성 */  
    public int insertBoard(Board board);
    
    /** 게시글 수정 */
    public int updateBoard(Board board);
    
    /** 게시글 삭제 */
    public int boardDelete(int bno);

}
