  package com.kisanmitra.dao;



import java.util.List;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.kisanmitra.connection.MyConnection;
import com.kisanmitra.dto.User;
import com.kisanmitra.mapper.AuthenticationRowMapper;

@Repository
public class AuthenticationDaoImplementation implements AuthenticationDao{

	MyConnection obj = new MyConnection();
	
	@Override
	public boolean createUser(User user) {
		System.out.println(user.getAddress());
		
		try {
			String sql = "insert into user(user_id,first_name,last_name,password,phone,address,city_id,email_id,isActive,role_id) values (?,?,?,?,?,?,?,?,'yes',?)";
			
			obj.getJdbcTemplate().update(sql, new Object[] {user.getUserId(),user.getFirstName(),user.getLastName(),user.getPassword(),user.getPhone(),user.getAddress(),user.getCityId(),user.getEmailId(),user.getRoleId()} );
			}catch(Exception e) {
				System.out.println(e.getMessage()+"" +"error");
			}
			
			return true;
	}

	@Override
	public User loginUser(User user) {
		String sql = "select * from user where user_id=? AND password=?";
		
		
		User dbuser = obj.getJdbcTemplate().queryForObject(sql, new Object[] {user.getUserId(), user.getPassword()}, new AuthenticationRowMapper());
		
		if(dbuser == null) {
			return null;
		}
		return dbuser;
	}

	

	@Override
	public boolean updateUser(User user) {
		try {
			
		String sql="update user set password=? where user_id=?";
		obj.getJdbcTemplate().update(sql,new Object[] {user.getPassword(),user.getUserId()});
		
		return true;
		}catch(Exception e) {
			
			return false;
		}
	}

	
	/*
	@Override
	public List farmerlist(int i) {
		
		List<User> list=new ArrayList<User>() ;
		
		String sql="select user_id,city from user where role_id=1"; 
		
		List<Map<String,Object>> temp = obj.getJdbcTemplate().queryForList(sql);
		
		for(Map<String,Object> p : temp) {
			User obj = new User();
		
			obj.setUserId(p.get("user_id").toString());
			obj.setCity(p.get("city").toString());
			
			list.add(obj);
		}
				
				
		return list;
	}
*/
}
