package com.tkheat.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tkheat.domain.Users;
import com.tkheat.service.UserService;

public class UserController {
	
	@Autowired
	private UserService userService;

	
	/*메뉴를 클릭했을때 각 사용자가 선택한 메뉴 저장*/
	@RequestMapping(value="/tkheat/user/userMenuClick", method=RequestMethod.POST)
	@ResponseBody
	public String userMenuClick(HttpServletRequest request, HttpServletResponse response, 
			HttpSession session, @RequestParam String menu, @RequestParam String link) {
		String result = "N";
		Users users = (Users)session.getAttribute("user");
		
		users.setMenu_name(menu);
		users.setMenu_url(link);
		
		if(users != null) {
			userService.userMenuClick(users);
			
			result = "Y";
		}
		
		return result;
	}
	
	/*메뉴를 선택한적이 없는 사용자를 이동시키는 메서드*/
	@RequestMapping(value="/tkheat/user/userMenuNoSelect", method = RequestMethod.GET)
	public String userMenuNoSelect(Model model) {
		
		model.addAttribute("user", new Users());
		
		return "/include/noMenuUser.jsp";
	}
	
	/*메뉴를 선택한적이 있는 사용자를 이동시키는 메서드*/
	@RequestMapping(value="/tkheat/user/usersMenuOkSelect", method = RequestMethod.GET)
	public String usersMenuOkSelect(Model model, HttpSession session) {
		Users users = (Users)session.getAttribute("user");
		
		model.addAttribute("user", new Users());
		/*사용자가 이미 선택한 메뉴가 있다면 side메뉴바가 보이지 않도록*/
		Users menuCount = userService.userMenuSelectCount(users);

		
		
		session.setAttribute("menuCount", menuCount);
		
		List<Users> userMenu = userService.usersMenuOkSelect(users);
		
		model.addAttribute("tabList",userMenu);
		return "/include/sidebar.jsp";
	}
	
	
	
	/*메뉴 닫기버튼을 클릭했을 때 해당 메뉴가 삭제가 되도록*/
	@RequestMapping(value="/tkheat/user/userMenuDelete", method=RequestMethod.POST)
	@ResponseBody
	public String userMenuDelete(HttpServletRequest request, HttpServletResponse response, 
			HttpSession session, @RequestParam String name) {
		String result = "N";
		Users users = (Users)session.getAttribute("user");
		users.setMenu_name(name);
		
		if(users != null) {
			userService.userMenuDelete(users);
			
			result = "Y";
		}
		
		return result;
	}
}

