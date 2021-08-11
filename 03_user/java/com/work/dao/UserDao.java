package com.work.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.work.dto.User;

@Mapper
public interface UserDao {

	/** 회원가입 */
	public int insertUser(User dto);
	
	/** 로그인 : 도메인 반환 */
	public User login(String userId, String userPw);
	
	/** 탈퇴 */
	public int deleteUser(String userId);
	
	/** 전체회원 조회 */
	public List<User> selectUserList();
	
	/** 회원상세조회 */
	public User selectUser(String userId);
	
	/** 회원정보수정 */
	public int updateUser(User dto);
	
	/** 전체회원조회 */
	public ArrayList<User> selectAllUser();

	/** 다중조건 검색 */
	public List<User> selectuserListByCondition(String condition, String keyword);

	/** 다중조건 조회 : 다중 아이디 조회: ArrayList */
	public List<User> selectuserListByConditionToList(String condition, List<String> userIdList);
	
	/** 아이디 찾기*/
	public String selectUserId(String phone, String userName);

	

	

	
	

}
	

