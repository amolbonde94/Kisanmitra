package com.kisanmitra.mapper;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.kisanmitra.dto.User;

public class AuthenticationRowMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		
	
		user.setUserId(rs.getString("user_id"));
		user.setPassword(rs.getString("password"));
		user.setRoleId(rs.getInt("role_id"));
		user.setCityId(rs.getInt("city_id"));
		user.setEmailId(rs.getString("email_id"));
		user.setPhone(rs.getString("phone"));
		user.setFirstName(rs.getString("first_name"));
		user.setLastName(rs.getString("last_name"));
		user.setIsActive(rs.getString("isActive"));
		
		
		return user;
	}
	
	

}