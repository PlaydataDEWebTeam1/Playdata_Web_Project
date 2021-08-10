package com.work.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.UserDao;
import com.work.dto.User;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserService {
	@Autowired
	private UserDao userDao;

	public int addUser(User dto) {
		dto.setLoginType("G");
		int result = userDao.insertUser(dto);
		return result; 
	}
	
	public User login(String userId, String userPw) {
		return userDao.login(userId, userPw);
	}

	public int deleteUser(String userId) {
		return userDao.deleteUser(userId);
	}

	public int updateUser(User dto) {
		System.out.println("###### service 회원정보수정");
		return userDao.updateUser(dto);
	}

}
