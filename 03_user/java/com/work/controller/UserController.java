package com.work.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.work.dto.User;
import com.work.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {
	
	@Autowired
	public UserService userService;
	
	@RequestMapping("/user/joinForm")
	public String joinForm(Model model, HttpSession session) {
		return "user/joinForm";
	}
	
	@RequestMapping("/user/join")
	public String join(User dto, Model model) {
		int result = userService.addUser(dto);
		if (result == 1) {
			model.addAttribute("message", "[회원가입성공] 로그인 후 서비스 이용하세요");
			return "user/loginForm";
		} else {
			model.addAttribute("message", "[회원가입실패] 가입 정보를 다시 확인하시기 바랍니다.");
			return "user/joinForm";
		}
	}
	
	@RequestMapping("/user/loginForm")
	public String loginForm(Model model, HttpSession session) {
		return "user/loginForm";
	}
	
	@RequestMapping("/user/login")
	public String loginForm(String userId, String userPw, Model model, HttpSession session) {
		User dto = userService.login(userId, userPw);
		if (dto == null) {
			model.addAttribute("message", "등록되지 않은 계정정보입니다. 다시 확인 후 이용해주세요.");
			return "user/loginForm";
		} else {
			session.setAttribute("dto",dto);
			return "main";
		}
	}
	
	@RequestMapping("/user/logout")
	public String logout(HttpSession session) {
		Enumeration<String> attributes = session.getAttributeNames();
		while(attributes.hasMoreElements()) {
			String attribute = attributes.nextElement();
			session.removeAttribute(attribute);
		}
		session.invalidate();
		return "main";
	}
	
	@RequestMapping("/user/myPage")
	public String myPage(Model model, HttpSession session) {
		return "user/myPage";
	}
	
	@RequestMapping("/user/deleteForm")
	public String deleteForm(Model model, HttpSession session) {
		return "user/deleteForm";
	}
	
	@RequestMapping("/user/delete")
	public String deleteUser(String userId, String userPw, Model model, HttpSession session) {
		int result = userService.deleteUser(userId);
		if (result == 1) {
			Enumeration<String> attributes = session.getAttributeNames();
			while(attributes.hasMoreElements()) {
				String attribute = attributes.nextElement();
				session.removeAttribute(attribute);
			}
			session.invalidate();
			model.addAttribute("message", "[탈퇴완료]");
			return "result";
		}
		return "user/deleteForm";
	}
	
	@RequestMapping("/user/userInfo")
	public String userInfo(Model model, HttpSession session) {
		return "user/userInfo";
	}
	
	@RequestMapping("/user/updateUserInfo")
	public String updateUserInfo(User dto, Model model, HttpSession session) {
		System.out.println("##########update controller");
		int result = userService.updateUser(dto);
		if (result == 1) {
			session.setAttribute("dto",dto);
			model.addAttribute("message", "[회원정보수정완료]");
			return "user/userInfo";
		} else {
			model.addAttribute("message", "[회원정보수정실패] 회원 정보 수정 중 문제가 발생했습니다");
			return "user/userInfo";
		}
	}
	
	@RequestMapping("/admin/userList")
	public String userList(Model model, HttpSession session) {
		List<User> list = new ArrayList<User>();
		list =userService.userList();
		model.addAttribute("list", list);
		return "admin/userList";
	}
	
	@RequestMapping("findIdForm")
	public String findIdForm() {
		return "user/findIdForm";
	}
	
	@RequestMapping("findId")
	public String findId(String phone, String userName, Model model) {
		String userId = userService.findId(phone, userName);
		if (userId == null) {
			model.addAttribute("message", "입력한 정보로 찾을 수 있는 아이디가 없습니다.");
			return "user/findIdForm";
		}
		model.addAttribute("message", "아이디: " + userId);
		return "user/loginForm";
	}
	
	@RequestMapping("findPwForm")
	public String findPwForm() {
		return "user/findPwForm";
	}
	
	@RequestMapping("findPw")
	public String findPw(String userId, String phone, String userName, Model model) {
		String userPw = userService.findPw(userId, phone, userName);
		if (userPw == null) {
			model.addAttribute("message", "계정정보를 확인 후 다시 시도해주세요.");
			return "user/findPwForm";
		}
		model.addAttribute("message", "비밀번호: " + userPw);
		return "user/loginForm";
	}
	
	@RequestMapping("/user/checkId")
	@ResponseBody
	public int checkId(String userId) {
		return userService.checkId(userId);
	}

}
