package com.tkheat.service;

import java.util.List;

import com.tkheat.domain.Users;

public interface UserService {

	Users userMenuSelectCount(Users users);

	List<Users> usersMenuOkSelect(Users users);

	void userMenuDelete(Users users);

	void userMenuClick(Users users);

}
