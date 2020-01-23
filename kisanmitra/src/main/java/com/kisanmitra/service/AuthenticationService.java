package com.kisanmitra.service;

import java.util.List;

import com.kisanmitra.dto.User;

public interface AuthenticationService {

	User loginUser(User user);
    boolean createUser(User user);
	List<User> farmerlist(int i);
	
	
}
