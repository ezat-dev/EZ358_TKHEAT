package com.tkheat.service;

import java.util.List;

import com.tkheat.domain.Users;

public interface ManagementService {
	List<Users> getUserList(); 
	
	List<Users> getBigPageList(); 
	
	List<Users> getSmallPageList(String page_big);
}
