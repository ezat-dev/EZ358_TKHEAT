package com.tkheat.dao;

import java.util.List;

import com.tkheat.domain.Users;

public interface ManagementDao {
	List<Users> getUserList(); 
	
	List<Users> getBigPageList(); 
	
	List<Users> getSmallPageList(String page_big);
	

}
