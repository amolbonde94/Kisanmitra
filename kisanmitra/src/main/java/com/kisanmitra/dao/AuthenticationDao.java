package com.kisanmitra.dao;

import java.util.List;

import com.kisanmitra.dto.User;

public interface AuthenticationDao {

	boolean createUser(User user);
	User loginUser(User user);
	
	boolean updateUser(User user);
	
}
