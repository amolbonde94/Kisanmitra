package com.kisanmitra.dao;

import java.util.List;

import com.kisanmitra.dto.User;

public interface AuthenticationDao {

	boolean createUser(User user);
	User loginUser(User user);
	User selectUser(User user);
	List<User> farmerlist(int i);
}
