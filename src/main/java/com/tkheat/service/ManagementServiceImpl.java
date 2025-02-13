package com.tkheat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tkheat.dao.ManagementDao;
import com.tkheat.domain.Users;

@Service
public class ManagementServiceImpl implements ManagementService {
	@Autowired
	private ManagementDao managementDao;
	@Override
	public List<Users> getUserList(){
		return managementDao.getUserList();
	}
	@Override
	public List<Users> getBigPageList(){
		return managementDao.getBigPageList();
	}
	
	  @Override
	    public List<Users> getSmallPageList(String page_big) {  
	        return managementDao.getSmallPageList(page_big);  
	    }
	
}
