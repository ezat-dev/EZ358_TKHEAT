package com.tkheat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tkheat.dao.UserDao;
import com.tkheat.domain.Users;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;

	@Override
	public Users userMenuSelectCount(Users users) {
		return userDao.userMenuSelectCount(users);
	}

	@Override
	public List<Users> usersMenuOkSelect(Users users) {
		return userDao.usersMenuOkSelect(users);
	}

	@Override
	public void userMenuDelete(Users users) {
		userDao.userMenuDelete(users);
	}

	@Override
	public void userMenuClick(Users users) {
		userDao.userMenuClick(users);
	}

}
