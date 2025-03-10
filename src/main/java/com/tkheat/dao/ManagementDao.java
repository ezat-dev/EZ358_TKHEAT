package com.tkheat.dao;

import java.util.List;

import com.tkheat.domain.Corp;
import com.tkheat.domain.Fac;
import com.tkheat.domain.Permission;
import com.tkheat.domain.Product;
import com.tkheat.domain.Users;

public interface ManagementDao {
	List<Users> getUserList(); 
	
	List<Users> getBigPageList(); 
	
	List<Users> getSmallPageList(String page_big);

	Permission authorityUserSelect(Permission permission);

	void authorityUserSelectSave(Permission permission);
	
	List<Corp> getCorpList(); 
	
	List<Fac> getFacList();
	
	
	
	void insertUser(Users users);
}
