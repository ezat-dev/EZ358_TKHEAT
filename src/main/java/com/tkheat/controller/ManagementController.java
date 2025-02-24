package com.tkheat.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.jsp.tagext.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.firebase.auth.UserInfo;
import com.tkheat.domain.Users;
import com.tkheat.service.ManagementService;

@Controller
public class ManagementController {
	
	 @Autowired
	    private ManagementService managementService;

	 @RequestMapping(value = "/management/login", method = RequestMethod.GET)
	    public String login(Users users) {
	        return "/management/login.jsp";
	       
	    }
	 
	 @RequestMapping(value = "/management/sideBar", method = RequestMethod.GET)
	    public String sideBar(Users users) {
	        return "/include/sideBar.jsp";
	       
	    }
	 
	 @RequestMapping(value = "/management/authority", method = RequestMethod.GET)
	    public String authority(Users users) {
	        return "/management/authority.jsp";
	       
	    }
	 
	 @RequestMapping(value = "/management/userinsert", method = RequestMethod.GET)
	    public String userinsert(Users users) {
	        return "/management/userinsert.jsp";
	       
	    }
	 
	 
	 @RequestMapping(value = "/management/authority/user", method = RequestMethod.POST) 
	    @ResponseBody 
	    public List<Users> getUserList() {

	        return managementService.getUserList(); 
	    }
	 
	 
	 
	 @RequestMapping(value = "/management/authority/big_Page", method = RequestMethod.POST) 
	   
	    @ResponseBody 
	
	    public List<Users> getBigPageList() {

	        return managementService.getBigPageList(); 
	    }
	 
	 @RequestMapping(value = "/management/authority/small_page", method = RequestMethod.POST)
	 @ResponseBody
	 public List<Users> getSmallPage(@RequestBody Map<String, String> requestData) {
	     String pageBig = requestData.get("page_big"); 
	     System.out.println("받은 page_big: " + pageBig);  

	    
	     return managementService.getSmallPageList(pageBig); 
	 }
	 
	
	 

}

